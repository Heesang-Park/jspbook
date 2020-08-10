<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" http://www.w3.org/TR/html4/loose.dtd">
<% request.setCharacterEncoding("UTF-8"); %> <!-- 한글깨짐 방지 -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body style="background-color:#f0f5f3">>
 <center>
 <h1> 회원가입</h1>
<table boder = "" >
 	<FORM>
 	 <tr>

 	  <td text-align="center">아이디 </td>
 	  	<td>
   		<input type = "text" />
   		<input type = "button" value = "중복확인"/>
   		</td>
  	</tr>

  <tr>
   <td> 비밀번호 </td>
   <td> <input type = "password"/> </td>
  </tr>


  <tr>
   <td> 비밀번호 확인 </td>
   <td> <input type = "password"/>&nbsp;*비밀번호를 다시입력하여주세요. </td>
  </tr>

  <tr>
   <td> 성명 </td>
   <td> <input type = "text"/> </td>
  </tr>


  <tr>
   <td> 성별 </td>
   <td>
    <input type = "radio" name = "gender"/ checked> 남자
    <input type = "radio" name = "gender"/> 여자
   </td>
  </tr>

  <tr>
   <td> 이메일 </td>
   <td>
    <input type = "text"/> @ <input type = "text"/> &nbsp;&nbsp;
    <select>
     <option> 직접입력 </option>
     <option> naver.com </option>
     <option> daum.net </option>
     <option> nate.com </option>
    </select>
   </td>
  </tr>




  <tr>
   <td> 주소 </td>
   <td>
    <input type = "text"/>
    <input type = "button" value = "주소찾기"/>
   </td>
  </tr>
  <tr>
   <td> 상세주소 </td>
   <td>
    <input type = "text"/>
   </td>
  </tr>



  <tr>
   <td> 휴대폰 </td>
   <td>
    <input type = "radio" name = "phone"/> SKT
    <input type = "radio" name = "phone"/> KTF
    <input type = "radio" name = "phone"/> LGU+
   <br/>
    <select>
     <option> 010 </option>
     <option> 011 </option>
     <option> 016 </option>
     <option> 018 </option>
    </select>
    <input type = "text" size = "6"/> - <input type = "text" size = "6"/>
   </td>
  </tr>

  <tr>
   <td> 자기소개  </td>
   <td>
    <textarea cols = "60" rows = "10"></textarea>
   </td>
  </tr>
 </FORM>
</table>

<br/>


<input type = "submit" value = "가입하기"/>
<input type = "reset" value = "다시 입력"/>


</center>
</body>
</html>
