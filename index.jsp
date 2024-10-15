<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html lang="en">

<head>

 <meta charset="UTF-8">

 <meta name="viewport" content="width=device-width, initial-scale=1.0">

 <title>Recruitment System - Select Role</title>



 <style>

  body {

   font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;

   background: linear-gradient(to right, #00c6ff, #0072ff);

   color: #fff;

   margin: 0;

   padding: 0;

   height: 100vh;

   display: flex;

   justify-content: center;

   align-items: center;

   flex-direction: column;

  }



  h1 {

   font-size: 3em;

   margin-bottom: 10px;

   letter-spacing: 2px;

   text-transform: uppercase;

  }



  p {

   margin-bottom: 30px;

   font-size: 1.2em;

  }



  .role-selection {

   display: flex;

   justify-content: center;

   gap: 30px;

  }



  button {

   padding: 15px 40px;

   font-size: 1.2em;

   font-weight: bold;

   background-color: rgba(255, 255, 255, 0.2);

   color: #fff;

   border: 2px solid #fff;

   border-radius: 50px;

   cursor: pointer;

   transition: transform 0.3s ease, background-color 0.3s ease, box-shadow 0.3s ease;

   box-shadow: 0 5px 15px rgba(0, 0, 0, 0.7);

  }



  button:hover {

   background-color: rgba(255, 255, 255, 0.4);

   transform: translateY(-5px);

   box-shadow: 0 10px 20px rgba(0, 0, 0, 0.4);

  }



  body::before {

   content: '';

   position: absolute;

   top: 0;

   left: 0;

   width: 100%;

   height: 100%;

   background-image: url('https://source.unsplash.com/1600x900/?office,workspace');

   background-size: cover;

   background-position: center;

   z-index: -1;

   opacity: 0.2;

  }



  @media (max-width: 768px) {

   h1 {

    font-size: 2.5em;

   }



   p {

    font-size: 1em;

   }



   button {

    padding: 12px 30px;

    font-size: 1em;

   }



   .role-selection {

    flex-direction: column;

    gap: 20px;

   }

  }

 </style>

</head>

<body>

 <h1>Recruitment System</h1>

 <p>Select your role to continue:</p>



 <div class="role-selection">

  <button onclick="window.location.href='employer-login.jsp'">I am an Employer</button>

  <button onclick="window.location.href='seeker-login.jsp'">I am a Job Seeker</button>

 </div>

</body>

</html>





