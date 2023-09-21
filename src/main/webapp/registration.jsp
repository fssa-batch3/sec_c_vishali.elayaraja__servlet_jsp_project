<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./register.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
      <div class="container">
        <span class="big-circle"></span>
        <img src="../assets/images/shape.png" class="square" alt="icon" />
        <header><p>Registration Form</header>
      <form action="RegistrationServlet" method="post" class="form">
        <div class="input-box">
          <label for="firstName">First Name</label>
          <input type="text" placeholder="First name" name="firstName" required />
        </div>
        <div class="input-box">
          <label for="lastName">Last Name</label>
          <input type="text" placeholder="Last name"name="lastName" required />
        </div>
        <div class="input-box">
          <label for="email">Email Address</label>
          <input type="text" placeholder="Enter email address"name="email" required />
        </div>
        <div class="column">
          <div class="input-box">
            <label for="password">Phone Number</label>
            <input type="number" placeholder="Enter phone number" name="mobileNumber" required />
          </div>
          <span class="circle one"></span>
          <span class="circle two"></span>
          <div class="input-box">
            <label for="dob">Birth Date</label>
            <input type="date" placeholder="Enter birth date" name="dob" required />
          </div>
        </div>
        <div class="gender-box">
          <h3>Gender</h3>
          <div class="gender-option">
            <div class="gender">
              <input type="radio" id="check-male" name="gender"  value="male" checked />
              <label for="check-male" >male</label>
            </div>
            <div class="gender">
              <input type="radio" id="check-female" name="gender"  value="Female" />
              <label for="check-female">Female</label>
            </div>
            <div class="gender">
              <input type="radio" id="check-other" name="gender"  value="others" />
              <label for="check-other">Others</label>
            </div>
          </div>
        </div>
        <div class="input-box">
          <label for="password1">Password</label>
          <input type="password" placeholder="Enter your password"  name="password" required />
        </div>
        <div class="input-box">
          <label for="password2">Confirm Password</label>
          <input type="password" placeholder="Re-enter your Password" name="confirmpass" required />
        </div>
        <button type="submit">Submit</button>
      </form>
    </div>
    <script src="../assets/jspages/contact.js"></script>
  </body>
</html>