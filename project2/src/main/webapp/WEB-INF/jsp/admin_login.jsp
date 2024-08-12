<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>welcome page</title>
<style type="text/css">
.in1{
width:400px;
height:30px;

}
.in2{
width:400px;
height:40px;
background-color: #0278e3;
color:white;
border-radius: 3px;
border-color: white;
font-size: 17px;
margin:0px;
cursor: pointer;
}
.p1{
margin: 4px;
}
.div1{
display: flex;
position:absolute; 
top:0px; 
bottom:0px; 
left:0px;
right:0px; 
align-items: center; 
justify-content: center;
background-color: #383a43;
}
.div2{
background-color: white ; 
border-radius: 10px;
padding-left: 20px;
padding-right: 20px;
padding-top: 40px;
padding-bottom: 60px;

}
</style>
</head>
<body  class="div1" >

				
					<div  class="div2" align="left">
						<div align="center">
						<h1>Admin Login</h1>
						</div>
						<form action="adminlogin" method="post">
						<p class="p1">AdminName</p>
						<input type="text" name="username" placeholder="AdminName" class="in1" required="required"><br><br>
						<p class="p1">AdminPassword</p>
						<input type="password" name="password" placeholder="AdminPassword" class="in1" required="required"><br>
						<p>Donot have an account?<a href="<%=request.getContextPath()%>/register">Register here</a><p>
						<input type="submit" value="login" class="in2">
						</form>
					</div>
				
	
</body>
</html>