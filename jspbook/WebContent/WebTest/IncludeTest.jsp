<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %> <!-- 한글깨짐 방지 -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	// 처음 IncludeTest를 실행하면 camping이라는 파라미터 값이 넘어오지 않기 때문에 null처리
	String campur1="";
	String camping=request.getParameter("camping");
	
	
	
	if(camping==null){
		campur1="Choan_camping.jsp";
	}else{
		if(camping.equals("1"))campur1="Choan_camping.jsp";
		else if(camping.equals("2"))campur1="CampingInTherCity.jsp";
		else if(camping.equals("3"))campur1="Center.jsp";
		else if(camping.equals("4"))campur1="CampingInTherCity.jsp";
		else if(camping.equals("5"))campur1="Choan_camping.jsp";
		else if(camping.equals("6"))campur1="Center.jsp";
		else if(camping.equals("7"))campur1="SignUp.jsp";
	}
	
	%>
<center>
	<table width="1200" border="1">
		<!-- Top 부분-->
		<tr height="100">
			<td align="center" colspan="2">
				<jsp:include page="Top.jsp"></jsp:include>
				
			</td>
		</tr>	
		
		<!-- Left 부분-->
		<% %>
		<tr height="500">
			<td align="center" width="250">
				<jsp:include page="Left.jsp"></jsp:include>
			</td>
			
		<!-- Center 부분-->
			<td align="center" width="900">
				<jsp:include page="<%=campur1 %>"></jsp:include>
			</td>
		</tr>	
			
		<!-- Bottom 부분-->
		<tr height="100">
			<td align="center" colspan="2">
				<jsp:include page="Bottom.jsp"></jsp:include>
			</td>
		</tr>		
			
	</table>
</center>
</body>
</html>