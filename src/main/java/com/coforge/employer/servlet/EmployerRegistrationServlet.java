package com.coforge.employer.servlet;

import com.coforge.employer.dao.EmployerDao;
import com.coforge.employer.model.Employer;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
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
        String company = request.getParameter("company");
        String dob = request.getParameter("dob");
        String contact = request.getParameter("contact");

        try {
            Employer employer = new Employer(name, email, company, dob, contact);
            EmployerDao employerDao = new EmployerDao();
            employerDao.addEmployer(employer);
            response.sendRedirect("success.jsp");
        }
        catch (SQLException e){
            e.printStackTrace();
//            response.sendRedirect("error.jsp");
        }
    }
}
