<%@page import="model.MemberDAO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" http://www.w3.org/TR/html4/loose.dtd">

<html>
<body>
<%
	request.setCharacterEncoding("UTF-8"); // �ѱ�ó��
	
	// ��� �κ��� ������ �о�鿩 �ٽ� �� Ŭ������ �����ؾ� ��
	String  [] hobby = request.getParameterValues("hobby");
	// �迭�� �ִ� ������ �ϳ��� ��Ʈ������ ����
	String texthobby="";
	
	for(int i=0; i<hobby.length;i++){
		texthobby+= hobby[i]+" ";
	}
%>
	<!-- ��ü�̸��� mbean���� �ڹٺ� ���� -->
	<jsp:useBean id="mbean" class="model.MemberDBBean">
	<!-- �ڹٺ� ���� -->
		<jsp:setProperty property="*" name="mbean"/> <!-- ���ν�Ŵ -->
	</jsp:useBean>
	
<%
	// ���� ��̴� �ּҹ����� �̹� ����Ǿ� �����Ƿ� �迭�� ������ �ϳ��� ��Ʈ������ ������ ����
	mbean.setHobby(texthobby);
	
	/* String url="jdbc:oracle:thin:@localhost:1521:orcl";// ���� url
	String user="system";
	String pass="12341234"; */
	
	MemberDAO mdao = new MemberDAO();
	mdao.insertMember(mbean); // DAO���� ����̹� ���� ���� �غ� �Ϸ� �߱⿡ �ٷ� ����(insert into, update, delete)

	// ȸ�� ������ �Ǿ��ٸ� ȸ�� ������ �����ִ� �������� �̵���Ŵ(�ѱ�)
	response.sendRedirect("MemberList.jsp"); 
%>	
 ���� ����!
	<%-- <h2>����� ���̵��  <%=mbean.getId() %></h2>
	<h2>����� ���ɺоߴ�  <%=mbean.getFavorite() %></h2> --%>
	
</body>
</html>