<%@page import="model.MemberDAO"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" http://www.w3.org/TR/html4/loose.dtd">

<html>
<body>
<%
	request.setCharacterEncoding("UTF-8"); // 한글처리
	
	// 취미 부분은 별도로 읽어들여 다시 빈 클래스에 저장해야 함
	String  [] hobby = request.getParameterValues("hobby");
	// 배열에 있는 내용을 하나의 스트림으로 저장
	String texthobby="";
	
	for(int i=0; i<hobby.length;i++){
		texthobby+= hobby[i]+" ";
	}
%>
	<!-- 객체이름은 mbean으로 자바빈 선언 -->
	<jsp:useBean id="mbean" class="model.MemberDBBean">
	<!-- 자바빈 설정 -->
		<jsp:setProperty property="*" name="mbean"/> <!-- 매핑시킴 -->
	</jsp:useBean>
	
<%
	// 기존 취미는 주소번지가 이미 저장되어 있으므로 배열의 내용을 하나의 스트림으로 저장한 변수
	mbean.setHobby(texthobby);
	
	/* String url="jdbc:oracle:thin:@localhost:1521:orcl";// 접속 url
	String user="system";
	String pass="12341234"; */
	
	MemberDAO mdao = new MemberDAO();
	mdao.insertMember(mbean); // DAO에서 드라이버 연결 쿼리 준비를 완료 했기에 바로 가능(insert into, update, delete)

	// 회원 가입이 되었다면 회원 정보를 보여주는 페이지로 이동시킴(넘김)
	response.sendRedirect("MemberList.jsp"); 
%>	
 접속 성공!
	<%-- <h2>당신의 아이디는  <%=mbean.getId() %></h2>
	<h2>당신의 관심분야는  <%=mbean.getFavorite() %></h2> --%>
	
</body>
</html>