<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DBTEST</title>
</head>
<body>
<%
	// 오라클 데이터베이스 연결 url 설정
	String url = "jdbc:oracle:thin:@localhost:1521:orcl"; // Driver Manager 
	String user = "system";
	String pass = "12341234";
	
	// 접속 오류가 많으므로 항상 Exception 처리를 항상 해야한다.(try ~ catch문)
	try{
		// 1. 어느 데이터베이스를 사용할지 선언 == 오라클
		Class.forName("oracle.jdbc.driver.OracleDriver");
		// 2. 직접적으로 오라클에 접속 해주는 소스 작성
		Connection con = DriverManager.getConnection(url, user, pass);
	}catch(Exception e){
		e.printStackTrace();
	}
%>
	오라클 데이터베이스 연결 성공!!


</body>
</html>






