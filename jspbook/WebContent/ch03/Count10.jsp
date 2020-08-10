<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2> 1-10까지의 숫자를 화면에 표시</h2>
<!-- 스크립트릿 -->
<%
// 서블릿
// 1-10까지의 숫자를 화면에 출력 
for(int i=0;i<=10;i++){
	//System.out.println(i); 콘솔에 출력
%>
<!-- 표현식(출력) -->
<%= i %><br>	
<!-- 스크립트릿 -->
<%
}
%>
</body>
</html>