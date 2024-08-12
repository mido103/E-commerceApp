<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.p1{
	color: #8c8c8c;
	font-family: sans-serif;
	font-size:20px;
	padding-left: 130px;
	}
	
.p2{
	font-size: 15px;
	color: #8c8c8c;
	padding-right: 80px;
	}
	
.div1{
	display:flex;
	background-color: white;
	height:50px;
	justify-content: space-between;
	align-items: center;
	}

</style>
</head>
<body style="background-color: #00d8f7">

		<div class="div1">
			<p class="p1">welcome ${user.getUsername()}</p>
			<p class="p2">Home&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Profile&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Logout</p>
		</div>
		
</body>
</html>