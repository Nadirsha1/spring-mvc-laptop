<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EDIT USER</title>
<style>
    body{
      background-image:url("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZwuieYYDpsa2FwvFRK8qvOzNhyhdxlRHpZqBNxlhvhwBsDdzNKli38b4Bd4AkIpa6Dps&usqp=CAU") ;
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
<div align="center" id="div2">
    <div align="center" id="div1">
<h2>EDIT USER DETAILS</h2>
<form action="editusersave">
<table>
<tr><td></td><td><input type="hidden" name="userid" value="${userdetails.userid}"/></td></tr> 
<tr><td>NAME</td><td><input type="text" name="name" value="${userdetails.name}"/></td></tr>
<tr><td>PHONE</td><td><input type="text" name="num" value="${userdetails.num}"/></td></tr>
<tr><td>EMAIL</td><td><input type="email" name="mail" value="${userdetails.mail}"/></td></tr>
<tr><td>PASSWORD</td><td><input type="text" name="password" value="${userdetails.password}"/></td></tr>
<tr><td>STATUS</td><td><input type="text" name="approve" value="${userdetails.approve}"/></td></tr>
</table>
<input type="submit" value="Edit&Save">
</form>
</div>
</div>
</body>
</html>