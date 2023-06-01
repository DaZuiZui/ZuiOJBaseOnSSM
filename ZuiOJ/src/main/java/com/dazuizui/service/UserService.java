package com.dazuizui.service;

import com.dazuizui.domain.User;
import org.springframework.stereotype.Service;

@Service
public interface UserService {
    /**
     * 用户登入
     * @return
     */
    public String login(User user);
}
