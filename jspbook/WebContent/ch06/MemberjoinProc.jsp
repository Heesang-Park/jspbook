<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
<meta charset="UTF-8">
<title>ȸ������ Join</title>
</head>
<body>
<center>
<h2>ȸ������</h2>
<%
	//post ��� �ѱ� ���� ����
	request.setCharacterEncoding("utf-8");
	// ���� ����ڷ� ���� �����͸� ��������
	String id=request.getParameter("id");
	String pass1=request.getParameter("pass1");
	String pass2=request.getParameter("pass2");
	String email=request.getParameter("email");
	
	String gender=request.getParameter("gender");
	String address=request.getParameter("address");
	String phone=request.getParameter("phone");
	
	// [] Ÿ������ ����
	String[] favorite=request.getParameterValues("favorite");
	
	String job=request.getParameter("job");
	String age=request.getParameter("age");
	String info=request.getParameter("info");
	
	if(!pass1.equals(pass2)){
	
%>
	<script type="text/javascript">
			alert("��й�ȣ�� ��ġ���� �ʽ��ϴ�."); //���â
		history.go(-1); // ������������ �̵�	
	</script>
<%
	}
%>	
	<table border=1 cellspacing="1" cellpadding="10" width="400">
		<tr height="40">
			<td width="150" align="center">���̵�</td>
			<td width="150" align="center"> <%=id %></td>
		</tr>
		<tr height="40">
			<td width="150" align="center">��й�ȣ</td>
			<td width="150" align="center"> <%=pass1 %></td>
		</tr>
		<tr height="40">
			<td width="150" align="center">��й�ȣ Ȯ��</td>
			<td width="150" align="center"><%=pass2 %></td>
		</tr>
		<tr height="40">
			<td width="150" align="center">�̸���</td>
			<td width="150" align="center"> <%=email %></td>
		</tr>
		<tr height="40">
			<td width="150" align="center">����</td>
			<td width="150" align="center"> <%=gender %></td>
		</tr>
		<tr height="40">
			<td width="150" align="center">�ּ�</td>
			<td width="150" align="center"> <%=address %></td>
		</tr>
		<tr height="40">
			<td width="150" align="center">��ȭ��ȣ</td>
			<td width="150" align="center"> <%=phone %></td>
		</tr>
		<tr height="40">
			<td width="150" align="center">����� ���ɺоߴ�</td>
			<td width="150" align="center">
			<%
				for(String h:favorite){
					out.println(h+" ");
				}
			%>
			</td>
		</tr>
		<tr height="40">
			<td width="150" align="center">����</td>
			<td width="150" align="center"> <%=age %></td>
		</tr>
		<tr height="40">
			<td width="150" align="center">�ϰ���� ��</td>
			<td width="150" align="center"> <%=info %></td>
		</tr>
</table>
</center>
</body>
</html>