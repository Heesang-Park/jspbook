<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %> <!-- �ѱ۱��� ���� -->
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align="center">
<h2>application ����</h2>
<hr>
username�� ������ ���� : <%= application.getAttribute("username") %><p>
<%
	Integer count= (Integer)application.getAttribute("count");
	// intValue() : Ineger ��ü���� int�� ���� �̾� ���� �޼ҵ�
	// parseInt() : String ��ü���� int�� ���� �̾� ���� �޼ҵ�
	int cnt= count.intValue()+1;
	application.setAttribute("count", cnt);
%>
count : <%= cnt %>
</div>
</body>
</html>