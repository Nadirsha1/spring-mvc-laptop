<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>  
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LAPTOP SERVICES</title>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <style>
    body{
      background-image:url("data:image/jpeg;base64,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") ;
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
<h2>LAPTOP SERVICES</h2>

<form action="saveCustomer">
<table>
<tr>
<td>SLNO</td> <td><input type="text" readonly="readonly">&nbsp; &nbsp; </td>
<td>NAME &nbsp;</td> <td><input type="text" name="sname" id="sname">&nbsp; &nbsp; </td>
<td>PHONE &nbsp; </td> 
<td><input type="text" name="snum" id="snum">&nbsp; &nbsp; </td>
<td><input type="submit" value="SAVE" name="save" id="save" style="width:75px"></td>
</tr>
<tr><td></td> <td></td> <td></td> <td></td> <td></td> <td></td> <td><input type="reset" value="CANCEL" name="cancel" style="width:75px"></td></tr>
<tr><td>MAIL &nbsp;</td> 
<td><input type="email" name="smail" id="smail"></td> 
 <td>LAPTOP </td> <td><input type="text" name="lap" id="lap"></td><td>COMPLAINT-TYPE</td> <td><input type="text" name="complaint" id="complaint"></td> <td><a href="logout" class="btn btn-primary">&nbsp;BACK&nbsp;</a></td></tr>
</table>
</form>
<br>
<table border="1" width="93%">
<tr><th>SLNO</th> <th>NAME</th> <th>PHONE</th> <th>MAIL</th> <th>LAPTOP NAME</th> <th>COMPLAINT</th> <th>EDIT</th><th>DELETE</th></tr>
<tr>
<c:forEach var="u" items="${list}">   
				<tr>
				<td>${u.slno }</td>
					<td>${u.sname }</td>
					<td>${u.snum }</td>
					<td>${u.smail}</td>
					<td>${u.lap}</td>
					<td>${u.complaint}</td>
					<td><a href="editcustomer/${u.slno}">Edit</a></td> 
					<td><a href="deletecustomer/${u.slno}">Delete</a></td>						
				</tr>
				</c:forEach>
</tr>
</table>
</div>
</body>
</html>