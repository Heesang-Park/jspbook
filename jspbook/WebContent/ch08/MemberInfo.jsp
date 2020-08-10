<%@page import="java.net.URLEncoder"%>
<%@page import="model.MemberDBBean"%>
<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<%
	
	String id = request.getParameter("id");
	MemberDAO mdao = new MemberDAO();
	MemberDBBean bean = mdao.oneSelectMember(id);

%>
<center>
	<h1>회원 정보 상세보기</h1>
	<table width="400" border="1">
		<tr height="40">
			<td align = "center" width="150" bgcolor="powderblue">아이디</td>
			<td width="250" bgcolor="moccasin"><%=bean.getId() %></td>
		</tr>
		<tr height="40">
			<td align = "center" width="150" bgcolor="powderblue">이메일</td>
			<td width="250" bgcolor="moccasin"><%=bean.getEmail() %></td>
		</tr>
		<tr height="40">
			<td align = "center" width="150" bgcolor="powderblue">주소</td>
			<td width="250" bgcolor="moccasin"><%=bean.getAddress() %></td>
		</tr>
		<tr height="40">
			<td align = "center" width="150" bgcolor="powderblue">전화번호</td>
			<td width="250" bgcolor="moccasin"><%=bean.getPhone() %></td>
		</tr>
		<tr height="40">
			<td align = "center" width="150" bgcolor="powderblue">취미</td>
			<td width="250" bgcolor="moccasin"><%=bean.getHobby() %></td>
		</tr>
		<tr height="40">
			<td align = "center" width="150" bgcolor="powderblue">나이</td>
			<td width="250" bgcolor="moccasin"><%=bean.getAge() %></td>
		</tr>
		<tr height="40">
			<td align = "center" width="150" bgcolor="powderblue">직업</td>
			<td width="250" bgcolor="moccasin"><%=bean.getJob() %></td>
		</tr>
		<tr height="40">
			<td align = "center" width="150" bgcolor="powderblue">하고싶은 말</td>
			<td width="250" bgcolor="moccasin">
			<textarea rows="5" cols="30"><%=bean.getInfo() %></textarea>
			</td>
		</tr>
		<tr height="40"> <!-- 정보 수정, 삭제하는 버튼 만들기 -->
			<td align="center" colspan="2" bgcolor="skyblue">
			<input type="button" value="수정" onclick="location.href='MemberUpdate.jsp?id=<%=URLEncoder.encode(bean.getId(),"UTF-8")%>'"> 	
			<input type="button" value="삭제" onclick="location.href='MemberDelete.jsp?id=<%=URLEncoder.encode(bean.getId(),"UTF-8")%>'"> 	
			<input type="button" value="전체회원보기" onclick="location.href='MemberList.jsp'"> 	
			<input type="button" value="회원가입" onclick="location.href='MemberDB_form.jsp'">
			</td>
		</tr>	 	
</table>
</center>
</body>
</html>