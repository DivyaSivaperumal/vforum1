<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
* {box-sizing: border-box;}

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}


.body
{
 background:grey;
}
#cssmenu ul,
#cssmenu li,
#cssmenu a {
  list-style: none;
  margin: 0;
  padding: 0;
  border: 0;
  line-height: 1;
  font-family: 'Lato', sans-serif;
}
#cssmenu {
  border: 1px solid #133e40;
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  -ms-border-radius: 5px;
  -o-border-radius: 5px;
  border-radius: 5px;
  width: auto;
}
#cssmenu ul {
  zoom: 1;
 background:#2B547E;
  filter: progid:DXImageTransform.Microsoft.gradient(startColorstr='@top-color', endColorstr='@bottom-color', GradientType=0);
  padding: 5px 10px;
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  -ms-border-radius: 5px;
  -o-border-radius: 5px;
  border-radius: 5px;
}
#cssmenu ul:before {
  content: '';
  display: block;
}
#cssmenu ul:after {
  content: '';
  display: table;
  clear: both;
}
#cssmenu li {
  float: left;
  margin: 0 5px 0 0;
  border: 1px solid transparent;
}
#cssmenu li a {
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  -ms-border-radius: 5px;
  -o-border-radius: 5px;
  border-radius: 5px;
  padding: 8px 15px 9px 15px;
  display: block;
  text-decoration: none;
  color: #ffffff;
  border: 1px solid transparent;
  font-size: 16px;
}
#cssmenu li.active {
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  -ms-border-radius: 5px;
  -o-border-radius: 5px;
  border-radius: 5px;
  border: 1px solid #36b0b6;
}
#cssmenu li.active a {
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  -ms-border-radius: 5px;
  -o-border-radius: 5px;
  border-radius: 5px;
  display: block;
  background: #1e6468;
  border: 1px solid #133e40;
  -moz-box-shadow: inset 0 5px 10px #133e40;
  -webkit-box-shadow: inset 0 5px 10px #133e40;
  box-shadow: inset 0 5px 10px #133e40;
  background:blue;
}

.body a.active1
{
	background:lightblue;
}
#cssmenu li:hover {
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  -ms-border-radius: 5px;
  -o-border-radius: 5px;
  border-radius: 5px;
  border: 1px solid #36b0b6;
}
#cssmenu li:hover a {
  -webkit-border-radius: 5px;
  -moz-border-radius: 5px;
  -ms-border-radius: 5px;
  -o-border-radius: 5px;
  border-radius: 5px;
  display: block;
  background: #1e6468;
  border: 1px solid #133e40;
  -moz-box-shadow: inset 0 5px 10px #133e40;
  -webkit-box-shadow: inset 0 5px 10px #133e40;
  box-shadow: inset 0 5px 10px #133e40;
}

.topnav {
  overflow: hidden;
  background-color: #2B547E;
  color:white;
  list-style-type: none;  
 
  border-radius: 7px;
  border: 1px solid black;
  margin:8px;
 
}

.topnav a {
  float: left;
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: white;
}

.topnav a.active {
  background-color: lightblue;
  color: white;
  font-size:18px;
}

.topnav .search-container {
  float: right;
}

.topnav input[type=text] {
  padding: 6px;
  margin-top: 8px;
  font-size: 17px;
  border: none;
}

.topnav .search-container button {
  float: right;
  padding: 6px 10px;
  margin-top: 8px;
  margin-right: 16px;
  background: #ddd;
  font-size: 17px;
  border: none;
  cursor: pointer;
}



.topnav .search-container button:hover {
  background: #ccc;
}

@media screen and (max-width: 600px) {
  .topnav .search-container {
    float: none;
  }
  .topnav a, .topnav input[type=text], .topnav .search-container button {
    float: none;
    display: block;
    text-align: left;
    width: 100%;
    margin: 0;
    padding: 14px;
  }
  .topnav input[type=text] {
    border: 1px solid #ccc;  
    
   
  }
  .cssmenu-right
  {
  float:right;
  }
}
</style>
</head>
<body class="body">

<body class="body">
<div id='cssmenu'>
<ul>
   <li><a href="#vforum" class='active1'><span>VForum</span></a></li>
   <li><a href="home.jsp" class='active'><i class="fa fa-home">Home</i></a></li>
   <li><a href='user.jsp'><i class="fa fa-user">Profile</i></a>
   
    <li><a href='Post.jsp'><i class="fa fa-plus-square">Add question</i></a>
     <li><a href='answer.jsp'><i class="fa fa-edit">Answer</i></a>
     <li><a href='notification.jsp'><i class="fa fa-bell">Notification</i></a></li>
    
     
    <li><a href='logout.jsp' action="logout.jsp"><i class="fa fa-power-off">Logout</i></a>
    
   
   </div>
  
</ul>
</div>

  


</body>
</html>
