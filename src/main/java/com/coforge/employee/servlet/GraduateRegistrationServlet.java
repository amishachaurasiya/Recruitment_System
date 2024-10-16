package com.coforge.employee.servlet;

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

@WebServlet("/regForm")
public class GraduateRegistrationServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        PrintWriter out=resp.getWriter();
        String myid=req.getParameter("id");
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
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/recruitment","root","mysql");
        PreparedStatement ps=con.prepareStatement("insert into grad_Detail values(?,?,?,?,?,?,?,?,?,?,?)");
        ps.setString(1,myid);
        ps.setString(2,myname);
        ps.setString(3,myemail);
        ps.setString(4,mypassword);
        ps.setString(5,mycareerobjective);
        ps.setString(6,mypersonalskill);
        ps.setString(7,myexperience);
        ps.setString(8,myproj);
        ps.setString(9,mydob);
        ps.setString(10,myphonenumber);
        ps.setString(11,mygender);

        int count=ps.executeUpdate();
        if(count>0)
        {
            resp.setContentType("text/html");
            out.print("<h3 style='color:green'>Graduate Registered successfully </h3>");
            RequestDispatcher rd=req.getRequestDispatcher("/GraduateRegistration.jsp");
            rd.include(req,resp);
        }
        else {
            resp.setContentType("text/html");
            out.print("<h3 style='color:red'>Graduate not Registered successfully </h3>");
            RequestDispatcher rd=req.getRequestDispatcher("/GraduateRegistration.jsp");
            rd.include(req,resp);
        }


    }catch(Exception e)
    {
     e.printStackTrace();

        resp.setContentType("text/html");
        out.print("<h3 style='color:red'>Exception Occured"+e.getMessage()+" </h3>");
        RequestDispatcher rd=req.getRequestDispatcher("/GraduateRegistration.jsp");
        rd.include(req,resp);
    }


    }
}
