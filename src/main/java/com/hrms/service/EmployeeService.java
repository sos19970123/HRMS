package com.hrms.service;

import com.hrms.bean.Employee;
import org.springframework.stereotype.Service;

import java.util.List;

public interface EmployeeService {

    public int getEmpCount();
    public List<Employee> getEmpList(int offser, int limit);
    public Employee getEmpById(Integer empId);
    public Employee getEmpByName(String empName);
    public int updateEmpById(Integer empId, Employee employee);
    public int deleteEmpById(Integer empId);
    public int addEmp(Employee employee);
}
