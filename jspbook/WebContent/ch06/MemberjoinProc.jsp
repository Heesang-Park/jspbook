<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 Join</title>
</head>
<body>
<center>
<h2>회원가입</h2>
<%
	//post 방식 한글 깨짐 방지
	request.setCharacterEncoding("utf-8");
	// 각종 사용자로 부터 데이터를 저장해줌
	String id=request.getParameter("id");
	String pass1=request.getParameter("pass1");
	String pass2=request.getParameter("pass2");
	String email=request.getParameter("email");
	
	String gender=request.getParameter("gender");
	String address=request.getParameter("address");
	String phone=request.getParameter("phone");
	
	// [] 타입으로 리턴
	String[] favorite=request.getParameterValues("favorite");
	
	String job=request.getParameter("job");
	String age=request.getParameter("age");
	String info=request.getParameter("info");
	
	if(!pass1.equals(pass2)){
	
%>
	<script type="text/javascript">
			alert("비밀번호가 일치하지 않습니다."); //경고창
		history.go(-1); // 이전페이지로 이동	
	</script>
<%
	}
%>	
	<table border=1 cellspacing="1" cellpadding="10" width="400">
		<tr height="40">
			<td width="150" align="center">아이디</td>
			<td width="150" align="center"> <%=id %></td>
		</tr>
		<tr height="40">
			<td width="150" align="center">비밀번호</td>
			<td width="150" align="center"> <%=pass1 %></td>
		</tr>
		<tr height="40">
			<td width="150" align="center">비밀번호 확인</td>
			<td width="150" align="center"><%=pass2 %></td>
		</tr>
		<tr height="40">
			<td width="150" align="center">이메일</td>
			<td width="150" align="center"> <%=email %></td>
		</tr>
		<tr height="40">
			<td width="150" align="center">성별</td>
			<td width="150" align="center"> <%=gender %></td>
		</tr>
		<tr height="40">
			<td width="150" align="center">주소</td>
			<td width="150" align="center"> <%=address %></td>
		</tr>
		<tr height="40">
			<td width="150" align="center">전화번호</td>
			<td width="150" align="center"> <%=phone %></td>
		</tr>
		<tr height="40">
			<td width="150" align="center">당신의 관심분야는</td>
			<td width="150" align="center">
			<%
				for(String h:favorite){
					out.println(h+" ");
				}
			%>
			</td>
		</tr>
		<tr height="40">
			<td width="150" align="center">연령</td>
			<td width="150" align="center"> <%=age %></td>
		</tr>
		<tr height="40">
			<td width="150" align="center">하고싶은 말</td>
			<td width="150" align="center"> <%=info %></td>
		</tr>
</table>
</center>
</body>
</html>