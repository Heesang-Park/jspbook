<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %> <!-- 한글깨짐 방지 -->
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h2>application 예제</h2>
<hr>
username에 설정된 값은 : <%= application.getAttribute("username") %><p>
<%
	Integer count= (Integer)application.getAttribute("count");
	// intValue() : Ineger 객체에서 int형 값을 뽑아 내는 메소드
	// parseInt() : String 객체에서 int형 값을 뽑아 내는 메소드
	int cnt= count.intValue()+1;
	application.setAttribute("count", cnt);
%>
count : <%= cnt %>
</div>
</body>
</html>