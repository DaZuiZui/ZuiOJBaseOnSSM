package com.huang.service;

import com.huang.dao.UserMapper;
import com.huang.pojo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService{

    UserMapper userMapper;

    @Autowired
    public void setUserMapper(UserMapper userMapper) {
        this.userMapper = userMapper;
    }

    @Override
    public User queryUserByID(int userID) {
        return userMapper.queryUserByID(userID);
    }

    @Override
    public User queryUserByName(String userName) {
        return userMapper.queryUserByName(userName);
    }

    @Override
    public String queryUserPasswordByName(String userName) {
        return userMapper.queryUserPasswordByName(userName);
    }

    @Override
    public int addUser(User user) {
        return userMapper.addUser(user);
    }

    @Override
    public int queryMaxUserID() {
        return userMapper.queryMaxUserID();
    }

    @Override
    public int updateUserPassword(String userName,String password) {
        return userMapper.updateUserPassword(userName,password);
    }

    @Override
    public String queryUserName(String userName) {
        return userMapper.queryUserName(userName);
    }
}
