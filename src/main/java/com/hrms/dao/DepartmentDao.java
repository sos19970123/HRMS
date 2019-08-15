package com.hrms.dao;

import com.hrms.bean.Department;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Repository
@Transactional
public interface DepartmentDao {
    int updateDeptById(@Param("depId") Integer depId, @Param("department") Department department);
    int insertDept(@Param("department") Department department);
    Department selectOneById(@Param("depId") Integer depId);
    Department selectOneByLeader(@Param("depLeader") String depLeader);
    Department selectOneByName(@Param("depName") String depName);
    List<Department> selectDeptList();
    List<Department> selectDeptsByLimitAndOffset(@Param("offset") Integer offset, @Param("limit") Integer limit);
    int checkDeptsExistsByNameAndleader(@Param("depLeader") String depLeader,@Param("deptName") String deptName);
    int countDets();
    int deleteDeptById(@Param("depId") Integer depId);
}
