<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %> <!-- 한글깨짐 방지 -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Top</title>
</head>
<body>
<%
	// 로그아웃 클릭시 파라미터를 통해서 로그아웃 판단
	String logout = request.getParameter("logout");
	
	if(logout != null){// 로그인 되어있는 상태
		// id에 null 값을 부여해야 로그아웃 상태가 됨
		session.setAttribute("id", null);
		// 세션 유지시간을 kill
		session.setMaxInactiveInterval(0); // 시간(0) 제한 없이 사용가능
	}
		
	// 세션을 통하여 id를 읽어드림
	String id= (String)session.getAttribute("id");
	// 로그인이 되지 않은 상태에서는 sessiong 값을 null 처리
	if(id==null){
		id="Join";
	}

%>


<center>
<table width="1200" border="0">
	<tr height="100">
		<!-- 로고 이미지 -->
		<td colspan="2" align="center" width="260">
		<a href="SessionMain.jsp">
		<img alt="" src="C:/Users/soldesk/Desktop/workspace/jspbook/WebContent/img/캠핑로고.jpg" width="200" height="70"></a>
		
		</td>
		<td align="center" colspan="4"> <font size="10" color="orange">My Own Spring Camp</font>
		</td>
	</tr>
	<tr height="50">
		<td width="130" align="center">
			<a href="IncludeTest.jsp?camping=1" style="text-decoration: none">Tent</a>
			
		</td>
		<td width="130" align="center">
			<a href="IncludeTest.jsp?camping=2" style="text-decoration: none">Chair</a>
		</td>
		<td width="130" align="center">
			<a href="IncludeTest.jsp?camping=3" style="text-decoration: none">Dishware</a>
		</td>
		<td width="130" align="center">
			<a href="IncludeTest.jsp?camping=4" style="text-decoration: none">Sleeping</a>
		</td>
		<td width="130" align="center">
			<a href="IncludeTest.jsp?camping=5" style="text-decoration: none">Lantern</a>
		</td>
		<td width="130" align="center">
			<a href="IncludeTest.jsp?camping=6" style="text-decoration: none">Table</a>
		</td>
		<td width="130" align="center">
		<%
		if(id.equals("Join")){
		%>	
		<%=id %> <button onclick="location.href='SessionMain.jsp?center=SessionLoginForm.jsp'">로그인</button>	
		<%}else{ %>
		<%=id %> <button onclick="location.href='SessionMain.jsp?logout=1'">로그아웃</button>	
		<% }%>	
		
		</td>
	</tr>	
</table>
</center>
</body>
</html>