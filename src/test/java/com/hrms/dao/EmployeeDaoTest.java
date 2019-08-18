package com.hrms.dao;

import com.hrms.bean.Department;
import com.hrms.bean.Employee;
import com.hrms.service.DepartmentService;
import com.hrms.service.EmployeeService;
import com.hrms.service.EmployeeServiceImpl;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:applicationContext.xml")
public class EmployeeDaoTest {

    @Autowired
    private EmployeeDao employeeDao;

    @Autowired
    private DepartmentDao departmentDao;

    @Qualifier("employeeServiceImpl")
    @Autowired
    EmployeeService employeeService;

    @Qualifier("departmentServiceImpl")
    @Autowired
    DepartmentService departmentService;

    @Test
    public void test(){
//        List<Employee> employees1 = employeeDao.selectByLimitAndOffset(0, 5);
        List<Department> deptlist = departmentService.getDeptName();

        for(Department department : deptlist){
            System.out.println(department.toString());

        }
//
//        int i = employeeDao.countEmps();
//        System.out.println(i);

//        Employee emp = employeeService.getEmpById(1);
        Employee employee = employeeDao.selectOneById(1);
        System.out.println(employee.toString());
    }
}
