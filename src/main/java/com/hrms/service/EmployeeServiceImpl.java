package com.hrms.service;

import com.hrms.bean.Employee;
import com.hrms.dao.EmployeeDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeeServiceImpl implements EmployeeService{

    @Autowired
    EmployeeDao employeeDao;

    @Override
    public int getEmpCount() {
        return employeeDao.countEmps();
    }

    @Override
    public List<Employee> getEmpList(Integer offset, Integer limit) {
        return employeeDao.selectByLimitAndOffset(offset,limit);
    }

    @Override
    public Employee getEmpById(Integer empId) {
        return employeeDao.selectOneById(empId);
    }

    @Override
    public Employee getEmpByName(String empName) {
        return employeeDao.selectOneByName(empName);
    }

    @Override
    public int updateEmpById(Integer empId, Employee employee) {
        return employeeDao.updateOneById(empId,employee);
    }

    @Override
    public int deleteEmpById(Integer empId) {
        return employeeDao.deleteOneById(empId);
    }

    @Override
    public int addEmp(Employee employee) {
        return employeeDao.insertOne(employee);
    }
}
