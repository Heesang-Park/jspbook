<%@page import="model.BookDBBean"%>
<%@page import="model.BookListDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<%
	String BOOKID = request.getParameter("BOOKID");	
	BookListDAO bdao = new BookListDAO();
	BookDBBean bean = bdao.onetSelectBook(BOOKID);

%>
<center>
<h1>책 정보 상세보기</h1>
	<table width="400" border="1">
		<tr height="40">
			<td align = "center" width="150" bgcolor="powderblue">책 번호</td>
			<td width="250" bgcolor="moccasin"><%=bean.getBOOKID() %></td>
		</tr>
		<tr height="40">
			<td align = "center" width="150" bgcolor="powderblue">책이름</td>
			<td width="250" bgcolor="moccasin"><%=bean.getBOOKNAME() %></td>
		</tr>
		<tr height="40">
			<td align = "center" width="150" bgcolor="powderblue">출판사</td>
			<td width="250" bgcolor="moccasin"><%=bean.getPUBLISHER() %></td>
		</tr>
		<tr height="40">
			<td align = "center" width="150" bgcolor="powderblue">가격</td>
			<td width="250" bgcolor="moccasin"><%=bean.getPRICE() %></td>
		</tr>
		
		<tr height="40">
		<td align="right" colspan="2" bgcolor="skyblue">
		<input type="button" value="목록보기" onclick="location.href='Booklist.jsp'"> 
		</td>
		</tr>

</table>
</center>
</body>
</html>