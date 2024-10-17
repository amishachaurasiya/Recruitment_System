package com.coforge.employee.servlet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

@WebServlet("/ResumeServlet")
public class ResumeServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       // int id1 = Integer.parseInt(req.getParameter("id"));
        String id1 ="a@gmail.com";
        Connection connection=null;
        PreparedStatement pstmt=null;
        ResultSet rs=null;
    try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/recruitment","root","mysql");
        String sql = "SELECT * FROM grad_Detail WHERE email = ?";
        pstmt = con.prepareStatement(sql);
        pstmt.setString(1, id1);
        rs = pstmt.executeQuery();

        if(rs.next())
        {
            String id=rs.getString("id");
            String name=rs.getString("name");
            String email=rs.getString("email");
            String mypassword=rs.getString("password");
            String mycareerobjective=rs.getString("career_objective");
            String mypersonalskill=rs.getString("personal_skills");
            String myexperience=rs.getString("Experience");
            String myproj=rs.getString("project_detail");
            String mydob=rs.getString("date_of_birth");
            String myphonenumber=rs.getString("phonenumber");
            String mygender=rs.getString("gender");

            System.out.println("id "+id);
            System.out.println("name "+name);
            System.out.println("email "+email);
            System.out.println("mypersonalskill "+mypersonalskill);
            //set attributes in resume.jsp
            req.setAttribute("id",id);
            req.setAttribute("name",name);
            req.setAttribute("email",email);
            req.setAttribute("password",mypassword);
            req.setAttribute("careerobjective",mycareerobjective);
            req.setAttribute("personalskill",mypersonalskill);
            req.setAttribute("Experience",myexperience);
            req.setAttribute("project",myproj);
            req.setAttribute("dob",mydob);
            req.setAttribute("contact",myphonenumber);
            req.setAttribute("gender1",mygender);


        }

    }catch(Exception e){
        e.printStackTrace();
    }
        RequestDispatcher dispatcher = req.getRequestDispatcher("resume.jsp");
        dispatcher.forward(req, resp);
    }
}
