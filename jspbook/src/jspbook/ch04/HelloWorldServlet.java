package jspbook.ch04;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/** 
 * File : HelloworldServlet.java
 * Desc: ���� ���� ����
 * @author : ȫ�浿 (aaa@naver.com)
 * 
 */
// ���� ���� �ֳ����̼� ����
@WebServlet(description = "Desc: ó�� ����� ����", urlPatterns = { "/HelloWorldServlet" })
public class HelloWorldServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	// �⺻ ������
    public HelloWorldServlet() {
       
    }
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// ������ Ÿ�� ���� �� �ѱ� ����
		response.setContentType("text/html;charset=UTF-8");
		// �� ������ ����� ���� printwriter ��ü Ȯ��
		PrintWriter out=response.getWriter();
		//HTML �������� ������ ��� ������ �ۼ�
		out.println("<HTML>");
		out.println("<HRAD><TITLE>Hello World Servlet</TITLE><HEAD>");
		out.println("<BODY><H2>Hello World Servlet : ��ο���</H2></BODY>");
		out.println("</HTML>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Post���� ó������ ������
		doGet(request, response);
	}

}
