<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<center>
	<h2>로그인 패아자</h2>
	<form action="SessionLoginProc.jsp" method="post">
		<table border="1" cellspacing="1" cellpadding="10" width="300">
			<tr height="40">
				<td width="200">아이디</td>
				<td><input type="text" name="id" ></td>
			</tr>
			<tr height="40">
				<td width="200">패스워드</td>
				<td><input type="password" name="pass" ></td>
			</tr>
			
			<tr height="40">
				<td width="200" colspan="2" align="center">
				<input type="submit" value=로그인>
				</td>
			</tr>	
		</table>
	</form>	
</center>	


</body>
</html>