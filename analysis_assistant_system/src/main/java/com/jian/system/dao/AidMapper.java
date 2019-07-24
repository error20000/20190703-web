package com.jian.system.dao;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.jian.system.entity.Aid;


@Mapper
public interface AidMapper extends BaseMapper<Aid> {

	@Select({
		" select * from \"tBase_Aid\" where \"sAid_NfcID\" is null or \"sAid_NfcID\" = '' "
	})
	public List<Aid> unbind();

	@Update({
		" update \"tBase_Aid\" set \"sAid_NfcID\" = '' "
	})
	public int rebind();
}
