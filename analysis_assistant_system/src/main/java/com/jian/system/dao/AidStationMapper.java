package com.jian.system.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.jian.system.entity.AidStation;


@Mapper
public interface AidStationMapper extends BaseMapper<AidStation> {

	@Select({
		"<script>",
		" select ",
		" 	a.* ",
		" from \"tBase_AidStation\" a ",
		" 	left join \"tBase_UserStation\" b on a.\"sAidStation_Station\" = b.\"sUserStation_Station\" ",
		" where ",
    	" 	<if test=\" map != null \"> ",
    	"		<foreach collection=\"map.keys\" item=\"item\"  index=\"i\" separator=\"and\">",
    	" 			a.\"${item}\" = #{map[${item}]}",	
    	"		</foreach>",
    	"   </if>",   
    	" 	<if test=\" map == null \"> ",
    	" 		1 = 1 ",	
    	"   </if>",
    	" 	<if test=\" sUser_ID != null \"> ",
    	" 		and b.\"sUserStation_UserID\" = #{sUser_ID} ",	
    	"   </if>", 
		"</script>"
	})
	public List<AidStation> list(@Param("map") Map<String, Object> condition, @Param("sUser_ID") String sUser_ID);
	
	@Select({
		" <script> ",
		" select ",
		"	a.*, ",
		" 	c.\"sDict_Name\" \"sAidStation_StationName\"  ",
		" from \"tBase_AidStation\" a ",
		" 	left join \"tBase_UserStation\" b on a.\"sAidStation_Station\" = b.\"sUserStation_Station\" ",
		" 	left join \"tBase_Dict\" c on a.\"sAidStation_Station\" = c.\"sDict_NO\" and c.\"sDict_DictTypeNO\" = 'AidStation' ",
		" where 1 = 1 ",
    	" 	<if test=\" map != null \"> ",
    	"		<foreach collection=\"map.keys\" item=\"item\"  index=\"i\" separator=\"and\">",
    	" 			a.\"${item}\" = #{map[${item}]}",	
    	"		</foreach>",
    	"   </if>",
    	" 	<if test=\" sUser_ID != null \"> ",
    	" 		and b.\"sUserStation_UserID\" = #{sUser_ID} ",	
    	"   </if>", 
		" </script> "
	})
	public List<Map<String, Object>> export(@Param("map") Map<String, Object> condition, @Param("sUser_ID") String sUser_ID);
	
	
}
