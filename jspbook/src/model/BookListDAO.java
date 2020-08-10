package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

public class BookListDAO {
	
	String url= "jdbc:oracle:thin:@localhost:1521:orcl";
	String user= "madang";
	String pass= "madang";
	
	Connection con;
	PreparedStatement pstmt;
	ResultSet rs;
	
	public void getCon() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			con=DriverManager.getConnection(url,user,pass);
			
	} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	
	
	public Vector<BookDBBean>allSelectBook(){
		
		Vector<BookDBBean> v = new Vector<>();
		
		try {
			getCon();
			
			String sql = "select * from book";
			
			pstmt = con.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			while(rs.next()) {
				BookDBBean bean = new BookDBBean();
				bean.setBOOKID(rs.getString(1));
				bean.setBOOKNAME(rs.getString(2));
				bean.setPUBLISHER(rs.getString(3));
				bean.setPRICE(rs.getString(4));
				
				v.add(bean);
			}
				con.close();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
			return v;
	}
	public BookDBBean onetSelectBook(String BOOKID) {
		
		BookDBBean bean = new BookDBBean();
		
		try {
			getCon();
			String sql = "select * from book where BOOKID=?";
			pstmt = con.prepareStatement(sql);
			
			pstmt.setString(1, BOOKID);
			
			rs = pstmt.executeQuery();
			if(rs.next()) {
				bean.setBOOKID(rs.getString(1));
				bean.setBOOKNAME(rs.getString(2));
				bean.setPUBLISHER(rs.getString(3));
				bean.setPRICE(rs.getString(4));
			}
			con.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return bean;
	}
	
}
