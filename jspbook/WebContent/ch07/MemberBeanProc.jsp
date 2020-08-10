<%@ page language="java" contentType="text/html; charset=UTF-8" %>



<html>
<head>
<meta charset="EUC-KR">
<title>결과페이지</title>
</head>
<body>
<div align="center">
<h2>회원정보</h2>
<%	
 request.getParameter("UTF-8");


%>
<jsp:useBean id="mbean" class="jspbook.ch07.MemberBean" scope="page">
<jsp:setProperty property="*" name="mbean"/>
</jsp:useBean>

<h2>당신의 아이디는 <jsp:getProperty property="id" name= "mbean"/></h2>
<h2>당신의 비번은 <jsp:getProperty property="pass1" name= "mbean"/></h2>
<h2>당신의 이메일은 <jsp:getProperty property="email" name= "mbean"/></h2>
		
</div>
</body>
</html>