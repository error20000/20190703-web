package com.jian.system.dao;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.jian.system.entity.SystemLog;

@Mapper
public interface SystemLogMapper extends BaseMapper<SystemLog> {

	@Select({
		"<script>",
		" select * ",
		" from \"${tableName}\" ",
		" where ",
    	" 	<if test=\" map != null \"> ",
    	"		<foreach collection=\"map.keys\" item=\"item\"  index=\"i\" separator=\"and\">",
    	" 			\"${item}\" = #{map[${item}]}",	
    	"		</foreach>",
    	"   </if>",   
    	" 	<if test=\" map == null \"> ",
    	" 		1 = 1 ",	
    	"   </if>", 
    	" 	<if test=\" startDate != null \"> ",
    	" 		and \"dSLog_CreateDate\" <![CDATA[>=]]> #{startDate} ",	
    	"   </if>", 
    	" 	<if test=\" endDate != null \"> ",
    	" 		and \"dSLog_CreateDate\" <![CDATA[<=]]> #{endDate} ",	
    	"   </if>", 
		"	 and rownum <![CDATA[<=]]> ${(start/rows + 1) * rows}",
		" minus  ",
		" select * ",
		" from \"${tableName}\" ",
		" where ",
    	" 	<if test=\" map != null \"> ",
    	"		<foreach collection=\"map.keys\" item=\"item\"  index=\"i\" separator=\"and\">",
    	" 			\"${item}\" = #{map[${item}]}",	
    	"		</foreach>",
    	"   </if>",   
    	" 	<if test=\" map == null \"> ",
    	" 		1 = 1 ",	
    	"   </if>", 
    	" 	<if test=\" startDate != null \"> ",
    	" 		and \"dSLog_CreateDate\" <![CDATA[>=]]> #{startDate} ",	
    	"   </if>", 
    	" 	<if test=\" endDate != null \"> ",
    	" 		and \"dSLog_CreateDate\" <![CDATA[<=]]> #{endDate} ",	
    	"   </if>", 
		"	 and rownum <![CDATA[<=]]> ${start}",
		"</script>"
	})
	public List<SystemLog> selectPageByDate(@Param("tableName") String tableName, 
			@Param("map") Map<String, Object> condition, @Param("startDate") Date startDate, @Param("endDate") Date endDate, 
			@Param("start") int start, 
			@Param("rows") int rows);
	
	@Select({
		"<script>",
		" select count(*) ",
		" from \"${tableName}\" ",
		" where ",
    	" 	<if test=\" map != null \"> ",
    	"		<foreach collection=\"map.keys\" item=\"item\"  index=\"i\" separator=\"and\">",
    	" 			\"${item}\" = #{map[${item}]}",	
    	"		</foreach>",
    	"   </if>",   
    	" 	<if test=\" map == null \"> ",
    	" 		1 = 1 ",	
    	"   </if>",
    	" 	<if test=\" startDate != null \"> ",
    	" 		and \"dSLog_CreateDate\" <![CDATA[>=]]> #{startDate} ",	
    	"   </if>", 
    	" 	<if test=\" endDate != null \"> ",
    	" 		and \"dSLog_CreateDate\" <![CDATA[<=]]> #{endDate} ",	
    	"   </if>", 
		"</script>"
	})
	public long sizeByDate(@Param("tableName") String tableName, 
			@Param("map") Map<String, Object> condition, @Param("startDate") Date startDate, @Param("endDate") Date endDate);
	
	
	@Select({
		"<script>",
		" select * ",
		" from \"tBase_SystemLog\" ",
		" where ",
    	" 	<if test=\" map != null \"> ",
    	"		<foreach collection=\"map.keys\" item=\"item\"  index=\"i\" separator=\"and\">",
    	" 			\"${item}\" = #{map[${item}]}",	
    	"		</foreach>",
    	"   </if>",   
    	" 	<if test=\" map == null \"> ",
    	" 		1 = 1 ",	
    	"   </if>", 
    	" 	<if test=\" startDate != null \"> ",
    	" 		and \"dSLog_CreateDate\" <![CDATA[>=]]> #{startDate} ",	
    	"   </if>", 
    	" 	<if test=\" endDate != null \"> ",
    	" 		and \"dSLog_CreateDate\" <![CDATA[<=]]> #{endDate} ",	
    	"   </if>", 
		"</script>"
	})
	public List<SystemLog> selectByDate(@Param("map") Map<String, Object> condition, 
			@Param("startDate") Date startDate, @Param("endDate") Date endDate);
}
