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
	//Main 값을 변경해 주기 위해서 request객체를 이용하여 center값으로 받아옴
	//String items = "";
	String center = request.getParameter("center");

	if(center==null){
		center="Center.jsp";
	}
	/*else{
		if(center.equals("1"))items="Hiking.jsp";
		else if(center.equals("2"))center="Car.jsp";
		else if(center.equals("3"))center="Travel.jsp";
		else if(center.equals("4"))center="Option.jsp";
	}*/
	
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
				<jsp:include page="<%=center %>"></jsp:include>
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