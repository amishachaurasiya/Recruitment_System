package com.coforge.employer.dao;

import com.coforge.employer.model.Employer;
import com.coforge.util.DatabaseConnection;

import java.sql.*;

public class EmployerDao {
    private Connection connection;
    private Statement statement;
    private PreparedStatement preparedStatement;
    private ResultSet resultSet;
    public EmployerDao() throws SQLException {
        connection = DatabaseConnection.myConnection();
        if (connection != null)
            System.out.println("connection successful");
        else
            System.out.println("----- some problem-----");
    }

    public void addEmployer(Employer employer) throws SQLException {
        String sql = "INSERT INTO Employer (name, email, company, dob, contact) VALUES (?, ?, ?, ?, ?)";
        preparedStatement = connection.prepareStatement(sql);
        preparedStatement.setString(1, employer.getName());
        preparedStatement.setString(2, employer.getEmail());
        preparedStatement.setString(3, employer.getCompany());
        preparedStatement.setString(4, employer.getDob());
        preparedStatement.setString(5, employer.getContact());
        int i = preparedStatement.executeUpdate();
    }
}
