<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin View</title>
<style>
    body{
      background-image:url("https://directlinedev.com/media/cases/rooney/header/background_1_zM58lsj.wide.jpeg") ;
      background-repeat: no-repeat;
      background-size: cover;
    }
   #div1{
      border:3px solid burlywood;
      border-radius: 25px;
      height: 200px;
      width: 200px;
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
<h2>ADMIN VIEW</h2>
<a class="text-light" href="userDetails">Users Details</a><br>
<a class="text-light" href="customerDetails">Customer Details</a><br>
<a class="text-light" href="logout">Logout</a>
</div>
</div>
</body>
</html>