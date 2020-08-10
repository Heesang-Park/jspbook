<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %> <!-- 한글깨짐 방지 -->
<html>
<head>
<meta charset="UTF-8">
<title>Session 실습</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");

	// 사용자로부터 넘어온 아이디 읽어드림
	String id=request.getParameter("id");
	
	// 어느 페이지에서든지 세션이 유지되고 있으면 값을 받을 수 있도록 seesion으로 받음
	session.setAttribute("id", id);
	
	// 세션유지 시간 5초로 설정
	session.setMaxInactiveInterval(5);

%>

<h2> 당신의 아이디는 <%=id %>입니다.</h2>
<a href="SessionShopping.jsp">쇼핑몰 바로가기</a>

</body>
</html>