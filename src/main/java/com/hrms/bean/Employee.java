package com.hrms.bean;

public class Employee {
    private Integer empId;
    private String empName;
    private String empEmail;
    private String gender;
    private Department department;

    public Employee() {
    }

    public Employee(Integer empId, String empName, String empEmail, String gender, Department department) {
        this.empId = empId;
        this.empName = empName;
        this.empEmail = empEmail;
        this.gender = gender;
        this.department = department;
    }

    public Integer getEmpId() {
        return empId;
    }

    public void setEmpId(Integer empId) {
        this.empId = empId;
    }

    public String getEmpName() {
        return empName;
    }

    public void setEmpName(String empName) {
        this.empName = empName;
    }

    public String getEmpEmail() {
        return empEmail;
    }

    public void setEmpEmail(String empEmail) {
        this.empEmail = empEmail;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Department getDepartment() {
        return department;
    }

    public void setDepartment(Department department) {
        this.department = department;
    }
}
