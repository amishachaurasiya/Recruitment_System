<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

  <meta charset="UTF-8">

  <title>Login - Online Recruitment System</title>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

  <style>

    body {

      background-color: #f8f9fa;

      display: flex;

      justify-content: center;

      align-items: center;

      height: 100vh;

      margin: 0;

    }

    .login-container {

      background-color: #ffffff;

      padding: 40px;

      border-radius: 10px;

      box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);

      width: 300px;

    }

    h2 {

      text-align: center;

      margin-bottom: 20px;

      color: #007bff;

    }

    .error-message {

      color: red;

      text-align: center;

      margin-bottom: 15px;

    }

    .register-link {

      text-align: center;

      margin-top: 20px;

    }

    .register-link a {

      color: #007bff;

      text-decoration: none;

    }

    .register-link a:hover {

      text-decoration: underline;

    }

  </style>

</head>

<body>



<div class="login-container">

  <h2>Login</h2>



  <form action="LoginServlet" method="post">

    <div class="mb-3">

      <label for="email" class="form-label">Email:</label>

      <input type="email" id="email" name="email" class="form-control" required>

    </div>

    <div class="mb-3">

      <button type="submit" class="btn btn-primary w-100">Login</button>
      <a href="help.jsp">Need Help ?</a>

    </div>

  </form>



  <%

  Object error = request.getAttribute("errorMessage");

  if (error != null) {

  %>

    <div class="error-message"><%= error %></div>

  <%

  }

  %>



  <div class="register-link">

    <p>Not registered? <a href="EmployerRegistration.jsp">Register here</a></p>

  </div>

</div>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-vZ8sJxvU1sMN/Xm2lEUoRgL6z89xT6FW4TKM7u9F2m4cZbC39GgE/Pjog2Vv6z4F" crossorigin="anonymous"></script>

</body>

</html>
