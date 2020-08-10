<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<center>
	<h1>세션 로그인 1</h1>
<%
	request.setCharacterEncoding("UTF-8");
	
	// request 내장객체를 사용할 경우
	String id = request.getParameter("id");
	String pass = request.getParameter("pass");
//-------------------------------------------------

	// request 내장객체를 사용해서 받아온 데이터를 세션으로 구현
	// session으로 곧 바로 받을 수 없기에 request로 먼저 받아야함
	session.setAttribute("id", id);
	session.setAttribute("pass", pass);
	
	session.setMaxInactiveInterval(180); // 3분
	
%>
	<hr>
	<h2><%=id %>님 반갑습니다!</h2>
	
	<!-- 아이디 노출 상태로 넘어감 강제로 받아오는 것-->
	 <%-- <a href = "SessionUse.jsp?id=<%=id %>&pass=<%=pass%>">다른 페이지로 이동</a> --%>
	
	<a href="SessionUse.jsp">다른 페이지로 이동</a>
	
	
</center>
</body>
</html>