<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ch05: forward action �׽�Ʈ</title>
</head>
<body>
<h2>forward_action.jsp ���� footer.jsp ȣ��</h2>
<hr>
forward_action.jsp �� ��� ������ ��µ��� �ʽ��ϴ�.
<!-- Declaration ������ ����Ͽ� ���� -->
<%!
	int a=10; 
%>
<jsp:forward page="footer.jsp">
	<jsp:param name="email" value="test@test.net" />
	<jsp:param name="tel" value="010-1234-5678"/>
</jsp:forward><br>
<h2>forward_action.jsp�� ����˴ϴ�.</h2>
</body>
</html>