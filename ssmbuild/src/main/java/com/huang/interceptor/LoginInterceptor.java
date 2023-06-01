package com.huang.interceptor;

import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {

        if (request.getRequestURI().contains("changePwd"))
            return true;

        if (request.getRequestURI().contains("jumpChangePwdPage"))
            return true;

        if (request.getRequestURI().contains("validateUserName"))
            return true;

        if (request.getRequestURI().contains("register"))
            return true;

        if (request.getRequestURI().contains("jumpRegisterPage"))
            return true;

        if (request.getRequestURI().contains("jumpLoginPage"))
            return true;

        if (request.getRequestURI().contains("login"))
            return true;

        HttpSession session = request.getSession();

        if (session.getAttribute("username")!=null)
            return true;

        request.getRequestDispatcher("/WEB-INF/jsp/login.jsp").forward(request,response);

        return false;
    }
}
