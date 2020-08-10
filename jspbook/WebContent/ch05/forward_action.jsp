<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ch05: forward action 테스트</title>
</head>
<body>
<h2>forward_action.jsp 에서 footer.jsp 호출</h2>
<hr>
forward_action.jsp 의 모든 내용은 출력되지 않습니다.
<!-- Declaration 선언문을 사용하여 선언 -->
<%!
	int a=10; 
%>
<jsp:forward page="footer.jsp">
	<jsp:param name="email" value="test@test.net" />
	<jsp:param name="tel" value="010-1234-5678"/>
</jsp:forward><br>
<h2>forward_action.jsp가 종료됩니다.</h2>
</body>
</html>