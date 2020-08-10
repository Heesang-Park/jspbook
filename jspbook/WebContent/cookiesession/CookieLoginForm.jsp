<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
	String cookieid = "";
	// 쿠키의 갯수를 알지 못하므로 배열로 쿠키값을 받아옴
	Cookie [] cookie = request.getCookies(); // getCookies 쿠키의 갯수를 알아와줌
	// 배열이므로 반복문으로 읽어드림
	for(int i=0; i<cookie.length; i++){
		if(cookie[i].getName().equals("id")){ // 해당 쿠키(key)가 있다면 해당 값(id)을 읽어옴
			// getName()은 읽어드린 값이 적여있고 equals("id")는 cookie객체의 key값
			cookieid=cookie[i].getValue(); // value
		}
	}
%>



<center>
	<h2>쿠키로그인</h2>
	<form action="CookieLoginProc.jsp" method="post">
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
				<input type="checkbox" name="save" value="1">아이디저장</td>
			</tr>
			<tr height="40">
				<td width="200" colspan="2" align="center">
				<input type="submit" value=쿠키로그인>
				</td>
			</tr>	
		</table>
	</form>	
</center>	
</body>
</html>