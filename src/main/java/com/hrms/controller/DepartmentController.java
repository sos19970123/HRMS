package com.hrms.controller;

import com.hrms.bean.Department;
import com.hrms.service.DepartmentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


import java.util.List;

@Controller
@RequestMapping("/hrms")
public class DepartmentController {

    @Qualifier("departmentServiceImpl")
    @Autowired
    DepartmentService departmentService;

//    ApplicationContext ioc = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
//    DepartmentService departmentService = ioc.getBean("departmentServiceImpl",DepartmentServiceImpl.class);

    @RequestMapping("/getdeplist")
    @ResponseBody
    public List<Department> getdeplist(Model model){
        List<Department> deptlist = departmentService.getDeptName();
        return deptlist;
    }

}
