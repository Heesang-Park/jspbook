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
		// 1. �ش� �����ͺ��̽��� ����Ѵٰ� ����
		Class.forName("oracle.jdbc.driver.OracleDriver");
				
		// 2. �ش� �����ͺ��̽��� ����
		Connection con = DriverManager.getConnection(url, user, pass);
				
		// 3. ���� �� ���� �غ�
		String sql="insert into member values(?,?)";
				
		// ������ ����ϵ��� ����
		PreparedStatement pstmt = con.prepareStatement(sql);
		
		pstmt.setString(1, logbean.getUserid());
		pstmt.setString(2, logbean.getPassword());
		
		// 4. ����Ŭ���� ������ ����
		pstmt.executeUpdate();
		
		// 5. �ڿ� �ݳ�
		con.close(); // ���� ����
		}catch (Exception e){
		e.printStackTrace();
		}

%>
	����
<%
	if(!logbean.check()){
		out.println("�α��� ����");
	}else
		out.println("�α��� ����");
		
%>

</body>
</html>