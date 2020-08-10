<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %> <!-- 한글깨짐 방지 -->
<html>
<head>
<meta charset="UTF-8">
<title>Session Shopping</title>
</head>
<body>
<%
	// 세션에 저장되어 있는 아이디를 읽어드림
	String id=(String)session.getAttribute("id"); // 세션이 Object 타입이기 때문에 다운캐스팅 필수
	
%>
 <h2><%=id %>님 반갑습니다~!</h2>
<!-- 5초뒤에 세션 종료 -->	
세션 유지 시간: <%=session.getMaxInactiveInterval() %><br>	
</body>
</html>