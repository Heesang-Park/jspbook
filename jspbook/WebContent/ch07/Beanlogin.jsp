<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
<meta charset="UFT-8">
<title>Insert title here</title>
</head>
<body>
<center>
	<h2>ȸ������</h2>
	<form name=member1 action="MemberBeanProc.jsp" method="post">
	<table border=1 cellspacing="1" cellpadding="10" width="500">
		<tr height="40">
			<td width="200" align="center">���̵�</td>
			<td width="400" align="center"> <input type="text" size=20 name="id"></td>
		</tr>
		<tr height="40">
			<td width="200" align="center">�н�����</td>
			<td width="400" align="center"><input type="password" size=20 name="pass1"></td>
		</tr>
		<tr height="40">
			<td width="200" align="center">�н����� Ȯ��</td>
			<td width="400" align="center"> <input type="password" size=20 name="pass2"></td>
		</tr>
		<tr height="40">
			<td width="200" align="center">�̸���</td>
			<td width="400" align="center"> <input type="text" size=20 name="email"></td>
		</tr>
		
		<tr height="40">
			<td width="600" colspan="2" align="center">
			<input type="submit" value="ȸ������">			
			<input type="button" value="���">
			</td>
		</tr>				
				
	</table>
	</form>
</center>


</body>
</html>