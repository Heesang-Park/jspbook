<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<% // request 내장객체를 사용했을 경우 : 로그인 해제됨 null값 뜬다
	/* String id = request.getParameter("id");
	String pass = request.getParameter("pass"); */
	%>
	
	<%
		// 세션이 넘어오는 경우  잘 받아와 진다
		String id = (String)session.getAttribute("id");
		String pass = (String)session.getAttribute("pass");

	%>
	
<center>
	<h1>세션로그인 처리 2</h1>
	넘어온 페이지... <br>
	<hr>
	<h2><%=id %>님 반갑습니다1!! </h2>
</center>
</body>
</html>