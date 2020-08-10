<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %> <!-- 한글깨짐 방지 -->
<html>
<head>
<meta charset="UTF-8">
<title>Responese 로그인</title>
</head>
<body>
	<%
	//고정 id/password값 부여
	String dbid="system";
	String dbpass="system";
	// request객체에 저장되어 있는 id/password 값을 읽어옴
	String id=request.getParameter("id");
	String pass=request.getParameter("password");
	// 두개의 아이디를 비교하는 소스를 작성
	if(dbid.equals(id) && dbpass.equals(pass)){
		session.setAttribute("id", id);
		response.sendRedirect("ResponseLogin.jsp");
		// Get방식
		//response.sendRedirect("ResponseLogin.jsp?id="+id);
	}else{
	%>
	<script type="text/javascript">
	alert("등록되지 않은 아이디입니다.");
	// 전 단계로 이동
	 history.go(-1);		
	</script>
	<%
	}
	%>
	
	되돌아 오기!!
	
	
</body>
</html>