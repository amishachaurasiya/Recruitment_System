package com.coforge.employee.servlet;

import com.coforge.employee.dao.EmployeeDao;
import com.coforge.employee.model.Employee;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@WebServlet("/GraduateRegistrationServlet")
public class GraduateRegistrationServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        String myname=req.getParameter("name");
        String myemail=req.getParameter("email");
        String mypassword=req.getParameter("password");
        String mycareerobjective=req.getParameter("careerobjective");
        String mypersonalskill=req.getParameter("personalskill");
        String myexperience=req.getParameter("Experience");
        String myproj=req.getParameter("project");
        String mydob=req.getParameter("dob");
        String myphonenumber=req.getParameter("contact");
        String mygender=req.getParameter("gender1");

        try{
            Employee employee= new Employee(myname,myemail,mypassword,mycareerobjective,mypersonalskill,myexperience,mydob,myproj,myphonenumber,mygender);
            EmployeeDao employeeDao=new EmployeeDao();
            employeeDao.addEmployee(employee);
            out.println("employee added sucessfully");
        }
        catch (SQLException e){
            e.printStackTrace();
        }

    }
}
