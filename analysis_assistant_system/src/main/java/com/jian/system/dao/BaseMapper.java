package com.jian.system.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;


@Mapper
public interface BaseMapper<T> {

	//TODO ----------------------------------------------------------------------insert
	
	@Insert({
    	"<script>",
		" insert into ",
    	" \"${tableName}\"(",
    	"	<foreach collection=\"obj.keys\" item=\"item\"  index=\"i\" separator=\",\">",
    	" 		<if test=\" obj[item] != null \"> ",
	    " 			\"${item}\" ",	
    	"       </if>",
    	"	</foreach>", 
		" ) ",
		" values( ",
    	"	<foreach collection=\"obj.keys\" item=\"item\"  index=\"i\" separator=\",\">",
    	" 		<if test=\" obj[item] != null \"> ",
    	" 			#{obj[${item}]}",	
    	"       </if>",
    	"	</foreach>",
		" )",
    	"</script>"
	})
	public int insert(@Param("tableName") String tableName, @Param("obj") Map<String, Object> obj);
	
	/*@Insert({
		"<script>",
		" insert into ",
		" \"${tableName}\"(",
		"	<foreach collection=\"obj.keys\" item=\"item\"  index=\"i\" separator=\",\">",
		" 		<if test=\" obj[item] != null \"> ",
	    " 			\"${item}\" ",	
		"       </if>",
		"	</foreach>", 
		" ) ",
		" values ",
		"	<foreach collection=\"list\" item=\"map\"  index=\"i\" separator=\"union all\">",
		" 		(select ",
		"			<foreach collection=\"map.keys\" item=\"item\"  index=\"j\" separator=\",\">",
		" 				<if test=\" map[item] != null \"> ",
		" 					#{map.${item}}",	
		"   		    </if>",
		"			</foreach>",
		" 		from dual )",
		"	</foreach>",
		"</script>"
	})
	public int batchInsert(@Param("tableName") String tableName, @Param("obj") Map<String, Object> obj, @Param("list") List<Map<String, Object>> list);
	*/
	
	@Insert({
		"<script>",
		" insert all ",
		"	<foreach collection=\"list\" item=\"map\"  index=\"i\" separator=\" \">",
		" 		into \"${tableName}\"( ",
		"			<foreach collection=\"map.keys\" item=\"item\"  index=\"j\" separator=\",\">",
		" 				<if test=\" map[item] != null \"> ",
	    " 					\"${item}\" ",	
		"   		    </if>",
		"			</foreach>",
		" 		) ",
		" 		values (",
		"			<foreach collection=\"map.keys\" item=\"item\"  index=\"j\" separator=\",\">",
		" 				<if test=\" map[item] != null \"> ",
		" 					#{map.${item}}",	
		"   		    </if>",
		"			</foreach>",
		" 		)",
		"	</foreach>",
		"	select 1 from dual ",
		"</script>"
	})
	public int batchInsert(@Param("tableName") String tableName, @Param("list") List<Map<String, Object>> list);
	
	
	//TODO ----------------------------------------------------------------------delete
	@Delete({
    	"<script>",
        " delete from \"${tableName}\" ",
        " where ",
		"	<foreach collection=\"map.keys\" item=\"item\"  index=\"i\" separator=\"and\">",
		" 		\"${item}\" = #{map[${item}]}",	
		"	</foreach>",
    	"</script>"
    })
	public int delete(@Param("tableName") String tableName, @Param("map") Map<String, Object> condition);

	//TODO ----------------------------------------------------------------------update
	
    @Update({        
    	"<script>",
    	"update \"${tableName}\" ",  
    	" set ", 
    	"	<foreach collection=\"vmap.keys\" item=\"item\"  index=\"i\" separator=\",\">",
    	" 		<if test=\" vmap[item] != null \"> ",
    	" 			\"${item}\" = #{vmap[${item}]} ",
    	"       </if>",   
    	"	</foreach>",
    	" where ",
    	"	<foreach collection=\"map.keys\" item=\"item\"  index=\"i\" separator=\"and\">",
    	" 		\"${item}\" = #{map[${item}]} ",
    	"	</foreach>",
    	"</script>"
    })    
    public int update(@Param("tableName") String tableName, @Param("vmap") Map<String, Object> value, @Param("map") Map<String, Object> condition);

    @Update({        
    	"<script>",
    	"update \"${tableName}\" ",  
    	" set ", 
    	"	<foreach collection=\"vmap.keys\" item=\"item\"  index=\"i\" separator=\",\">",
    	" 		<if test=\" vmap[item] != null \"> ",
    	" 			\"${item}\" = #{vmap[${item}]} ",
    	"       </if>",   
    	"	</foreach>",
    	" where ",
    	"	<foreach collection=\"map.keys\" item=\"item\"  index=\"i\" separator=\"and\">",
    	" 		\"${item}\" = #{map[${item}]} ",
    	"	</foreach>",
    	"</script>"
    })    
    public int batchUpdate(@Param("tableName") String tableName, @Param("list") List<Map<String, Object>> list);
    
	//TODO ----------------------------------------------------------------------select
    
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
    	"		1 = 1 ",
    	"   </if>",  
    	"   and rownum <![CDATA[<=]]> 1 ",  
		"</script>"
	})
	public T selectOne(@Param("tableName") String tableName, @Param("map") Map<String, Object> condition);
	
	@Select({
		"<script>",
		" select ",
    	" 	<if test=\" columns != null \"> ",
    	"		<foreach collection=\"columns\" item=\"item\"  index=\"i\" separator=\",\">",
    	" 			\"${item}\" ",	
    	"		</foreach>",
    	"   </if>",  
    	" 	<if test=\" columns == null \"> ", 
    	"		* ",
    	"   </if>",
		" from \"${tableName}\" ",
		" where ",
    	" 	<if test=\" map != null \"> ",
    	"		<foreach collection=\"map.keys\" item=\"item\"  index=\"i\" separator=\"and\">",
    	" 			\"${item}\" = #{map[${item}]}",	
    	"		</foreach>",
    	"   </if>",  
    	" 	<if test=\" map == null \"> ", 
    	"		1 = 1 ",
    	"   </if>",  
    	"   and rownum <![CDATA[<=]]> 1 ", 
		"</script>"
	})
	public Map<String, Object> selectOneMap(@Param("tableName") String tableName, @Param("columns") List<String> columns, @Param("map") Map<String, Object> condition);
    
	@Select({
		" select * ",
		" from \"${tableName}\" "
	})
	public List<T> selectAll(@Param("tableName") String tableName);
	
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
		"</script>"
	})
	public List<T> selectList(@Param("tableName") String tableName, @Param("map") Map<String, Object> condition);
	
	@Select({
		"<script>",
		" select ",
    	" 	<if test=\" columns != null \"> ",
    	"		<foreach collection=\"columns\" item=\"item\"  index=\"i\" separator=\",\">",
    	" 			\"${item}\" ",	
    	"		</foreach>",
    	"   </if>",  
    	" 	<if test=\" columns == null \"> ", 
    	"		* ",
    	"   </if>",
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
		"</script>"
	})
	public List<Map<String, Object>> selectListMap(@Param("tableName") String tableName, @Param("columns") List<String> columns, @Param("map") Map<String, Object> condition);

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
		"	 and rownum <![CDATA[<=]]> ${start}",
		"</script>"
	})
	public List<T> selectPage(@Param("tableName") String tableName, @Param("map") Map<String, Object> condition, @Param("start") int start, @Param("rows") int rows);
	
	//TODO ----------------------------------------------------------------------size
    
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
		"</script>"
	})
	public long size(@Param("tableName") String tableName, @Param("map") Map<String, Object> condition);
	
	@Select({
		" select count(*) ",
		" from \"${tableName}\" "
	})
	public long sizeAll(@Param("tableName") String tableName);
	
	
}
