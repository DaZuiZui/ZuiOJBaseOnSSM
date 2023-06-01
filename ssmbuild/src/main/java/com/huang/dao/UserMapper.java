package com.huang.dao;

import com.huang.pojo.User;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {

    User queryUserByID(@Param("userID") int userID);

    User queryUserByName(@Param("userName") String userName);

    String queryUserPasswordByName(@Param("userName") String userName);

    int addUser(User user);

    int queryMaxUserID();

    int updateUserPassword(@Param("userName")String userName,@Param("password") String password);

    String queryUserName(@Param("userName")String userName);
}
