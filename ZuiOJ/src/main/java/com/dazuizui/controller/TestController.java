package com.dazuizui.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.Serializable;

@RestController
@RequestMapping("/asd")
public class TestController implements Serializable {
    @GetMapping("/test")
    public String test(){
        return "test";
    }
}
