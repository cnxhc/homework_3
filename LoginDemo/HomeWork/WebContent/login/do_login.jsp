<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	request.setCharacterEncoding("utf-8");
	String username=request.getParameter("username");
	String password=request.getParameter("password");
	if(username!=null && password!=null){
		session.setAttribute("username",username);
		session.setAttribute("password",password);
		response.setHeader("refresh", "1;URL=welcome.jsp");
	}
%>