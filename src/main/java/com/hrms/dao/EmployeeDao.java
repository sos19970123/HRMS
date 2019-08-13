package com.hrms.dao;

import com.hrms.bean.Employee;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public interface EmployeeDao {

    int deleteOneById(@Param("empId") Integer empId);
    int updateOneById(@Param("empId") Integer empId,
                      @Param("employee") Employee employee);
    int insertOne(Employee employee);
    Employee selectOneById(@Param("empId") Integer empId);
    Employee selectOneByName(@Param("empName") String empName);
    // 查询带有部门信息的Employee
    Employee selectWithDeptById(@Param("empId") Integer empId);
    // 分页查询
    List<Employee> selectByLimitAndOffset(@Param("limit") Integer limit, @Param("offset") Integer offset);
    int countEmps();

}
