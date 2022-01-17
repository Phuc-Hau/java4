<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
<link rel="stylesheet" type="text/css" href="../CSS/register.css">
</head>
<body>
    <form onsubmit="return check()">
	    <div class="all">
	    	<h2>ĐĂNG KÝ</h2>
	    	<div class="top">
			    <label>Full name</label><br>
			    <input type="text" id="id">
			    <i id="errorid"></i><br>
			    <label>Email</label><br>
			    <input type="email" id="email">
			    <i id="erroremail"></i><br>
			    <label>Username</label><br>
			    <input type="text" id="fullname">
			    <i id="errorname"></i><br>
			    <label>Password</label><br>
			    <input type="password" id="password"><br>
			    <label>Confirm password</label><br>
			    <input type="password" id="password">
			    <br>
			    <div class="below">
			    <button>Đăng ký</button>
			    </div>
			</div>
    		<br>
		</div>
	</form>
</body>
</html>