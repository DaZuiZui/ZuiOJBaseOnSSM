package com.huang.service;

import com.huang.pojo.User;

public interface UserService {

    User queryUserByID(int userID);

    User queryUserByName(String userName);

    String queryUserPasswordByName(String userName);

    int addUser(User user);

    int queryMaxUserID();

    int updateUserPassword(String userName,String password);

    String queryUserName(String userName);

}
