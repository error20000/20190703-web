package com.jian.system.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

import com.jian.system.entity.Nfc;

@Mapper
public interface NfcMapper extends BaseMapper<Nfc> {

	@Select({
		" select * from \"tBase_Nfc\" where \"lNfc_StatusFlag\" = 0 "
	})
	public List<Nfc> unbind();
	
}
