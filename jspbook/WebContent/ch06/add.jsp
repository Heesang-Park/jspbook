<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %> <!-- 한글깨짐 방지 -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>add.jsp</title>
</head>
<body>
<% request.setCharacterEncoding("UTF-8");

	// selProduct.jsp에서 값을 받아옴
	String productname = request.getParameter("product");
	
	// 로그인 상태에서 장바구니에 담기 때문에 session으로 받아야 한다.
	// productname의 데이터를 추가할 ArrayList 객체 생성
	ArrayList<String> list = (ArrayList)session.getAttribute("productlist");
	
	if(list==null){
		list = new ArrayList<String>();
		session.setAttribute("productlist", list);
	}// list에 객체에 추가
	list.add(productname);
%>	
	
	<script>
		alert("<%= productname %>이(가) 추가 되었습니다!");
		history.go(-1);
	</script>
	

</body>
</html>