<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" http://www.w3.org/TR/html4/loose.dtd">

<html>
<body>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="logbean" class="model.LoginDBBean"></jsp:useBean>

<jsp:setProperty property="*" name="logbean"/>

<%
	String url= "jdbc:oracle:thin:@localhost:1521:orcl";
	String user="system";
	String pass="12341234";
	
	try{
		// 1. 해당 데이터베이스를 사용한다고 선언
		Class.forName("oracle.jdbc.driver.OracleDriver");
				
		// 2. 해당 데이터베이스에 접속
		Connection con = DriverManager.getConnection(url, user, pass);
				
		// 3. 접속 후 쿼리 준비
		String sql="insert into member values(?,?)";
				
		// 쿼리를 사용하도록 설정
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		pstmt.setString(1, logbean.getUserid());
		pstmt.setString(2, logbean.getPassword());
		
		// 4. 오라클에서 쿼리를 실행
		pstmt.executeUpdate();
		
		// 5. 자원 반납
		con.close(); // 연결 종료
		}catch (Exception e){
		e.printStackTrace();
		}

%>
	접속
<%
	if(!logbean.check()){
		out.println("로그인 실패");
	}else
		out.println("로그인 성공");
		
%>

</body>
</html>