<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" http://www.w3.org/TR/html4/loose.dtd">

<% request.setCharacterEncoding("UTF-8"); %> <!-- 한글깨짐방지 -->
<%-- 페이지에 파라미터(폼입력 값)을 함꼐 전송함 즉 :  request.getParameter값을 받음 --%>
<jsp:forward page= "page_control_end.jsp">
	<jsp:param name= "tel" value="010-1234-5678"/>
	</jsp:forward>

