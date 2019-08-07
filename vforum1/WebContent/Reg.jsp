<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file="home1.jsp" %>  

<!--
Author: Colorlib
Author URL: https://colorlib.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>Creative Colorlib SignUp Form</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Custom Theme files -->
<link href="style.css" rel="stylesheet" type="text/css" media="all" />
  <link rel="stylesheet" href="home.css">
<!-- //Custom Theme files -->
<!-- web font -->
<link href="//fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,700,700i" rel="stylesheet">
<!-- //web font -->

<script>
var myInput = document.getElementById("psw");
var letter = document.getElementById("letter");
var capital = document.getElementById("capital");
var number = document.getElementById("number");
var length = document.getElementById("length");

alert("Please fill all fields...!!!!!!");
return false;
}else if(!(email).match(emailReg)){
alert("Invalid Email...!!!!!!");
return false;
}else{
return true;
}

// When the user clicks on the password field, show the message box
myInput.onfocus = function() {
  document.getElementById("message").style.display = "block";
}

// When the user clicks outside of the password field, hide the message box
myInput.onblur = function() {
  document.getElementById("message").style.display = "none";
}

// When the user starts to type something inside the password field
myInput.onkeyup = function() {
  // Validate lowercase letters
  var lowerCaseLetters = /[a-z]/g;
  if(myInput.value.match(lowerCaseLetters)) { 
    letter.classList.remove("invalid");
    letter.classList.add("valid");
  } else {
    letter.classList.remove("valid");
    letter.classList.add("invalid");
}

  // Validate capital letters
  var upperCaseLetters = /[A-Z]/g;
  if(myInput.value.match(upperCaseLetters)) { 
    capital.classList.remove("invalid");
    capital.classList.add("valid");
  } else {
    capital.classList.remove("valid");
    capital.classList.add("invalid");
  }

  // Validate numbers
  var numbers = /[0-9]/g;
  if(myInput.value.match(numbers)) { 
    number.classList.remove("invalid");
    number.classList.add("valid");
  } else {
    number.classList.remove("valid");
    number.classList.add("invalid");
  }

  // Validate length
  if(myInput.value.length >= 8) {
    length.classList.remove("invalid");
    length.classList.add("valid");
  } else {
    length.classList.remove("valid");
    length.classList.add("invalid");
  }
}



function checkPassword(form) { 
    password = form.password.value  ; 
    password1 = form.password1.name; 

    // If password not entered 
    if (password == '') 
        alert ("Please enter Password"); 
          
    // If confirm password not entered 
    else if (password1 == '') 
        alert ("Please enter confirm password"); 
          
    // If Not same return False.     
    else if (password != password1) { 
        alert ("\nPassword did not match: Please try again...") 
        return false; 
    } 

    // If same return True. 
    else{ 
        alert("Password Match: Welcome to GeeksforGeeks!") 
        return true; 
    } 
} 


function myFunction() {
    var pass1 = document.getElementById("password").value;
    var pass2 = document.getElementById("password1").value;
    if (pass1 != pass2) {
        //alert("Passwords Do not match");
        document.getElementById("password").style.borderColor = "#E34234";
        document.getElementById("password1").style.borderColor = "#E34234";
    }
    else {
        alert("Passwords Match!!!");
        document.getElementById("myform1").login();
    }
    
   }





</script> 
</head>
<body class="body">

	<!-- main -->
	<div class="main-w3layouts wrapper">
		
		<div class="main-agileinfo">
			<div class="agileits-top">
				<form action="regServlet" method="post" name="myform" id="myform1" onclick=" myFunction();">
				    <input class="text" type="text" name="id" placeholder="EmpId" required=""  ><br>
				    <input class="text" type="text" name="name" placeholder="Emp Name" required=""  ><br>
				    <input class="text" type="text" name="username" placeholder="Username" required=""  >
					<input class="text email" type="email" name="email" placeholder="Email" required="" >
					<input class="text loc"  type="text" name="location" placeholder="Location" required="" ><br>
					<input class="text desig" type="text" name="designation" placeholder="Designation" required="" ><br>
					 <label for="psw"></label>
					<input class="text" type="password" name="password" value="password" id="pswd" placeholder="Password" required="" id="getpswd" ><br>
					<input class="text" type="password" value="password1" name="password1" placeholder="Confirm Password" id="confirmpswd" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required required=""><br>
					
					
					<div class="wthree-text">
						<label class="anim">
							<input type="checkbox" class="checkbox" required="">
							<span>I Agree To The Terms & Conditions</span>
						</label>
						<div class="clear"> </div>
					</div>
					<input type="submit" value="SIGNUP" name="login" onclick = "checkPassword(this);  validateemail();MatchPassword(); myFunction();">

					
				</form>
				<p>ALready Registered? <a href="login.jsp"> Login Now!</a></p>
			</div>
		</div>
		
		<ul class="colorlib-bubbles">
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
			<li></li>
		</ul>
	</div>
	
	<!-- //main -->
</body>
</html>