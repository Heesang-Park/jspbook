<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html >
<html>
<head>
<meta charset="EUC-KR">
<title>ch05: include cation 테스트</title>
</head>
<body>
<h2>include_action.jsp에서 footer.jsp 호출</h2>

=== 여기까지가 include_action.jsp에서 출력하는 메세지 입니다<br>
<br>
<hr>
<jsp:include page="footer.jsp">
	<jsp:param name="email" value="test@test.net" />
	<jsp:param name="tel" value="010-1234-5678"/>
</jsp:include><br>
<h2>include_action.jsp가 종료됩니다.</h2>

</body>
</html>





