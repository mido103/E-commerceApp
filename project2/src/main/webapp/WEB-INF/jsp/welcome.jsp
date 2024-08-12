<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>welcome page</title>
<style type="text/css">
.in1{
width:500px;
height:30px;

}
.in2{
width:500px;
height:40px;
background-color: #0278e3;
color:white;
border-radius: 3px;
border-color: white;
font-size: 17px;
}
.p1{
margin: 4px;
}
.b1{
display: flex;
position: absolute;
top: 0px;
bottom: 0px;
left:0px;
right: 0px;
align-items: center;
justify-content: center;
background-color: #383a43;
}
.dvd{
border-radius: 10px;
padding-left: 20px;
padding-right: 20px;
padding-top: 40px;
padding-bottom: 60px;
background-color: white
}
</style>
</head>
<body class="b1">

		<div class="dvd" align="center">
			
			
			
				<div align="left">
					<h1>User Login</h1>
					<form action="login" method="post">
					<p class="p1">Username</p>
					<input type="text" name="username" placeholder="username" class="in1" required="required"><br><br>
					<p class="p1">Password</p>
					<input type="text" name="password" placeholder="password" class="in1" required="required"><br>
					<p>Donot have an account?<a href="<%=request.getContextPath()%>/register">Register here</a><p>
					<input type="submit" value="login" class="in2">
					</form>
				</div>
				
			</div>
		
		
		

</body>
</html>