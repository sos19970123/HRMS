package com.hrms.controller;


import com.hrms.bean.Department;
import com.hrms.bean.Employee;
import com.hrms.service.DepartmentService;
import com.hrms.service.DepartmentServiceImpl;
import com.hrms.service.EmployeeService;
import com.hrms.service.EmployeeServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.*;

import java.util.*;

@Controller
@RequestMapping("/hrms")
public class EmployeeController {

    @Qualifier("employeeServiceImpl")
    @Autowired
    EmployeeService employeeService;

//    ApplicationContext ioc = new ClassPathXmlApplicationContext("classpath:applicationContext.xml");
//    DepartmentService departmentService = ioc.getBean("departmentServiceImpl",DepartmentServiceImpl.class);
//    EmployeeService employeeService = ioc.getBean("employeeServiceImpl",EmployeeServiceImpl.class);


    /***
     * 查询所有员工
     * @param page
     * @param model
     * @return
     */
    @RequestMapping(value = "/emplist",method = RequestMethod.GET)
    public String getEmplist(@RequestParam(value = "pageNo", required = false, defaultValue = "1") int page,
                             Model model) {
        int limit = 5;

        int offset = (page-1) * limit;
        List<Employee> employeeList = employeeService.getEmpList(offset, limit);

        int totalItems = employeeService.getEmpCount();

        int temp = totalItems / limit;
        int totalPage = (totalItems % limit == 0)?temp:temp+1;

        model.addAttribute("employeeList", employeeList)
                .addAttribute("totalPage", totalPage)
                .addAttribute("totalItems", totalItems)
                .addAttribute("curPage", page);

        return "employee";
    }

    @RequestMapping(value = "/emp/{id}",method = RequestMethod.GET)
    @ResponseBody
    public Employee getEmp(@PathVariable("id") int empId){
        Employee emp = employeeService.getEmpById(empId);
        return emp;
    }


    /***
     * 更新员工信息
     * @param empId
     * @param employee
     * @return
     */
    @RequestMapping(value = "/emp/{id}",method = RequestMethod.PUT)
    public String updataEmp(@PathVariable("id")int empId,Employee employee){

        return "rediect:/emplist";
    }

    /***
     * 添加员工
     * @param employee
     * @return
     */
    @RequestMapping(value = "/emp",method = RequestMethod.POST)
    @ResponseBody
    public String emp(Employee employee){

        employeeService.addEmp(employee);
        return "1";

    }


    /***
     * 删除员工
     * @param empId
     * @return
     */
    @RequestMapping(value = "/emp/{id}",method = RequestMethod.DELETE)
    public String deleteEmp(@PathVariable("id") int empId){
        employeeService.deleteEmpById(empId);
        return "rediect:/empList";
    }











}
