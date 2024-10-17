<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1,shrink-to-fit=no">
    <title>Graduate Registration</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .form-container {
            max-width: 500px; /* Adjust the max-width as needed */
            margin: auto; /* Center the form */
            border:7px solid red;
            padding:3%;
            background-color:#D6EAF8;
        }
    </style>
    <script>

    function checkvalidation()
    {
        var name=document.getElementById("name").value.trim();
        var email=document.getElementById("email").value.trim();
        var password=document.getElementById("password").value.trim();
        var careerobjective=document.getElementById("careerobjective").value.trim();
        var personalskill = document.getElementById("personalskill").value.trim();
        var experience=document.getElementById("experience").value;
        var project=document.getElementById("project").value.trim();
        var dob=document.getElementById("dob").value;
        var contact=document.getElementById("contact").value;

        const emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
        const passwordPattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
        const namePattern = /^[A-Za-z\s]+$/;


    if(!name)
    {
    document.getElementById("err_name").innerHTML="<small>Name cannot be blank</small>";
    return false;
    }
    if(!namePattern.test(name)){
                 document.getElementById("err_name").innerHTML="";
                 document.getElementById("err_name").innerHTML="<small>Name should contain only letters</small>";
                return false;
        }
    if(!email)
    {
    document.getElementById("err_name").innerHTML="";
         document.getElementById("err_email").innerHTML="<small>Email cannot be blank</small>";
         return false;
     }
    if(!emailPattern.test(email)){
             document.getElementById("err_email").innerHTML="";
             document.getElementById("err_email").innerHTML="<small>Please enter a valid email</small>";
return false;
    }
    if(!password )
    {
        document.getElementById("err_email").innerHTML="";
        document.getElementById("err_password").innerHTML="<small>Password cannot be blank</small>";
        return false;
    }

     if(!passwordPattern.test(password)){
                 document.getElementById("err_password").innerHTML="";
                 document.getElementById("err_password").innerHTML="<small>Please enter a valid password</small>";
                 return false;
        }
    if(!careerobjective){
    document.getElementById("err_password").innerHTML="";
    document.getElementById("err_careerobjective").innerHTML="<small>Career Objective cannot be blank</small>";
    return false;
    }
    if(!personalskill){
    document.getElementById("err_careerobjective").innerHTML="";
    document.getElementById("err_personalskill").innerHTML="<small>Personal Skill cannot be blank</small>";
    return false;
    }
    if(!experience){
    document.getElementById("err_personalskill").innerHTML="";
    document.getElementById("err_experience").innerHTML="<small>Experience cannot be blank</small>";
    return false;
    }
    if(!project){
    document.getElementById("err_experience").innerHTML="";
    document.getElementById("err_project").innerHTML="<small>Project cannot be blank</small>";
    return false;
    }
    if(!dob){
    document.getElementById("err_project").innerHTML="";
    document.getElementById("err_dob").innerHTML="<small>Date of birth cannot be blank</small>";
    return false;
    }
    if(!contact){
    document.getElementById("err_dob").innerHTML="";
    document.getElementById("err_contact").innerHTML="<small>Contact cannot be blank</small>";
    return false;
    }
        return true;
    }

    </script>
</head>
<body>
<div class="container mt-5">
    <div class="form-container">
        <h2 style="color:Blue;font:bold">Graduate Registration Form</h2>
        <form action="GraduateRegistrationServlet" method="post" onsubmit="return checkvalidation()" >

            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" class="form-control" id="name" name="name" >
                <span id="err_name"></span>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" class="form-control" id="email" name="email" >
                <span id="err_email"></span>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" id="password" name="password" >
                <span id="err_password"></span>

            </div>
            <div class="form-group">
                 <label for="careerobjective">Career Objective</label>
                 <input type="text" class="form-control" id="careerobjective" name="careerobjective" >
                 <span id="err_careerobjective"></span>
            </div>
            <div class="form-group">
                 <label for="personalskill">Personal Skill</label>
                 <input type="text" class="form-control" id="personalskill" name="personalskill" >
                 <span id="err_personalskill"></span>
            </div>
            <div class="form-group">
                  <label for="Experience">Experienced/Fresher</label>
                  <input type="number" class="form-control" id="experience" name="Experience" >
                  <span id="err_experience"></span>
            </div>

            <div class="form-group">
                <label for="project">Project Name</label>
                <input type="text" class="form-control" id="project" name="project" >
                <span id="err_project"></span>
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
           <fieldset class="form-group">
               <div class="row">
                   <legend class="col-form-label col-sm-2 pt-0">Gender</legend>
                   <div class="col-sm-10">
                       <div class="form-check">
                           <input class="form-check-input" type="radio" name="gender1" id="genderMale" value="Male" checked>
                           <label class="form-check-label" for="genderMale">
                               Male
                           </label>
                       </div>
                       <div class="form-check">
                           <input class="form-check-input" type="radio" name="gender1" id="genderFemale" value="Female">
                           <label class="form-check-label" for="genderFemale">
                               Female
                           </label>
                       </div>
                   </div>
               </div>
           </fieldset>

            <button type="submit" class="btn btn-primary" >Submit</button>
        </form>
    </div>
</div>
<!-- Include Bootstrap JS and dependencies -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>