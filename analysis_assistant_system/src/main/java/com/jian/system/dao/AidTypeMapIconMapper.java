package com.jian.system.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.jian.system.entity.AidTypeMapIcon;


@Mapper
public interface AidTypeMapIconMapper extends BaseMapper<AidTypeMapIcon> {
	
	@Select({
		" <script> ",
		" select ",
		"	a.*, ",
		" 	b.\"sDict_Name\" \"sAidTypeIcon_TypeName\",  ",
		" 	c.\"sDict_Name\" \"sAidTypeIcon_StatusName\",  ",
		" 	d.\"sDict_Name\" \"sAidTypeIcon_StatusIconName\"  ",
		" from \"tBase_AidTypeMapIcon\" a ",
		" 	left join \"tBase_Dict\" b on a.\"sAidTypeIcon_Type\" = b.\"sDict_NO\" and b.\"sDict_DictTypeNO\" = 'AidType' ",
		" 	left join \"tBase_Dict\" c on a.\"sAidTypeIcon_Status\" = c.\"sDict_NO\" and c.\"sDict_DictTypeNO\" = 'AidStatus' ",
		" 	left join \"tBase_Dict\" d on a.\"sAidTypeIcon_StatusIcon\" = d.\"sDict_NO\" and d.\"sDict_DictTypeNO\" = 'MapIcon' ",
		" where 1 = 1 ",
    	" 	<if test=\" map != null \"> ",
    	"		<foreach collection=\"map.keys\" item=\"item\"  index=\"i\" separator=\"and\">",
    	" 			a.\"${item}\" = #{map[${item}]}",	
    	"		</foreach>",
    	"   </if>",
		" </script> "
	})
	public List<Map<String, Object>> export(@Param("map") Map<String, Object> condition);
	
}
