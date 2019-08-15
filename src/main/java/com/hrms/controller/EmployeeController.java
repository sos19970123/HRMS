package com.hrms.controller;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/hrms/emp")
public class EmployeeController {

    @RequestMapping("/list")
    public String getEmplist(){
        return "employee";
    }
}
