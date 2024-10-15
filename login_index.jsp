<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>

<html lang="en">

<head>

    <meta charset="UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>Login Page</title>

    <link rel="stylesheet" href="styles.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">


    <script>

        let loginAttempts = 0;

        function validateForm() {

          const email = document.getElementById('email').value;

          const password = document.getElementById('password').value;

          const errorMessage = document.getElementById('error-message');



          // Simulated login check (for demonstration purposes)

          const validEmail = "user@example.com"; // Replace with actual validation logic

          const validPassword = "password123"; // Replace with actual validation logic



          // Check email and password

          if (email === validEmail && password === validPassword) {

            alert("Login successful!");

            // Redirect or proceed to the next page/functionality

            return true;

          } else {

            loginAttempts++;

            errorMessage.innerText = "Invalid email or password.";



            if (loginAttempts >= 3) {

              errorMessage.innerText = "Account locked due to too many failed attempts.";

              document.getElementById('loginForm').reset(); // Reset form

              return false;

            }

            return false;

          }

        }



        function showHelp() {

          alert("Help: Use your assigned email and password to log in. \nContact your admin if you have any issues.");

        }

    </script>

</head>

<body>

<div class="container">

    <h2>Login</h2>

    <form id="loginForm" onsubmit="return validateForm()">

        <div class="form-group">

            <label for="email">Email:</label>

            <input type="email" id="email" name="email" required>

        </div>

        <div class="form-group">

            <label for="password">Password:</label>

            <input type="password" id="password" name="password" required>

        </div>

        <div id="error-message" class="error"></div>

        <button type="submit">Login</button>

    </form>

    <div class="help">

        <a href="help.jsp" onclick="showHelp()">Need Help?</a>

    </div>

</div>

</body>

</html>
