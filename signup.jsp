<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"  />
<title>Signup</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
    
    
     <form action="signupAction.jsp" method="post">
    <input type="text" name="name" placeholder="Enter Name" required>
     <input type="email" name="email" placeholder="Enter Email" required>
      <input type="number" name="mobileNumber" placeholder="Enter Mobile Number" required>
      <select name="securityQuestion" required>
      <option value="What is your pet name">What is your pet name</option>
      <option value="What is your school name">What is your school name</option>
      <option value="What is your mother name">What is your mother name</option>
      <option value="What is your father name">What is your father name</option>
      </select>
       <input type="text" name="answer" placeholder="Enter Answer" required>
        <input type="password" name="password" placeholder="Enter Password" required>
         <input type="submit"  value="Signup">
    </form>
    
    
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whysign'>

<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
%>
<h1>Successfully Registered...</h1>
<%} %>

<%
if("invalid".equals(msg))
{
%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%} %>

    <h2>Online Shopping</h2>
    <p>The Online Shopping System is the application that allows the users to shop online without going to the shops to buy them.</p>
  </div>
</div>

</body>
</html>