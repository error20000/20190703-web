package com.jian.system.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.jian.system.entity.AidImg;


@Mapper
public interface AidImgMapper extends BaseMapper<AidImg> {

	@Select({
		"<script>",
		" select ",
		" 	* ",
		" from \"tBase_AidImg\" ",
		" where ",
		"	<foreach collection=\"map.keys\" item=\"item\"  index=\"i\" separator=\"and\">",
		" 		\"${item}\" = #{map[${item}]}",	
		"	</foreach>",
		" order by \"dAidImg_CreateDate\" desc ",
		"</script>"
	})
	public List<AidImg> list(@Param("map") Map<String, Object> condition);
	
	
	
}
