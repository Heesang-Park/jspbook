package jspbook.ch07;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class LoginBean  {
	// ����ڷκ��� �Է¹��� ���̵�� ���
	private String userid;
	private String password;
	
	// DB�� ���� ������ ���̵�� ���
	final String _userid="myuser";
	final String _password="1234";
	
	//�α��� ���� ������ BD�� ��ġ�ϴ��� ���� �Ǵ�
	public boolean checkUser() {
		if(userid.equals(_userid) && password.equals(_password)) {
			return true;
		}else
			return false;
	}
	
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
}	
	
