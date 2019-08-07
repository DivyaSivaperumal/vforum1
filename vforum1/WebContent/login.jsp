<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="home1.jsp" %>

<!DOCTYPE html>
<html lang="en" >
<head>
  <meta charset="UTF-8">
  <title>VForum</title>
  <link rel="stylesheet" href="style1.css">
  <link rel="stylesheet" href="home.css">
 
</head>
<body id="body">



<!-- partial:index.partial.html -->
<div class="login-page">
  <div class="form">
    
    <form class="login-form" action="logServlet">
      <input type="text" placeholder="username" required="" name="username"/>
      <input type="password" placeholder="password" required="" name="password"/>
      <input type="submit" value="Login"  onclick="myFunction()">
       

</script>
      <p class="message">Not registered? <a href="Reg.jsp">Create an account</a></p>
    </form>
  </div>
</div>
			
		
				
<!-- partial -->
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script  src="script.js"></script>

</body>
</html>