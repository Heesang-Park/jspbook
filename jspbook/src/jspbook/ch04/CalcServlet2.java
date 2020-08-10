package jspbook.ch04;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * File : CalcServlet.java
 * Desc : 계산기 서블릿
 * @author : 홍길동(aaa@naver.com) 
 */
@WebServlet(description = "desc: 서블릿 계산기", urlPatterns = { "/CalcServlet2" })
public class CalcServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	// Get 요청을 처리하기 위한 메서드
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// doPost로 포워딩
		doPost(request, response);
	}

	// POST 요청을 처리하기 위한 메서드
	// doGet()에서도 호출하고 있기 때문에 모든 요청은 doPost()에서 처리되는 구조이다.
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 변수 선언
		int num1, num2;
		int result;
		String op;
		
		// 클라이언트 응답시 전달 될 컨텐츠에 대한 타입과 인코딩 선언
		// application/msword으로 쓰면 워드로 나온다
		response.setContentType("text/html; charset=UTF-8");
		
		//클라이언트 응답을 위한 출력 스트림 확보<%= %>의 대체 클래스
		PrintWriter out=response.getWriter();
		
		//HTML 폼을 통해서 전달됨 num1, num2 파라미터 값을 변수에 할당
		//getParameter() 메서드는 문자열 리턴이므로 Integer로 변환()
		num1=Integer.parseInt(request.getParameter("num1")); // 이름을 정확히 맞춘다
		num2=Integer.parseInt(request.getParameter("num2"));
		op=request.getParameter("operator");
		//calc() 메서드 호출로 결과값을 도출하여 result에 저장
		Calc calc=new Calc(num1,num2,op);
		result=calc.getResult();
		// 출력 스트림을 생성
		out.println("<HTML>");
		out.println("<HEAD><TITLE>계산기</TITLE></HEAD>");
		out.println("<body><center>");
		out.println("<H2>계산결과2</H2>");
		out.println("<HR>");
		out.println(num1+" "+op+" "+num2+"= "+result);
		out.println("</BODY></HTML>");
		
	}

}
