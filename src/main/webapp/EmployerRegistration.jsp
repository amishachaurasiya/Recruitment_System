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
            span{
            margin-top:6px;
            color:#880000;
            }
    </style>

<script>
function validate() {
    var name = document.getElementById("name").value;
    var company = document.getElementById("company").value;
    var email = document.getElementById("email").value;
    var dob = document.getElementById("dob").value;
    var contact = document.getElementById("contact").value;
    var password = document.getElementById("password").value;
    var contactPattern = /^[0-9]{10}$/; // Assuming 10-digit mobile number
    var emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

    // Clear previous error messages
    document.getElementById("err_name").innerHTML = "";
    document.getElementById("err_company").innerHTML = "";
    document.getElementById("err_email").innerHTML = "";
    document.getElementById("err_dob").innerHTML = "";
    document.getElementById("err_contact").innerHTML = "";
    document.getElementById("err_password").innerHTML = "";
    if (name == "") {
        document.getElementById("err_name").innerHTML = "<h6>Name can not be empty</h6>";
        return false;
    }
    if (company == "") {
        document.getElementById("err_company").innerHTML = "<h6>Company name is empty</h6>";
        return false;
    }
    else if(password ==""){
        document.getElementById("err_password").innerHTML = "<h6>Password name is empty</h6>";
        return false;
    }
    else if (email == "") {
        document.getElementById("err_email").innerHTML = "<h6>Email is empty</h6>";
        return false;
    } else if (!emailPattern.test(email)) {
        document.getElementById("err_email").innerHTML = "<h6>Please enter a valid email address</h6>";
        return false;
    } else if (dob === "") {
        document.getElementById("err_dob").innerHTML = "<h6>Date of Birth is required</h6>";
        return false;
    } else if (contact === "") {
        document.getElementById("err_contact").innerHTML = "<h6>Contact number is empty</h6>";
        return false;
    } else if (!contactPattern.test(contact)) {
        document.getElementById("err_contact").innerHTML = "<h6>Please enter a valid 10-digit contact number</h6>";
        return false;
    }

    return true;
}
</script>

</head>
<body>
        <div class="container mt-5">
            <div class="form-container">
                <h2>Employer Registration Form</h2>
                <form action="EmployerRegistrationServlet" method="get" onsubmit="return validate()">
                    <div class="form-group">
                        <label for="name">Name</label>
                        <input type="text" class="form-control" id="name" name="name" >
                        <span id="err_name"></span>
                    </div>
                    <div class="form-group">
                          <label for="company">Company Name</label>
                          <input type="text" class="form-control" id="company" name="company" >
                          <span id="err_company"></span>

                    </div>

                    <div class="form-group">
                          <label for="email">Email</label>
                          <input type="email" class="form-control" id="email" name="email" >
                          <span id="err_email"></span>

                    </div>

                    <div class="form-group">
                         <label for="password">Password:</label>
                         <input type="password" class="form-control" name="password" id="password" required>
                         <span id="err_password"></span>

                    </div>
                    <div class="form-group">
                         <label for="dob">Date of Birth</label>
                         <input type="date" class="form-control" id="dob" name="dob" >
                         <span id="err_dob"></span>

                    </div>

                    <div class="form-group">
                         <label for="contact">Contact Number</label>
                         <input type="tel" class="form-control" id="contact" name="contact"  pattern="[0-9]{10}">
                         <small class="form-text text-muted">Enter 10-digit mobile number.</small>
                         <span id="err_contact"></span>

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
