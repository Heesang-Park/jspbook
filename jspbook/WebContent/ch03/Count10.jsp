<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h2> 1-10������ ���ڸ� ȭ�鿡 ǥ��</h2>
<!-- ��ũ��Ʈ�� -->
<%
// ����
// 1-10������ ���ڸ� ȭ�鿡 ��� 
for(int i=0;i<=10;i++){
	//System.out.println(i); �ֿܼ� ���
%>
<!-- ǥ����(���) -->
<%= i %><br>	
<!-- ��ũ��Ʈ�� -->
<%
}
%>
</body>
</html>