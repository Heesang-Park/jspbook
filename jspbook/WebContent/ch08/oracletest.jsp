<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %>
<%
	// 데이터베이스 연결관련 변수
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	// 데이터 베이스 연결정보 문자열 선언
	String jdbc_driver = "oracle.jdbc.driver.OracleDriver";
	String jdbc_url = "jdbc:oracle:thin:@localhost:1521:orcl";
	
	try{
		// JDBC 드라이버 로드
		Class.forName(jdbc_driver);
		
		//데이터 베이스 연결정보 설정
		conn = DriverManager.getConnection(jdbc_url, "system", "12341234");
		
		String sql="insert into jdbc_test values(?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("username"));
		pstmt.setString(2, request.getParameter("email"));
		
		// username 값을 입력한 경우 spl 문장을 수행
		if(request.getParameter("username") !=null){
			pstmt.execute();
		}
	}catch(Exception e){
		System.out.println(e);
	}
 
%>

<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
  <div align="center">
	<h2>이벤트 등록</h2>
	<hr>
	<form name=form1 action="oracletest.jsp" method="post">
	등록 이름: <input type="text" name=username>
	email 주소: <input type="text" name=email size=20>
	<input type="submit" value="등록">	
	</form>
	<hr>	
  </div>
  #등록 목록<p>
  <%
  try{
	  // select 문장을 문자열 형태로 구성
	  String sql = "select username, email from jdbc_test";
	  pstmt = conn.prepareStatement(sql);
	  
	  ResultSet rs = pstmt.executeQuery();
	  
	  int i=1;
	  while(rs.next()){
		  out.println(i+":"+rs.getString(1)+","+rs.getString("email")+"<br>");
		  i++;
	  }
  }catch(Exception e){
	System.out.println(e);	  
  }
  
  %>
  
</body>
</html>