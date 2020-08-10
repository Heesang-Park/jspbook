<%@page import="model.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<%request.setCharacterEncoding("UTF-8"); %>

 <jsp:useBean id="mbean" class="model.MemberDBBean">
 <jsp:setProperty property="*" name="mbean"/>
 </jsp:useBean>
 <%
 	MemberDAO mdao = new MemberDAO();
 	
 	String pass = mdao.getPass(mbean.getId()); //pass값을 리턴
 	
 	// 수정하기 위해서 작성한 패스워드 값과 기존 데이터 베이스에서 가져온 값(pass)을 비교
 	if(mbean.getPass1().equals(pass)){
 		mdao.updateMember(mbean);
 		response.sendRedirect("MemberList.jsp");
 	}else{
%> 		
 	<script type="text/javascript">
 	alert("패스워드가 일치하지 않습니다.")
 	history.go(-1);
 	</script>
 <% 		
 	}
 %>


</body>
</html>