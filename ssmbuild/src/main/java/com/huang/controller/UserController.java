package com.huang.controller;

import com.huang.pojo.User;
import com.huang.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;

@Controller
public class UserController {

    private UserService userService;

    @Autowired
    @Qualifier("userServiceImpl")
    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/jumpLoginPage")
    public String jumpToLoginPage(){
        return "login";
    }

    @PostMapping("/login")
    public String login(String userName, String password, HttpSession session, Model model){
        User user = userService.queryUserByName(userName);
        if (password.equals(user.getPassword())){
            session.setAttribute("username",userName);
            return "redirect:/book/allBook";
        }
        return "redirect:/jumpLoginPage";
    }

    @GetMapping("/jumpRegisterPage")
    public String jumpToRegisterPage(){
        return "register";
    }

    @PostMapping("/register")
    public String register(@RequestParam("userName") String userName,
                           @RequestParam("password") String password,
                           @RequestParam("confirmPassword")String confirmPassword){
        if(password.equals(confirmPassword)){
            User user = new User();
            user.setUserName(userName);
            user.setPassword(password);
            user.setUserID(userService.queryMaxUserID()+1);
            userService.addUser(user);
            return "redirect:/jumpLoginPage";
        }
        return "redirect:/jumpRegisterPage";
    }

    @GetMapping("/validateUserName")
    @ResponseBody
    public String validateUserName(String userName){
        if(userName.isEmpty())
            return "用户名不能为空！";
        String vName = userService.queryUserName(userName);
        if (vName == null){
            return "用户名可用！";
        }
        return "用户名已存在！";
    }

    @GetMapping("/jumpChangePwdPage")
    public String jumpChangePwdPage(){
        return "changePwd";
    }

    @PostMapping("/changePwd")
    public String changePwd(String userName, String oldPassword, String newPassword){
        if (oldPassword.equals(userService.queryUserPasswordByName(userName))){
            userService.updateUserPassword(userName,newPassword);
            return "redirect:/jumpLoginPage";
        }
        return "redirect:/jumpChangePwdPage";
    }

    @GetMapping("/loginOut")
    public String loginOut(HttpSession session){
        session.invalidate();
        return "redirect:/jumpLoginPage";
    }

}
