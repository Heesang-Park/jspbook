<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>
	<h2>ȸ������</h2>
	<form name=member1 action="MemberDBjoin.jsp" method="post">
	<table border=1 cellspacing="1" cellpadding="10" width="400">
		<tr height="40">
			<td width="300">���̵�</td>
			<td><input type="text" size=20 name="id"></td>
		</tr>
		<tr height="40">
			<td width="300">�н�����</td>
			<td><input type="password" size=20 name="pass1"></td>
		</tr>
		<tr height="40">
			<td width="300">�н����� Ȯ��</td>
			<td><input type="password" size=20 name="pass2"></td>
		</tr>
		<tr height="40">
			<td width="300">�̸���</td>
			<td><input type="text" size=20 name="email"></td>
		</tr>
		<tr height="40">
			<td width="300">����</td>
			<td>
			<input type="radio" name="gender" value="��">��	
			<input type="radio" name="gender" value="��">��
			</td>	
		</tr>
		<tr height="40">
			<td width="300">�ּ�</td>
			<td><input type="text" size=20 name="address"></td>
		</tr>
		<tr>
			<td width="300">��ȭ��ȣ</td>
			<td><input type="text" size=20 name="phone"></td>
		</tr>
		<tr height="40">
			<td width="300">����� ���ɺо�</td>
			<td>
			<input type="checkbox" name="hobby" value="����">���� &nbsp;&nbsp;
			<input type="checkbox" name="hobby" value="���">��� &nbsp;&nbsp;
			<input type="checkbox" name="hobby" value="����">���� &nbsp;&nbsp;
			<input type="checkbox" name="hobby" value="����">���� &nbsp;&nbsp;
			</td>
		</tr>
		<tr height="40">
			<td width="300">����� ������</td>
			<td>
				<select name="job">
					<option selected>����</option>
					<option>ȸ���</option>
					<option>��Ʃ��</option>
					<option>�丮��</option>
				</select>
			</td>
		</tr>
		<tr height="40">
			<td width="300">����� ������</td>
			<td>
			<input type="radio" name="age" value="10��">10��	&nbsp;&nbsp;		
			<input type="radio" name="age" value="20��">20��	&nbsp;&nbsp;		
			<input type="radio" name="age" value="30��">30��	&nbsp;&nbsp;		
			<input type="radio" name="age" value="40��">40��	&nbsp;&nbsp;	
			</td>
		</tr>
		<tr height="40">
			<td width="300" align="center">�ϰ���� ��</td>
			<td width="400" align="left">
			<textarea rows="5" cols="30" name="info"></textarea>
			</td>
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