package com.jian.system.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.jian.system.entity.AidMapIcon;


@Mapper
public interface AidMapIconMapper extends BaseMapper<AidMapIcon> {

	@Select({
		" <script> ",
		" select ",
		"	a.*, ",
		" 	b.\"sAid_Name\" \"sAidIcon_AidName\",  ",
		" 	c.\"sDict_Name\" \"sAidIcon_StatusName\",  ",
		" 	d.\"sDict_Name\" \"sAidIcon_StatusIconName\"  ",
		" from \"tBase_AidMapIcon\" a ",
		" 	left join \"tBase_Aid\" b on a.\"sAidIcon_AidID\" = b.\"sAid_ID\"  ",
		" 	left join \"tBase_Dict\" c on a.\"sAidIcon_Status\" = c.\"sDict_NO\" and c.\"sDict_DictTypeNO\" = 'AidStatus' ",
		" 	left join \"tBase_Dict\" d on a.\"sAidIcon_StatusIcon\" = d.\"sDict_NO\" and d.\"sDict_DictTypeNO\" = 'MapIcon' ",
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
