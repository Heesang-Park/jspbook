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
<h2>ch06 :application �׽�Ʈ</h2>
<hr>
1. ��������: <%=application.getServerInfo() %><br>
2. ���� API �������� : <%= application.getMajorVersion()+"."+application.getMinorVersion()%><br>
3. application.jsp ������ �������: <%=application.getRealPath("application.jsp") %>					 
<hr>
setAttribute �� username ������ "ȫ�浿" ���� <p>
<% application.setAttribute("username", "ȫ�浿");
	application.log("username=ȫ�浿");
	application.setAttribute("count", 1);
	
%>
<a href="application_result.jsp">Ȯ���ϱ�</a>

</div>
</body>
</html>