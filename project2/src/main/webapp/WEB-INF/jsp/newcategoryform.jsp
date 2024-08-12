<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
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
width:30%;
height:40px;
background-color: #0278e3;
color:white;
border-radius: 3px;
border-color: white;
font-size: 17px;
margin:0px;
cursor: pointer;
border-radius: 5px;
}
.in3{
width:20%;
height:40px;
background-color: gray;
color:white;
border-radius: 3px;
border-color: white;
font-size: 17px;
margin:0px;
cursor: pointer;
border-radius: 5px;
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
						<c:if test="${category==null}">
						<h2>Add New Category </h2></c:if>
						<c:if test="${category!=null}">
						<h2>Update Category </h2></c:if>
						<div align="center">
						
						</div>

						<form action="newcategory" method="post">
						<p class="p1">Category Name</p>
						<c:if test="${category!=null}">
						<input type="hidden" name="id" value="${category.getId()}"></c:if>
						<input type="text" name="category_name" placeholder="Category name" class="in1" required="required" value="${category.getCategory_name()}"><br><br>
						<div align="right">
						<label><button class="in3" onclick="location.href='categories'">Close</button></label>&nbsp;&nbsp;&nbsp;<label><input type="submit" value="save Changes" class="in2"></label>
						</div>
						</form>
						
							
						
					</div>
				
	
</body>
</html>