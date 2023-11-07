<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EditCustomer</title>
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
<h2>EDIT CUSTOMER DETAILS</h2>
<form action="saveCustomer">
<table>
<tr><td>SLNO</td> <td><input type="text" name="slno" readonly="readonly" value="${userdetails.slno}">&nbsp; &nbsp; </td></tr>
<tr><td>NAME &nbsp;</td> <td><input type="text" name="sname" id="sname" value="${userdetails.sname}">&nbsp; &nbsp; </td></tr>
<tr><td>PHONE &nbsp; </td> <td><input type="text" name="snum" id="snum" value="${userdetails.snum}">&nbsp; &nbsp; </td></tr>
<tr><td>MAIL &nbsp;</td> <td><input type="email" name="smail" id="smail" value="${userdetails.smail}"></td> </tr>
<tr><td>LAPTOP</td><td><input type="text" name="lap" id="lap" value="${userdetails.lap}"></td></tr>
<tr><td>COMPLAINT-TYPE</td> <td><input type="text" name="complaint" id="complaint" value="${userdetails.complaint}"></td> </tr>
</table>
<input type="submit" value="SAVE" name="save" id="save" style="width:75px">
</form>
</div>
</div>
</body>
</html>