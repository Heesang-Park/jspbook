<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" http://www.w3.org/TR/html4/loose.dtd">
<%-- 페이지에 파라미터 (폼 입력값)을 함께 전송안함 즉 : request.getParameter값을 못 받음 
페이지만 넘겨줌 --%>

<% request.setCharacterEncoding("UTF-8"); %> <!-- 한글깨짐 방지 -->
<% response.sendRedirect("page_control_end.jsp"); %>