<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ch05: footer.jsp</title>
</head>
<body>
<!-- ǥ���� ��� -->
<%= request.getParameter("email")%>,
<%= request.getParameter("tel") %>

<!-- ���� ��ü ��� -->
<%
	out.println(request.getParameter("tel"));
%>

</body>
</html>






