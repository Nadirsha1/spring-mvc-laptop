<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<!-- Basic -->

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <style>
    body{
      background-image:url("https://images.pexels.com/photos/531880/pexels-photo-531880.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500") ;
      background-repeat: no-repeat;
      background-size: cover;
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
<div class="container" align="center" id="div1">
<form action="checklogin" method="post"> 
  <br><br><br><br><br>
<table>
<tr><h2>LOGIN SPACE</h2></tr>
<tr><td>MAIL</td><td><input type="text" name="mail"></td></tr>
<tr><td></td> <td></td></tr>
<tr><td>PASSWORD</td><td><input type="password" name="pass"></td></tr>
<tr><td></td> <td></td></tr>
</table><br>
<input type="submit" class="btn btn-primary" value="LOGIN" name="log">
<a href="userAdd" class="btn btn-primary">SignIn</a>
</form>
</div>
</body>
</html>