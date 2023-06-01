package com.dazuizui.controller;

import com.dazuizui.domain.User;
import com.dazuizui.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    /**
     * 用户登入
     * @param user
     * @return
     */
    @PostMapping("/login")
    public String login(@RequestBody User user){
        return userService.login(user);
    }
}
