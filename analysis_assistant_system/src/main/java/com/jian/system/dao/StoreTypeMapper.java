package com.jian.system.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.jian.system.config.Constant;
import com.jian.system.entity.StoreType;

@Mapper
public interface StoreTypeMapper extends BaseMapper<StoreType> {

	@Select({
		" select ",
		"	a.*, b.\"sDict_Picture\" \"sStoreType_MapIconPic\" ",
		" from \"tBase_StoreType\" a ",
		" 	left join \"tBase_Dict\" b on a.\"sStoreType_MapIcon\" = b.\"sDict_NO\" and b.\"sDict_DictTypeNO\" = 'StoreMapIcon' ",
	})
	public List<Map<String, Object>> storeMap();
	
}
