<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" http://www.w3.org/TR/html4/loose.dtd">
<html>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	
	// 체크박스 기능 확인
	//out.write("아이디저장: "+ request.getParameter("save"));
	
	// 체크박스 값을 저장하기
	String save = request.getParameter("save");
	
	// 아이디 저장하기
	String id = request.getParameter("id");
	
	// 체크박스가 체크가 되면 == 쿠키에 아이디를 저장
	if(save !=null){// 체크박스에 체크가 되었다면
		// 내장객체가 아니므로 쿠키객체를 생성
		Cookie cookie = new Cookie("id" ,id); // 기본이 Key, value 값이다
		// 쿠키유효시간
		cookie.setMaxAge(60*10); // 10분
		// 클라이언트 쪽에서 서버에 넘겨줌
		response.addCookie(cookie);
	}
	out.write("쿠키 생성 완료!");
	
%>
<%=id %>님 반갑습니다!!!


</body>
</html>