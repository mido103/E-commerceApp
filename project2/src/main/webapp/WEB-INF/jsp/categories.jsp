<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.dddd1{
	background-color: #383a43;
	height:60px;
	margin-bottom: 10px;
	display: flex;
	justify-content: flex-end;
	align-items: center;
}
.tb1{
	border-spacing: 0px;
	width:70em;;
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
.bot2{
background-color:#d60318;
color:white;
border-color: white;
border-radius: 5px;
padding-top:10px;
padding-bottom:10px;
padding-left:10px;
padding-right:10px;
cursor: pointer;
}
.bot3{
background-color:#fbba0f;
color:black;
border-color: white;
border-radius: 5px;
padding-top:10px;
padding-bottom:10px;
padding-left:10px;
padding-right:10px;
cursor: pointer;
}
.th1{
background-color:  #f0f0f0;
border-width: thin; 
border-color: #cecece;
border-radius: 3px;
height:45px;
text-align: left;
padding-left: 10px;
}
.th2{
border-width: thin; 
border-radius: 3px;
height:45px;
text-align: left;
padding-left: 10px;
}
.a1{
color: white;
text-decoration: none;
padding-right: 50px;

}
</style>
</head>
<body style="margin: 0px;">
		
		
		<div class="dddd1">
		<a class="a1" href="<%=request.getContextPath()%>/adminlogin">Home</a>
		</div>
		<div align="center">
		<div style="display: inline-block;">
		<div align="left">
		<p class="p1"><a href="<%=request.getContextPath()%>/addcategory"><button class="bot1">Add Category</button></a></p>
		<table class="tb1">
		<tr>
			<th class="th1">SN</th>
			<th class="th1">Category Name</th>
			<th class="th1">Delete</th>
			<th class="th1">Update</th>
		</tr>
		<c:forEach items="${categories}" var="cat">
		<tr>
			<td class="th2"><c:out value="${cat.getId()}"></c:out></td>
			<td class="th2"><c:out value="${cat.getCategory_name()}"></c:out></td>
			<td class="th2"><a href="delete?id=<c:out value="${cat.getId()}"></c:out>"><button class="bot2">Delete</button></a></td>
			<td class="th2"><a href="update?id=<c:out value="${cat.getId()}"></c:out>"><button class="bot3">Update</button></a></td>
		</tr>
		</c:forEach>
		</table>
		</div>
		</div>
		</div>	
</body>
</html>