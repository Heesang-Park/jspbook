<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="EUC-KR">
<title>구구단 Table</title>
</head>
<body>
<center>
<table width="700" height="400" border="1">
	<%
	for(int j=1;j<10;j++){
		int i=8;
		int m=1;
		%><tr>
		<%
		 for(int s=1;s<10;s++){
		%><td>
		<%=m %> * <%=j %> = <%=m*j %></td>
		<%
		if(s%2!=0){
			m=m+i;
			i--;
		}else{
			m=m-i;
			i--;
		}
	 }
	}
%> </tr>	 		 		
	
</table>
</center>

</body>
</html>