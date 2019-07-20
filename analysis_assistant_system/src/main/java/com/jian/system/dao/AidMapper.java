package com.jian.system.dao;

import java.util.List;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.jian.system.entity.Aid;
import com.jian.system.entity.User;


@Mapper
public interface AidMapper {

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
	public int insert(User obj);

	//TODO ----------------------------------------------------------------------delete
	@Delete({
        " delete from \"tBase_User\" ",
        " where \"sUser_ID\" = #{sUser_ID} "
    })
	public int deleteById(String sUser_ID);

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
    public int update(User obj);
    
    @Update({        
    	"update \"tBase_User\" set ",  
    	" \"sUser_PassWord\" = #{sUser_PassWord} ",     
    	" where \"sUser_ID\" = #{sUser_ID} "
    })    
    public int updatePwd(User obj);

	//TODO ----------------------------------------------------------------------select
	@Select({
    	" select * ",
    	" from \"tBase_Aid\" ",
    	" where  \"sAid_ID\" = #{sAid_ID} "
    })
	public User selectById(String sAid_ID);
	

    @Select({
    	" select * ",
    	" from \"tBase_Aid\"  "
    })
	public List<Aid> selectAll();
    

	/*if(rows != -1){
		//sql += " limit " + start + ", " + rows;
		String sqltmp = " and rownum <= " + (start/rows + 1)*rows;
		sqltmp += " minus  " + sql + " and rownum <= " + start;  // minus--差集   rownum--只能比较小于
		sql += sqltmp;
	}*/

	//TODO ----------------------------------------------------------------------custom
    
    
}
