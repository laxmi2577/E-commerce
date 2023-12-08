<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="changeDetailsHeader.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"  />
<title>Change Security Question</title>
</head>
<body>
<%
String msg=request.getParameter("msg");
if("done".equals(msg))
{
%>
<h3 class="alert">Your security Question successfully changed !</h3>
<%} %>
<%
if("wrong".equals(msg))
{
%>
<h3 class="alert">Your Password is wrong!</h3>
<%} %>
<form action="changeSecurityQuestionAction.jsp" method="post">

<h3>Select Your New Securtiy Question</h3>
  		<select class="input-style" name="securityQuestion">
  				<option value="What is favorite colour?">What is favorite color?</option>
  				<option value="What is the name of your pet?">What is the name of your pet?</option>
  				<option value="Who is your crush?">Who is your crush?</option>
  				<option value="When you are born?">"When you are born?</option>
  		</select>
 <hr>
 <h3>Enter Your New Answer</h3>
 <input class="input-style" type="text" name="newAnswer"  placeholder="Enter Your New Answer" required>
<hr>
<h3>Enter Password (For Security)</h3>
<input class="input-style" type="password" name="password"   placeholder="For Security" required>
<hr>
 <button class="button" type="submit"> Save<i class='far fa-arrow-alt-circle-right'></i></button></button>

</form>

</body>
<br><br><br>
</html>