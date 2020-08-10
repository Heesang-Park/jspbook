<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" http://www.w3.org/TR/html4/loose.dtd">
<%
	// 한글 캐릭터 셋 변환
	request.setCharacterEncoding("UTF-8");
	
	// form 태그안에 있었던 username으로 저달된 값을 가져옴
	String username = request.getParameter("username");
	
	// session객체로 변환하여 세팅(단 username이 null이 아닌경우)
	if(username!=null){
		session.setAttribute("user", username);
	}
	
%> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>twitter_list.jsp</title>
</head>
<body>

	<div align="center">
	<h3>My Simple Twitter!!</h3>
	<hr>
	<form action="tweet.jsp" method="post" name="tweet">
	@<%=session.getAttribute("user") %> <input type="text" name="msg"/> <input type="submit" value="Tweet"/>
	</form>
	<hr>
	<div align="left">
	<ul> <!-- 비정렬 목록 -->
<%
	// application.getAttribute: 내장객체를 통해 msgs이름으로 저장된 ArrayList를 가지고
	// application : 어플리케이션(application)은 서버 자체가 종료되기 전까지 유지 
	// 장바구니는 application
	ArrayList<String> msgs = (ArrayList<String>)application.getAttribute("msgs");
	// msg가 null이 아닌 경우에만 목록 출력
	if(msgs !=null){
		for(String msg : msgs){
			out.println("<li>"+msg+"</li>");
		}
	}
%>
</ul>
</div>
</div>
</body>
</html>