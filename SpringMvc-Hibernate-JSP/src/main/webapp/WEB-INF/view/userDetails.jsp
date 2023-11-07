<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UserDetails</title>
<style>
    body{
      background-image:url("https://wallpaperaccess.com/full/1658089.jpg") ;
      background-repeat: no-repeat;
      background-size: cover;
    }
   #div1{
      border:3px solid burlywood;
      border-radius: 25px;
    }
    #div2{
      display: flex;
      justify-content: center;
      align-items: center;
      height: 600px;
    }
    h2{
      text-shadow: 2px 2px red;
    }
  </style>
</head>
<body>
<div class=" container-fluid">
<h2 class="text-center">User Details</h2>
<table class="table table-responsive table-content">
<tr  class="table-info">
<th>ID</th>
<th>NAME</th><th>PHONE</th>
<th>MAIL</th><th>PASSWORD</th>
<th>STATUS</th>
<th>EDIT</th>
<th>DELETE</th>
</tr>
<tbody class="table-danger">
<tr>
<c:forEach var="u" items="${list}">   
				<tr  class="table text-light">
				<td>${u.userid }</td>
					<td>${u.name }</td>
					<td>${u.num }</td>
					<td>${u.mail}</td>
					<td>${u.password}</td>
					<td>${u.approve}</td>
					<td><a href="edituser/${u.userid}">Edit</a></td> 
					<td><a href="deleteuser/${u.userid}">Delete</a></td>						
				</tr>
				</c:forEach>
</tr>
</tbody>
</table>
<a href="adminview">Admin Page</a>
</div>>


</body>
</html>