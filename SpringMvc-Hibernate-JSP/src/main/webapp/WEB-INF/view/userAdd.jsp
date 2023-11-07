<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SIGNUP</title>
<style>
    body{
      background-image:url("https://cdn1.vectorstock.com/i/1000x1000/15/80/triangle-web-page-background-vector-4661580.jpg") ;
      background-repeat: no-repeat;
      background-size: cover;
    }
   #div1{
      border:3px solid salmon;
      border-radius: 25px;
    }
    #div2{
      display: flex;
      justify-content: center;
      align-items: center;
      height: 600px;
    }
    h2{
      text-shadow: 2px 2px blanchedalmond;
    }
  </style>
</head>
<body>
<div align="center">
<table width="41%"><tr><td><a href="">Login</a></td> <td><h2>SIGNUP</h2></td> <td></td></tr></table>
<form action="savedata" method="post">
<table>
<tr>
<td>NAME</td> <td>PHONE</td>
</tr>
<tr>
<td><input type="text" name="name" id="name"> &nbsp;  &nbsp; </td><td><input type="text" name="num" id="num"> &nbsp;  &nbsp; </td> 
</tr>
<tr>
<td>EMAIL</td> <td>PASSWORD</td>
</tr>
<tr>
<td><input type="email" name="mail" id="mail"> &nbsp;  &nbsp; </td> <td><input type="password" name="password" id="pass"> &nbsp;  &nbsp; </td>
</tr>
<tr><td></td></tr>
</table>
<input type="checkbox" checked> I ASSCEPT TERMS & CONDITIONS. 
<br><br>
<input type="submit" value="SIGNUP" id="si" name="si">
<input type="hidden" value="0" id="approve" name="approve">
</form>
</div>
</body>
</html>