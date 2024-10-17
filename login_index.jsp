<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="UTF-8">

  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <title>Login - Online Recruitment System</title>

  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

</head>

<body>

  <div class="container mt-5">

    <div class="form-container">

      <h2>Login</h2>

      <form action="LoginServlet" method="post">

        <div class="form-group">

          <label for="email">Email:</label>

          <input type="email" class="form-control" id="email" name="email" required>

        </div>

        <div class="form-group">

          <label for="password">Password:</label>

          <input type="password" class="form-control" id="password" name="password" required>

        </div>



        <button type="submit" class="btn btn-primary" id="loginButton">Login</button>
        <br>
        <a href="help.jsp">Need Help?</a>

      </form>
      <%
        Object error = request.getAttribute("errorMessage");
        String msg=request.getParameter("error");
        if (error != null) {
       %>

      <div class="alert alert-danger mt-3"><%= error %></div>
      <%
        }
     else if(msg!=null)
       {
      %>
       <span class="text-danger">
       <%=msg %>
       </span>
       <%
       }
       %>


  </div>

  </div>

</body>

</html>









































































































































































































































































































































































































