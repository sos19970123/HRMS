package com.hrms.dao;

import com.hrms.bean.Employee;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface EmployeeDao {

    public int deleteOneById(@Param("empId") Integer empId);
    public int updateOneById(@Param("empId") Integer empId,
                      @Param("employee") Employee employee);
    public int insertOne(Employee employee);
    public Employee selectOneById(@Param("empId") Integer empId);
    public Employee selectOneByName(@Param("empName") String empName);
    // 查询带有部门信息的Employee
    public Employee selectWithDeptById(@Param("empId") Integer empId);
    // 分页查询
    public List<Employee> selectByLimitAndOffset(@Param("limit") Integer limit, @Param("offset") Integer offset);
    public int countEmps();

}
