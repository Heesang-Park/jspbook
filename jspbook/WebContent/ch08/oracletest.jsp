<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %>
<%
	// �����ͺ��̽� ������� ����
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	// ������ ���̽� �������� ���ڿ� ����
	String jdbc_driver = "oracle.jdbc.driver.OracleDriver";
	String jdbc_url = "jdbc:oracle:thin:@localhost:1521:orcl";
	
	try{
		// JDBC ����̹� �ε�
		Class.forName(jdbc_driver);
		
		//������ ���̽� �������� ����
		conn = DriverManager.getConnection(jdbc_url, "system", "12341234");
		
		String sql="insert into jdbc_test values(?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, request.getParameter("username"));
		pstmt.setString(2, request.getParameter("email"));
		
		// username ���� �Է��� ��� spl ������ ����
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
	<h2>�̺�Ʈ ���</h2>
	<hr>
	<form name=form1 action="oracletest.jsp" method="post">
	��� �̸�: <input type="text" name=username>
	email �ּ�: <input type="text" name=email size=20>
	<input type="submit" value="���">	
	</form>
	<hr>	
  </div>
  #��� ���<p>
  <%
  try{
	  // select ������ ���ڿ� ���·� ����
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