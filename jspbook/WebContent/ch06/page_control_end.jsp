<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
<meta charset="UTF-8">
<title>ch06 : page_control.jsp</title>
</head>
<body>
<div align="center">
<h2>forward action �� sendRedirect() ���</h2>
<hr>
���� ���̴� ȭ���� page_control_end.jsp���� ����� ��� �Դϴ�.
<hr>
�̸�:  <%=request.getParameter("username") %><br>
��ȭ��ȣ : <%=request.getParameter("tel") %>
</div>
</body>
</html>