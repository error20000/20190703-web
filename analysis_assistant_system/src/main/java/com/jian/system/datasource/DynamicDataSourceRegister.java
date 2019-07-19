package com.jian.system.datasource;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;
import com.zaxxer.hikari.metrics.dropwizard.CodahaleMetricsTrackerFactory;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Pattern;
import javax.sql.DataSource;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.MutablePropertyValues;
import org.springframework.beans.factory.support.BeanDefinitionRegistry;
import org.springframework.beans.factory.support.GenericBeanDefinition;
import org.springframework.context.EnvironmentAware;
import org.springframework.context.annotation.ImportBeanDefinitionRegistrar;
import org.springframework.core.convert.ConversionService;
import org.springframework.core.convert.support.DefaultConversionService;
import org.springframework.core.env.Environment;
import org.springframework.core.type.AnnotationMetadata;

public class DynamicDataSourceRegister implements ImportBeanDefinitionRegistrar, EnvironmentAware {
	
	private static final Logger log = LoggerFactory.getLogger(DynamicDataSourceRegister.class);

	private ConversionService conversionService = new DefaultConversionService();

	private Pattern pattern;

	private DataSource defaultDataSource;
	private Map<String, DataSource> customDataSources = new HashMap<>();

	public void registerBeanDefinitions(AnnotationMetadata importingClassMetadata, BeanDefinitionRegistry registry) {
		Map<Object, Object> targetDataSources = new HashMap<Object, Object>();

		targetDataSources.put("dataSource", this.defaultDataSource);
		DynamicDataSourceContextHolder.dataSourceIds.add("dataSource");

		targetDataSources.putAll(this.customDataSources);
		for (String key : this.customDataSources.keySet()) {
			DynamicDataSourceContextHolder.dataSourceIds.add(key);
		}

		GenericBeanDefinition beanDefinition = new GenericBeanDefinition();
		beanDefinition.setBeanClass(DynamicDataSource.class);
		beanDefinition.setSynthetic(true);
		MutablePropertyValues mpv = beanDefinition.getPropertyValues();
		mpv.addPropertyValue("defaultTargetDataSource", this.defaultDataSource);
		mpv.addPropertyValue("targetDataSources", targetDataSources);
		registry.registerBeanDefinition("dataSource", beanDefinition);

		log.info("Dynamic DataSource Registry");
	}

	public void setEnvironment(Environment env) {
		initDataSources(env);
	}

	private void initDataSources(Environment env) {
		try {
			String dsNames = (new RelaxedPropertyResolver(env, "")).getProperty("spring.datasource.names");
			if (null == dsNames) {
				initSingle(env);
			} else {
				initDynamic(env, dsNames);
			}
		} catch (Exception e) {
			log.error(e.getLocalizedMessage(), e);
			throw new DataSourceInitException(e.getLocalizedMessage());
		}
	}

	private void dataBinder(DataSource dataSource, Map<String, Object> dsMap) {
		RelaxedDataBinder dataBinder = new RelaxedDataBinder(dataSource);

		dataBinder.setConversionService(this.conversionService);
		dataBinder.setIgnoreNestedProperties(false);
		dataBinder.setIgnoreInvalidFields(false);
		dataBinder.setIgnoreUnknownFields(true);

		dsMap.remove("type");
		dsMap.remove("driver-class-name");
		dsMap.remove("url");
		dsMap.remove("username");
		dsMap.remove("password");
		MutablePropertyValues mutablePropertyValues = new MutablePropertyValues(dsMap);
		dataBinder.bind(mutablePropertyValues);
	}

	private void initDynamic(Environment env, String dsNames) {
		String encrypt = (new RelaxedPropertyResolver(env, "")).getProperty("security.db.encrypt");
		Boolean isEncrypt = Boolean.valueOf((null == encrypt) ? false : Boolean.valueOf(encrypt).booleanValue());
		RelaxedPropertyResolver propertyResolver = new RelaxedPropertyResolver(env, "spring.datasource.");
		for (String name : dsNames.split(",")) {
			Map<String, Object> dsMap = getDataSourceMap(env, propertyResolver, name + ".", isEncrypt.booleanValue());

			HikariDataSource hikariDataSource = buildHikari(name, dsMap);
			if (this.customDataSources.isEmpty())
				this.defaultDataSource = hikariDataSource;
			this.customDataSources.put(name, hikariDataSource);
			dataBinder(hikariDataSource, dsMap);
		}
	}

	private void initSingle(Environment env) {
		Boolean isEncrypt = Boolean.valueOf(false);
		Map<String, Object> dsMap = getDataSourceMap(env, null, ".", isEncrypt.booleanValue());
		HikariDataSource hikariDataSource = buildHikari("dataSource", dsMap);

		this.defaultDataSource = hikariDataSource;
		dataBinder(hikariDataSource, dsMap);
	}

	private Map<String, Object> getDataSourceMap(Environment env, RelaxedPropertyResolver propertyResolver,
			String subKey, boolean isEncrypt) {
		if (null == propertyResolver)
			propertyResolver = new RelaxedPropertyResolver(env, "spring.datasource");
		Map<String, Object> dsMap = propertyResolver.getSubProperties(subKey);
		HashMap<String, Object> tempMap = new HashMap<String, Object>();
		tempMap.putAll(dsMap);
		dsMap = tempMap;
		String pas = (String) dsMap.get("password");
		dsMap.put("password", pas);
		return dsMap;
	}

	private HikariDataSource buildHikari(String datasourceName, Map<String, Object> dsMap) {
		HikariConfig config = new HikariConfig();
		config.setPoolName(datasourceName);
		config.setJdbcUrl(dsMap.get("url").toString());
		config.setUsername(dsMap.get("username").toString());
		config.setPassword(dsMap.get("password").toString());
		config.setDriverClassName(dsMap.get("driver-class-name").toString());
		if (dsMap.containsKey("max-active"))
			config.setMaximumPoolSize(Integer.parseInt(dsMap.get("max-active").toString()));
		if (dsMap.containsKey("min-idle"))
			config.setMinimumIdle(Integer.parseInt(dsMap.get("initial-size").toString()));
		if (dsMap.containsKey("name"))
			config.setPoolName(dsMap.get("name").toString());
		if (dsMap.containsKey("connection-timeout"))
			config.setConnectionTimeout(Integer.parseInt(dsMap.get("connection-timeout").toString()));
		if (dsMap.containsKey("idle-timeout"))
			config.setIdleTimeout(Integer.parseInt(dsMap.get("idle-timeout").toString()));
		if (dsMap.containsKey("life-timeout"))
			config.setMaxLifetime(Integer.parseInt(dsMap.get("life-timeout").toString()));
		if (dsMap.containsKey("read-only")) {
			config.setReadOnly(Boolean.valueOf(dsMap.get("read-only").toString()).booleanValue());
		}
		config.setAutoCommit(true);
		if (dsMap.containsKey("cache-prep-stmts"))
			config.addDataSourceProperty("cachePrepStmts", dsMap.get("cache-prep-stmts").toString());
		if (dsMap.containsKey("cache-prep-stmt-cacheSize"))
			config.addDataSourceProperty("prepStmtCacheSize", dsMap.get("cache-prep-stmt-cacheSize").toString());
		if (dsMap.containsKey("cache-prep-stmt-cache-sql-limit")) {
			config.addDataSourceProperty("prepStmtCacheSqlLimit",
					dsMap.get("cache-prep-stmt-cache-sql-limit").toString());
		}
		config.setMetricsTrackerFactory(new CodahaleMetricsTrackerFactory(HikariEndpoint.getMetricRegistry()));

		HikariDataSource dataSource = new HikariDataSource(config);
		DynamicDataSourcePublicMetrics.addDataSource(dataSource);
		return dataSource;
	}

	public Pattern getPattern(Environment env) {
		if (null != this.pattern)
			return this.pattern;
		String jasyptPattern = (new RelaxedPropertyResolver(env, "")).getProperty("config.datasource.jasypt");
		if (StringUtils.isEmpty(jasyptPattern))
			jasyptPattern = "ENC\\((.+)\\)";
		this.pattern = Pattern.compile(jasyptPattern);
		return this.pattern;
	}
}
