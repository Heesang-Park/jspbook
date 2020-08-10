<%@page import="java.net.URLEncoder"%>
<%@page import="java.util.Vector"%>
<%@page import="model.BookListDAO"%>
<%@page import="model.BookDBBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BOOKLIST</title>
</head>
<body>
	<center>
	<h2>Booklist</h2>
	<%
		BookListDAO bdao = new BookListDAO();
		Vector<BookDBBean> v = bdao.allSelectBook();
	%>
	
	
	
		<table border="1" width="600">
			<tr height="40">
				<td width="120" align="center">BOOKID</td>		
				<td width="120" align="center">BOOKNAME</td>		
				<td width="120" align="center" >PUBLISHER</td>		
				<td width="120" align="center" >PRICE</td>		
			</tr>
			<%
			for(int i=0; i<v.size(); i++ ){
				BookDBBean bean = v.get(i);
			
			%>
			
	<tr height="40">
		<%-- <td width="120" align="center"><%=bean.getId() %></td> --%>
		<!-- id를 누르면 상세페이지로 넘어가는 것-->
		<td width="120" align="center">
		<a href="BookInfo.jsp?BOOKID=<%=bean.getBOOKID()%> "><%=bean.getBOOKID()%> </a></td>
		<td width="120" align="center"><%=bean.getBOOKNAME() %> </td>
		<td width="120" align="center"><%=bean.getPUBLISHER() %></td>
		<td width="120" align="center"><%=bean.getPRICE() %> </td>
		
	</tr>
	<%
		}
	%>		
		</table>
	</center>
</body>
</html>