<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <ul class="navbar-nav">
    <li class="nav-item active">
      <a class="nav-link" href="#">WEBSITENAME</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="t1.jsp">Trang 1</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="t2.jsp">Trang 2</a>
    </li>
    <li class="nav-item">
      <a class="nav-link disabled" href="dangnhap.jsp">LogIn</a>
    </li>
    <li class="nav-item">
      <a class="nav-link disabled" href="#">LogOut</a>
    </li>
  </ul>
</nav>
<div class="container">
	<form action="dangnhapcontroller" method='post'>
	un:<input type='text' name='txtun'  class="form-control"><br>
	pass: <input type='password' name='txtpass'  class="form-control"><br>
	<input type='submit' name='but1' value='LogIn' class="btn-primary">
	</form>
	<a href="dangnhapcontroller?kt=1">Test gui du lieu</a>
</div>

	
</body>
</html>