<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Graduate Registration</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        .form-container {
            max-width: 500px; /* Adjust the max-width as needed */
            margin: auto; /* Center the form */
        }
    </style>
</head>
<body>
<div class="container mt-5">
    <div class="form-container">
        <h2>Graduate Registration Form</h2>
        <form action="regForm" method="post">

        <div class="form-group">
            <label for="id">Id</label>
            <input type="number" class="form-control" id="id" name="id" >
         </div>
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" class="form-control" id="name" name="name" >
                <span id="name_err"></span>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" class="form-control" id="email" name="email" >
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" class="form-control" id="password" name="password" >
            </div>
            <div class="form-group">
                 <label for="careerobjective">Career Objective</label>
                 <input type="text" class="form-control" id="careerobjective" name="careerobjective" >
            </div>
            <div class="form-group">
                 <label for="personalskill">Personal Skill</label>
                 <input type="text" class="form-control" id="personalskill" name="personalskill" >
            </div>
            <div class="form-group">
                  <label for="Experience">Experience</label>
                  <input type="text" class="form-control" id="Experience" name="Experience" >
            </div>

            <div class="form-group">
                <label for="project">Project Name</label>
                <input type="text" class="form-control" id="project" name="project" >
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
            <fieldset class="form-group">
                <div class="row">
                  <legend class="col-form-label col-sm-2 pt-0">Gender</legend>
                  <div class="col-sm-10">
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="gender1" id="gender1" value="Male" checked>
                      <label class="form-check-label" for="gender1">
                        Male
                      </label>
                    </div>
                    <div class="form-check">
                      <input class="form-check-input" type="radio" name="gender1" id="gender1" value="Female">
                      <label class="form-check-label" for="gender2">
                        Female
                      </label>
                    </div>
                    </div>
                   </div>
                  </fieldset>
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