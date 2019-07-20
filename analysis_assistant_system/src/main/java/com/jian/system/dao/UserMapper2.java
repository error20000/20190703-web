package com.jian.system.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import com.jian.system.entity.User;


@Mapper
public interface UserMapper2 {

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
    	" from \"tBase_User\" ",
    	" where  \"sUser_ID\" = #{sUser_ID} "
    })
	public User selectById(String sUser_ID);
	
    @Select({
    	" select * ",
    	" from \"tBase_User\" ",
    	" where  rownum <= 1 "
    })
	public User selectOne();

    @Select({
    	" select * ",
    	" from \"tBase_User\" "
    })
	public List<User> selectAll();
    

    @Select({
    	"<script>",
    	" select * ",
    	" from \"${tableName}\" ",
    	" where ",
    	"	<foreach collection=\"map.keys\" item=\"item\"  index=\"i\" separator=\"and\">",
    	" 		\"${item}\" = #{map[${item}]}",	
    	"	</foreach>",
    	"</script>"
    })
	public List<User> selectList(@Param("tableName") String tableName, @Param("map") Map<String, Object> condition);


  /*  @Insert("<script>" +
            "    insert into LOB_LEVEL_LOG (ID, ROLEID, ROLENAME, GROUPID, USERID, ROLELEVEL, CHANNEL, DAYTIME, LOGTIME)" +
            "    <foreach collection=\"list\" item=\"item\" index=\"index\" separator=\"union all\" >" +
            "      (select #{item.id}, #{item.roleid}, #{item.rolename}, #{item.groupid}, #{item.userid}, #{item.rolelevel}, #{item.channel}, #{item.daytime}, #{item.logtime} from dual)" +
            "    </foreach>" +
            "</script>")*/
	//TODO ----------------------------------------------------------------------custom
    
    
}
