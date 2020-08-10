package model;

public class LoginDBBean {

	private String userid;
	private String password;
	
	
	public boolean check() {
		if(userid.equals(userid) && password.equals(password)) {
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
