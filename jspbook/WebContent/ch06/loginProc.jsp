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
	// post ��Ŀ��� �ѱ۱��� ����
	request.setCharacterEncoding("euc-kr");
	// ���� �ޱ�
	String id=request.getParameter("id");
	String pass=request.getParameter("pass");
%>
	����� id�� <%=id %>�̰� �н������ <%=pass %>�Դϴ�.

</body>
</html>