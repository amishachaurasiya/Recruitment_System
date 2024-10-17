package com.coforge.employer.servlet;


import com.coforge.employer.dao.EmployerDao;

import com.coforge.employer.model.Employer;
import com.coforge.util.DatabaseConnection;

import java.io.IOException;

import java.sql.*;

import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;

import javax.servlet.http.HttpServlet;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;

@WebServlet("/EmployerRegistrationServlet")

public class EmployerRegistrationServlet extends HttpServlet {

    EmployerDao employerDao;

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // Retrieve form data

        String name = request.getParameter("name");

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        String company = request.getParameter("company");

        String dob = request.getParameter("dob");

        String contact = request.getParameter("contact");


        try {
            EmployerDao employerDao = new EmployerDao();
            PreparedStatement preparedStatement;
            Connection connection= DatabaseConnection.myConnection();
            preparedStatement = connection.prepareStatement("select * from employer where email=? and password=?");
            preparedStatement.setString(1, email);
            preparedStatement.setString(2, password);

           ResultSet resultSet = preparedStatement.executeQuery();


            boolean isEmailRegistered = employerDao.checkEmailInDatabase(email);
            if (!isEmailRegistered) {
                request.setAttribute("errorMessage", "Email is not registered. Please go to register.");
                request.getRequestDispatcher("login_index.jsp").forward(request, response);
            }


         else  if (!resultSet.next())
                request.getRequestDispatcher("login_index.jsp?error=id or password is wrong").forward(request, response);




            //===========
            else {
                Employer employer = new Employer(name, email, password, company, dob, contact);


                employerDao.addEmployer(employer);

                response.sendRedirect("success.jsp");
            }
        } catch (SQLException e) {

            e.printStackTrace();

// response.sendRedirect("error.jsp");

        }

    }

}

