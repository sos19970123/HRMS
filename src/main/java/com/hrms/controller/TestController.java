package com.hrms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {

    @RequestMapping("/testmvc")
    public String test(){
        System.out.println("测试。。。");
        return "main";
    }
}
