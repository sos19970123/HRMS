package com.hrms.service;

import com.hrms.bean.Department;
import com.hrms.dao.DepartmentDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class DepartmentServiceImpl implements DepartmentService {

    @Autowired
    DepartmentDao departmentDao;

    @Override
    public int deleteDeptById(Integer deptId) {
        return departmentDao.deleteDeptById(deptId);
    }

    @Override
    public int updateDeptById(Integer deptId, Department department) {
        return departmentDao.updateDeptById(deptId, department);
    }

    @Override
    public int addDept(Department department) {
        return departmentDao.insertDept(department);
    }

    @Override
    public int getDeptCount() {
        return departmentDao.countDets();
    }

    @Override
    public List<Department> getDeptList(Integer offset, Integer limit) {
        return departmentDao.selectDeptsByLimitAndOffset(offset,limit);
    }

    @Override
    public Department getDeptById(Integer deptId) {
        return departmentDao.selectOneById(deptId);
    }

    @Override
    public Department getDeptByName(String deptName) {
        return departmentDao.selectOneByName(deptName);
    }

    @Override
    public List<Department> getDeptName() {
        return departmentDao.selectDeptList();
    }
}
