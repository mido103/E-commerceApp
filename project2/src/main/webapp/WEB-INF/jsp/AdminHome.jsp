<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.bb1{
background-color: #383a43;
display: flex;
position: absolute;
top: 0px;
bottom: 0px;
left: 0px;
right: 0px;
flex-direction: column;
margin: 0px;
justify-content: space-around;
}
.d1{
background-color: white;
text-align: center;
height: 250px;
align-content: center;
font-size: 30px;

}
.d2{
height: 250px;
display: flex;
justify-content: space-around;
align-items: center;
margin-left:150px;
margin-right:150px;



}
.pp1{
margin: 0px;
margin-top: 15px;
font-size: 20px;
color:  #6b6b6b;
}	
.hh1{
margin: 0px;
font-size: 60px;
font-family:serif;

}
.d3{
background-color: white;
text-align: center;
border-radius: 10px;
padding-left:30px;
padding-right:30px;
padding-bottom:20px;

}
.bot1{
background-color:#016de4;
color:white;
border-color: white;
border-radius: 5px;
padding-top:10px;
padding-bottom:10px;
padding-left:10px;
padding-right:10px;
cursor: pointer;
}	
.pn1{

color: #6b6b6b;
}

.pn2{

font-size: 25px;
font-weight: bold;
}
	}
</style>
</head>
<body class="bb1">

		<div class="d1">
			<p class="hh1">Welcome Back, Admin</p>
			<p class="pp1">Manage your data from this Admin Panel</p>
		</div>
      	<div class="d2">
      	
      		<div class="d3">
      		<p class="pn2">Categories</p>
      		<p >-----------------------------------------------------</p>
      		<p class="pn1">Manage the categories section here</p>
      		<a href="<%=request.getContextPath()%>/categories"><button class="bot1">Manage</button></a>
      		</div>
      		<div class="d3">
      		<p class="pn2">Products</p>
      		<p>-----------------------------------------------------</p>
      		<p class="pn1">Manage all the products here</p>
      		<a href="<%=request.getContextPath()%>/products"><button class="bot1">Manage</button></a>
      		</div>
      		<div class="d3">
      		<p class="pn2">Customers</p>
      		<p>-----------------------------------------------------</p>
      		<p class="pn1">Manage all the customer here</p>
      		<a href="<%=request.getContextPath()%>/customers"><button class="bot1">Manage</button></a>
      		</div>
      	
      	</div>
</body>
</html>