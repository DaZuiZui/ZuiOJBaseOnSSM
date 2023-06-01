package com.dazuizui.service.impl;

import com.dazuizui.domain.User;
import com.dazuizui.service.UserService;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    /**
     * 用户登入
     * @return
     */
    @Override
    public String login(User user) {
        System.err.println("!232131");
        return null;
    }
}
