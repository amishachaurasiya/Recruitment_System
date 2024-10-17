package com.coforge.employee.dao;

import com.coforge.employee.model.Employee;
import com.coforge.util.DatabaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class EmployeeDao {
    private Connection connection;
    private PreparedStatement preparedStatement;
    public EmployeeDao() throws SQLException{
        connection = DatabaseConnection.myConnection();
        if(connection != null){
            System.out.println("employee dao connection sucessful");
        }
        else{
            System.out.println("employee dao connection failed");
        }
    }

    public void addEmployee(Employee emp) throws SQLException{
        String sql = "insert into grad_detail(name, email, password,career_objective,personal_skills,experience,project_detail,date_of_birth,phonenumber,gender) values(?,?,?,?,?,?,?,?,?,?)";
        preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setString(1,emp.getName());
        preparedStatement.setString(2,emp.getEmail());
        preparedStatement.setString(3,emp.getPassword());
        preparedStatement.setString(4,emp.getObjective());
        preparedStatement.setString(5,emp.getSkill());
        preparedStatement.setString(6,emp.getExp());
        preparedStatement.setString(7,emp.getProjectName());
        preparedStatement.setString(8,emp.getDob());
        preparedStatement.setString(9,emp.getMobile());
        preparedStatement.setString(10,emp.getGender());
        int i= preparedStatement.executeUpdate();
    }

}
