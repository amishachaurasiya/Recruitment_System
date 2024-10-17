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

        String sql = "INSERT INTO Employer (name, email, password,company, dob, contact) VALUES (?, ?, ?, ?, ?,?)";

        preparedStatement = connection.prepareStatement(sql);

        preparedStatement.setString(1, employer.getName());

        preparedStatement.setString(2, employer.getEmail());
        preparedStatement.setString(3, employer.getPassword());

        preparedStatement.setString(4, employer.getCompany());

        preparedStatement.setString(5, employer.getDob());

        preparedStatement.setString(6, employer.getContact());

        int i = preparedStatement.executeUpdate();

    }

    public boolean checkEmailInDatabase(String email) {

        boolean isRegistered = false;

        Connection connection = null;

        PreparedStatement preparedStatement = null;

        ResultSet resultSet = null;

        try {

            // Database connection setup (use your own credentials)


            connection = DatabaseConnection.myConnection();
            String query = "SELECT * FROM employer WHERE email = ?";

            preparedStatement = connection.prepareStatement(query);

            preparedStatement.setString(1, email);

            resultSet = preparedStatement.executeQuery();

            if (resultSet.next()) {

                isRegistered = true; // Email is found in the database

            }

        } catch (Exception e) {

            e.printStackTrace();

        } finally {

            // Close the database connections

            try {
                if (resultSet != null) resultSet.close();
            } catch (Exception e) {
                e.printStackTrace();
            }

            try {
                if (preparedStatement != null) preparedStatement.close();
            } catch (Exception e) {
                e.printStackTrace();
            }

            try {
                if (connection != null) connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }

        }

        return isRegistered;

    }

}



