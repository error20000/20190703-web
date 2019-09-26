package com.jian.system.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.jian.system.entity.StoreType;

@Mapper
public interface StoreTypeMapper extends BaseMapper<StoreType> {

	@Select({
		"<script>",
		" select ",
		"	a.*, b.\"sDict_Picture\" \"sStoreType_MapIconPic\" ",
		" from \"tBase_StoreType\" a ",
		" 	left join \"tBase_Dict\" b on a.\"sStoreType_MapIcon\" = b.\"sDict_NO\" and b.\"sDict_DictTypeNO\" = 'StoreMapIcon' ",
		"   left join ",
		"		(select * from ",
		"			(select o.*, row_number() over(partition by \"sUserStore_StoreLv1ID\" order by \"sUserStore_StoreLv1ID\") r from \"tBase_UserStore\" o ) ",
		"		where r = 1 ", 
		" 			<if test=\" sUser_ID != null \"> ",
		" 				and \"sUserStore_UserID\" = #{sUser_ID} ",	
		"   		</if>",
		" 		) k on a.\"sStoreType_ID\" = k.\"sUserStore_StoreLv1ID\" ",
		" where 1 = 1 ",
    	" 	<if test=\" sUser_ID != null \"> ",
    	" 		and k.\"sUserStore_UserID\" = #{sUser_ID} ",	
    	"   </if>", 
		"</script>"
	})
	public List<Map<String, Object>> storeMap(@Param("sUser_ID") String sUser_ID);
	
	@Select({
		"<script>",
		" select ",
		"	a.* ",
		" from \"tBase_StoreType\" a ",
		"   left join ",
		"		(select * from ",
		"			(select o.*, row_number() over(partition by \"sUserStore_StoreLv1ID\" order by \"sUserStore_StoreLv1ID\") r from \"tBase_UserStore\" o ) ",
		"		where r = 1 ", 
		" 			<if test=\" sUser_ID != null \"> ",
		" 				and \"sUserStore_UserID\" = #{sUser_ID} ",	
		"   		</if>",
		" 		) k on a.\"sStoreType_ID\" = k.\"sUserStore_StoreLv1ID\" ",
		" where 1 = 1 ",
    	" 	<if test=\" sUser_ID != null \"> ",
    	" 		and k.\"sUserStore_UserID\" = #{sUser_ID} ",	
    	"   </if>", 
		"</script>"
	})
	public List<StoreType> selectAllByUser(@Param("sUser_ID") String sUser_ID);
	
}
