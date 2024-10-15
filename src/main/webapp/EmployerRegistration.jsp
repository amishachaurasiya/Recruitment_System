
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Contact Form</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
            .form-container {
                max-width: 500px; /* Adjust the max-width as needed */
                margin: auto; /* Center the form */
            }
    </style>

    <script>
          function checkvalidation(){
           var name=document.getElementById("name").value;
           var name=document.getElementById("company").value;
           var name=document.getElementById("email").value;
           var name=document.getElementById("dob").value;
           var name=document.getElementById("contact").value;
            else if(name=="")
              {
              document.getElementById("err_name").innerHTML("<h6>Name is empty</h6>");
              return false
               }
            else if(name.length<5)
              {
              document.getElementById("err_name").innerHTML("<h6>Name must be at least 5 character long</h6>");
              return false
              }
             else {
             return true
              }
          }
         </script>
</head>
<body>
        <div class="container mt-5">
            <div class="form-container">
                <h2>Employer Registration Form</h2>
                <form action="EmployerRegistrationServlet" method="get">
                    <div class="form-group">
                        <label for="name">Name</label>
                        <input type="text" class="form-control" id="name" name="name" >
                        <span id="name_err"></span>
                    </div>
                    <div class="form-group">
                          <label for="company">Company Name</label>
                          <input type="text" class="form-control" id="company" name="company" >
                    </div>

                    <div class="form-group">
                          <label for="email">Email</label>
                          <input type="email" class="form-control" id="email" name="email" >
                    </div>
                    <div class="form-group">
                         <label for="dob">Date of Birth</label>
                         <input type="date" class="form-control" id="dob" name="dob" >
                    </div>

                    <div class="form-group">
                         <label for="contact">Contact Number</label>
                         <input type="tel" class="form-control" id="contact" name="contact"  pattern="[0-9]{10}">
                         <small class="form-text text-muted">Enter 10-digit mobile number.</small>
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
        </div>
    <!-- Include Bootstrap JS and dependencies -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
