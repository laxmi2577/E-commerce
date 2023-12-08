<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%@include file="header.jsp" %>
<%@include file="footer.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"  />
<title>Home</title>
<style>
h3
{
	color: yellow;
	text-align: center;
}
</style>
</head>
<body>
<div style="color: white; text-align: center; font-size: 30px;">Home <i class="fa fa-institution"></i></div>

<h3 class="alert">Product added successfully!</h3>

<h3 class="alert">Product already exist in you cart! Quantity  increased!</h3>

<h3 class="alert">some thing went wrong! try Again! </h3>

<table>
        <thead>
          <tr>
            <th scope="col">ID</th>
            <th scope="col">Name</th>
            <th scope="col">Category</th>
            <th scope="col"><i class="fa fa-inr"></i> Price</th>
            <th scope="col">Add to cart <i class='fas fa-cart-plus'></i></th>
          </tr>
        </thead>
        <tbody>
<%
int z=0;
try{
  String search=request.getParameter("search");
  Connection con=ConnectionProvider.getCon();
  Statement st=con.createStatement();
  ResultSet rs=st.executeQuery("select * from product where name like '%"+search+"%' or category '%"+search+"%' and active='Yes'");
  while(rs.next())
  {
    z=1;
%>
          <tr>
            <td><%=rs.getString(1)%></td>
            <td><%=rs.getString(2)%></td>
            <td><%=rs.getString(3)%></td>
            <td><i class="fa fa-inr"></i> <%=rs.getString(4)%></td>
            <td><a href=addToCartAction.jsp?id=<%=rs.getString(1)%>>Add to cart <i class='fas fa-cart-plus'></i></a></td>
          </tr>
    <%
    } 
  }
  catch(Exception e)
  {
    System.out.println(e);
  }
  %>
        </tbody>
      </table>
      <%if(z==0){%>
      <h1 style="color:white; text-align: center;">Nothing to show</h1>
      <%} %>
      <br>
      <br>
      <br>
      <div class="footer">
        <p>All Right Is Reserved By My Team</p>
        </div>

</body>
</html>