<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="content-Type" content="text/html;charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	// post 방식에서 한글깨짐 방지
	request.setCharacterEncoding("euc-kr");
	// 정보 받기
	String id=request.getParameter("id");
	String pass=request.getParameter("pass");
%>
	당신의 id는 <%=id %>이고 패스워드는 <%=pass %>입니다.

</body>
</html>