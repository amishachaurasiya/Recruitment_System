<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Resume</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color:pink;


        }
        h1 {
            text-align: center;
            color:Blue;
        }
        .section {
            margin: 20px 0;
        }
    </style>
</head>
<body>
<h1><%= request.getAttribute("name") %></h1>
<div class="section">
<h2>Contact Details</h2>
    <p>Email: <%= request.getAttribute("email") %></p>
    <p>Contact: <%= request.getAttribute("contact") %></p>
    <p>Date of Birth: <%= request.getAttribute("dob") %></p>

</div>
<div class="section">
    <h2>Career Objective</h2>
    <p><%= request.getAttribute("careerobjective") %></p>
</div>
<div class="section">
    <h2>Skills</h2>
        <p><%= request.getAttribute("personalskill") %></p>

</div>
<div class="section">
    <h2>Experience</h2>
    <p><%= request.getAttribute("Experience") %></p>
</div>
<div class="section">
    <h2>Projects</h2>
    <p><%= request.getAttribute("project") %></p>
</div>
</body>
</html>
