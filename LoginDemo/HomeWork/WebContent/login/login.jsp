<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录页面</title>
</head>
<body>
	<div id="div_bg">
		<div id="div_context">
			<h2>欢迎登录！</h2>
			<form action="do_login.jsp" method="post">
				账号:<input type="text" name="username" required="required" autofocus="autofocus"> <br>
				密码:<input type="password" name="password" required="required"> <br>
				<input type="submit" value="登录" class="sub">
			</form>
		</div>
	</div>
</body>
</html>