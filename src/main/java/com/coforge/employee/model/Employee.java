package com.coforge.employee.model;

public class Employee {
    private String name;
    private String email;
    private String password;
    private String objective;
    private String skill;
    private String exp;
    private String dob;
    private String projectName;
    private String mobile;
    private String gender;

    public Employee(String name, String email, String password, String objective, String skill, String exp, String dob, String projectName, String mobile, String gender) {

        this.name = name;
        this.email = email;
        this.password = password;
        this.objective = objective;
        this.skill = skill;
        this.exp = exp;
        this.dob = dob;
        this.projectName = projectName;
        this.mobile = mobile;
        this.gender = gender;
    }


    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getObjective() {
        return objective;
    }

    public void setObjective(String objective) {
        this.objective = objective;
    }

    public String getSkill() {
        return skill;
    }

    public void setSkill(String skill) {
        this.skill = skill;
    }

    public String getExp() {
        return exp;
    }

    public void setExp(String exp) {
        this.exp = exp;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }
}
