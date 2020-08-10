<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %>


<!-- 자바빈 선언 : 객체이름 addr -->
<jsp:useBean id="addr" class="jspbook.ch07.AddrBean"></jsp:useBean>

<!-- 데이터 설정하여 가져오기 -->
<jsp:setProperty property="*" name="addr"/>

<!-- application은 톰켓이 종료되면 소멸되므로 사용한 것
jspbook.ch07.AddrManager는 ArrayList Class이다 -->
<jsp:useBean id="am" class="jspbook.ch07.AddrManager" scope="application"></jsp:useBean>

<%
	am.add(addr);
%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ch07: addr_add.jsp</title>
</head>
<body>
	<div align="center">
		<h2>등록 내용</h2>
		이름: <jsp:getProperty property="username" name="addr"/><p> 
		전화번호: <%=addr.getTel() %><p>
		이메일: <%=addr.getEmail() %>
		성별: <%=addr.getGender() %>
<hr>
<a href="addr_list.jsp">목록보기</a>

</div>
</body>
</html>