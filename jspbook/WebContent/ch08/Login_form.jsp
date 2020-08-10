<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div align=center>
<h2> ch08 : 로그인</h2>
<hr>
<form action= "LoginDB.jsp" method="post">
<table width="250" border="1" align="center" cellspacing="0" cellpadding="5">
	<tr>
		<td colspan="2" align="center">로그인</td>
	</tr>
	<tr>
		<td>아이디</td>
		<td><input type="text" name="userid" size=10 placeholder="아이디"></td>
	</tr>
	<tr>
		<td>패스워드</td>
		<td><input type="password" name="password" size=10 placeholder="패스워드"></td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" name="Submit" value="로그인"></td>
	</tr>

</table>
</form>
</div>
</body>
</html>