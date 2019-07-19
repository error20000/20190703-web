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
		" \"sUser_ID\", \"sUser_UserName\", \"sUser_PassWord\", ",
		" \"sUser_Nick\", \"lUser_StatusFlag\", \"sUser_GroupID\", ",
		" \"sUser_QQ\", \"sUser_Email\", \"sUser_Phone\", ",
		" \"sUser_ThirdID\" ",
		" ) ",
		" values( ",
		" #{sUser_ID}, #{sUser_UserName}, #{sUser_PassWord}, ",
		" #{sUser_Nick}, #{lUser_StatusFlag}, #{sUser_GroupID}, ",
		" #{sUser_QQ}, #{sUser_Email}, #{sUser_Phone}, ",
		" #{sUser_ThirdID} ",
		" )",
	})
	int insert(User obj);

	//TODO ----------------------------------------------------------------------delete
	@Delete({
        " delete from \"tBase_User\" ",
        " where \"sUser_ID\" = #{sUser_ID} "
    })
	int deleteById(String sUser_ID);

	//TODO ----------------------------------------------------------------------update
    @Update({        
    	"update \"tBase_User\" set ",  
    	" \"sUser_UserName\" = #{sUser_UserName}, ",      
    	" \"sUser_Nick\" = #{sUser_Nick},  ",  
    	" \"lUser_StatusFlag\" = #{lUser_StatusFlag},  ",  
    	" \"sUser_GroupID\" = #{sUser_GroupID},  ",  
    	" \"sUser_QQ\" = #{sUser_QQ},  ",  
    	" \"sUser_Email\" = #{sUser_Email},  ",  
    	" \"sUser_Phone\" = #{sUser_Phone},  ",  
    	" \"sUser_ThirdID\" = #{sUser_ThirdID} ",
    	" where \"sUser_ID\" = #{sUser_ID} "
    	})    
    int update(User obj);
    
    @Update({        
    	"update \"tBase_User\" set ",  
    	" \"sUser_PassWord\" = #{sUser_PassWord} ",     
    	" where \"sUser_ID\" = #{sUser_ID} "
    	})    
    int updatePwd(User obj);

	//TODO ----------------------------------------------------------------------select
	@Select({
    	" select * ",
    	" from \"tBase_User\" ",
    	" where  \"sUser_ID\" = #{sUser_ID} "
    })
    User selectById(String sUser_ID);
	
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

	//TODO ----------------------------------------------------------------------custom
    
    
}
