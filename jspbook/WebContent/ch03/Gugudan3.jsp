<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<center>
	<table width="600" border="1">
		<tr height="100" bgcolor="green">
		<td colspan="8" align="center"><b><font size="8">GUGUDAN</font></b></td>
		<%
		for(int i=1;i<10;i++){
			int a=9;
		%>
		<tr height="40">
		<%
		for(int j=2;j<=5;j++){					
		%>
		<td width="300" align="center" bgcolor="#5CD1E5"><b>
		<%=a+"*"+i+"="+i*a+" " %></b>
		</td>
		<td width="300" align="center" bgcolor="#5CD1E5"><b>
		<% if(j==6){
			break;}%>
		<%=j+"*"+i+"="+(i*j)%></b>
		</td>
		<%a--;}
		%>
		</tr>
		<%
		}%>
	
	
	
	
	</table>
</center>

</body>
</html>