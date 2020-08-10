<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, java.text.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" http://www.w3.org/TR/html4/loose.dtd">
<% 
	// 한글 캐릭터셋 변환
	request.setCharacterEncoding("UTF-8"); 
	
	// form에서 전달된 msg값을 가지고 옴
	String msg=request.getParameter("msg");
	
	// user에 있는 값을 세션에 저장된 로그인 사용자 이름으로 계승
	Object username=session.getAttribute("user");
	
	// application에서 msgs로 저장된 ArrayList 생성
	ArrayList<String> msgs = (ArrayList<String>)application.getAttribute("msgs");
	
	// msgs가 null인 경우 새로운 Arraylist 객체 생성
	if(msgs==null){
		msgs = new ArrayList<String>();
		application.setAttribute("msgs", msgs);
	}
	
	// 사용자이름, 메세지, 날짜순서로 출력
	Date date= new Date();
	SimpleDateFormat f=new SimpleDateFormat("E MM dd HH:mm", Locale.KOREA);
	// msgs에 사용자 메세지를 형식(사용자이름, 메세지, 날짜)에 맞게 추가
	msgs.add((String)username+" :: "+msg+" , "+ f.format(date));
	
	// 톰켓 콘솔에 로그기록 로깅
	application.log(msg+" 추가됨");
	
	// 목록화면으로 Redirection
	response.sendRedirect("twitter_list.jsp");
	
%>


