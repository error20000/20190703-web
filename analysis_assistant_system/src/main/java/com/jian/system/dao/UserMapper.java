package com.jian.system.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.jian.system.entity.User;


@Mapper
public interface UserMapper {

	//TODO ----------------------------------------------------------------------insert
	@Update({
		" insert into ",
		" \"tBase_User\" (",
		" \"sUser_ID\", \"sUser_UserName\", \"sUser_PassWord\"",
		" ) ",
		" values( ",
		" #{sUser_ID}, #{sUser_UserName}, #{sUser_PassWord} ",
		" )",
	})
	int insert(User obj);

	//TODO ----------------------------------------------------------------------delete
	@Delete({
        " delete from \"tBase_User\" ",
        " where \"sUser_ID\" = #{sUserID} "
    })
    int deleteById(String sUserID);

	//TODO ----------------------------------------------------------------------update
    @Update({        
    	"update \"tBase_User\" set ",  
    	" \"sUser_UserName\" = #{sUser_UserName}, ",      
    	" \"sUser_PassWord\" = #{sUser_PassWord} ",
    	" where \"sUser_ID\" = #{sUserID} "
    	})    
    int update(User obj);

	//TODO ----------------------------------------------------------------------select
	@Select({
    	" select * ",
    	" from \"tBase_User\" ",
    	" where  \"sUser_ID\" = #{sUserID} "
    })
    User selectById(String sUserID);
	
    @Select({
    	" select * ",
    	" from \"tBase_User\" ",
    	" where  rownum <= 1 "
    })
    User selectOne();

    @Select({
    	" select * ",
    	" from \"tBase_User\" "
    })
    List<User> selectAll();
}
