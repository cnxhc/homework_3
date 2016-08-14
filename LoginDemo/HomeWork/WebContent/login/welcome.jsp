<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="style.css">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录成功</title>
</head>
<body>
	<div id="div_bg">
		<div id="div_context">
			<h2>欢迎回来！</h2>
			<%
				if (session.getAttribute("username") != null && session.getAttribute("password") != null) {
			%>
			<%
				response.setCharacterEncoding("utf-8");
			%>
			用户名：<%=session.getAttribute("username")%><br> 
			密码：<%=session.getAttribute("password")%><br>
			<a href="logout.jsp">注销</a> <br>
			<%
				} else {
			%>
			请先 <a href="login.jsp">登录</a>
			<%
				}
			%>
		</div>
	</div>
</body>
</html>