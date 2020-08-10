package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.Vector;

// 오라클 데이터베이스에 연결하고 select, insert, delete, update 작업을 실행해주는 클래스
public class MemberDAO {
	// 오라클 접속 소스 작성
	String url ="jdbc:oracle:thin:@localhost:1521:orcl"; // 접속 url 
	String user = "system";
	String pass = "12341234";
	
	Connection con; // 데이터베이스 접근 
	PreparedStatement pstmt; // 쿼리를 실행시켜주는 객체
	ResultSet rs; // 쿼리에 대한 결과값을  리턴받아 자바에 저장하는 객체
	
	// 데이터베이스에 연결할 수 있도록 하는 메소드
	public void getCon() {
		try {// 1. 해당 데이터베이스의 드라이버 설정
				Class.forName("oracle.jdbc.driver.OracleDriver");
				
			 // 2. 해당 데이터베이스 접속	
				con=DriverManager.getConnection(url,user,pass);
				
		} catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	// [1]회원정보를 저장해주는 메소드
	public void insertMember(MemberDBBean mbean) {
		try{
		getCon(); // 접속 완료
		
			// 3. 접속 후 쿼리 준비
			String sql="insert into member values(?,?,?,?,?,?,?,?,?,?,?)";
					
			// 쿼리를 사용하도록 설정
			 pstmt = con.prepareStatement(sql);
			
			//?에 맞게 데이터 매핑
			pstmt.setString(1, mbean.getId());		
			pstmt.setString(2, mbean.getPass1());		
			pstmt.setString(3, mbean.getPass2());		
			pstmt.setString(4, mbean.getEmail());		
			pstmt.setString(5, mbean.getGender());		
			pstmt.setString(6, mbean.getAddress());		
			pstmt.setString(7, mbean.getPhone());		
			pstmt.setString(8, mbean.getHobby());		
			pstmt.setString(9, mbean.getJob());		
			pstmt.setString(10, mbean.getAge());		
			pstmt.setString(11, mbean.getInfo());		
			
			// 4. 오라클에서 쿼리를 실행
			pstmt.executeUpdate();
			
			// 5. 자원 반납
			con.close(); //연결종료
		}catch(Exception e){
			e.printStackTrace();
		}
	}
		// ---------------------------------------------
		// [2] 모든 사용자들을 검색하는 메소드 구현
		public Vector<MemberDBBean>	allSelectMember(){
			
			// Vector 객체
			Vector<MemberDBBean> v =  new Vector<>();
			
			try { 
				// 커넥션 연결
				getCon();
				// 쿼리 준비
				String sql = "select * from member";
				// 쿼리 사용 설정
				pstmt = con.prepareStatement(sql);
				// 쿼리 결과 실행
				rs = pstmt.executeQuery();
				while(rs.next()) { // 
					MemberDBBean bean = new MemberDBBean();
					bean.setId(rs.getString(1));
					bean.setPass1(rs.getString(2));
					bean.setPass2(rs.getString(3));
					bean.setEmail(rs.getString(4));
					bean.setGender(rs.getString(5));
					bean.setAddress(rs.getString(6));
					bean.setPhone(rs.getString(7));
					bean.setHobby(rs.getString(8));
					bean.setJob(rs.getString(9));
					bean.setAge(rs.getString(10));
					bean.setInfo(rs.getString(11));
					
					// 박스에 저장 즉, 벡터에 저장
					v.add(bean);
				}
					// 자원반납
					con.close();
				
				
			} catch (Exception e) {
				e.printStackTrace();
			}
			return v;
	}
	//-------------------------------------------------------]
	// [3] 한 사람에 대해 리턴하는 메소드 구현
	public MemberDBBean oneSelectMember(String id) {
		
		MemberDBBean bean = new MemberDBBean();
		
		try {
			getCon();
			String sql = "select * from member where id=?";
			pstmt = con.prepareStatement(sql);
			// ?매핑
			pstmt.setString(1, id);
			// 쿼리 실행
			rs = pstmt.executeQuery();
			if(rs.next()) {
				// MemberDBBean에 데이터를 저장
				bean.setId(rs.getString(1));
				bean.setPass1(rs.getString(2));
				bean.setPass2(rs.getString(3));
				bean.setEmail(rs.getString(4));
				bean.setGender(rs.getString(5));
				bean.setAddress(rs.getString(6));
				bean.setPhone(rs.getString(7));
				bean.setHobby(rs.getString(8));
				bean.setJob(rs.getString(9));
				bean.setAge(rs.getString(10));
				bean.setInfo(rs.getString(11));
			}
			con.close();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return bean;
	}
	//--------------------------------------------------
	// [4] 한 사람에 대한 회원정보 수정
	public String getPass(String id) {
		String pass="";
		
		try {
			getCon();
			String sql = "select pass1 from member where id=?";
			pstmt=con.prepareStatement(sql);
			// ?매핑
			pstmt.setString(1, id);
			// 쿼리실행
			rs= pstmt.executeQuery();
			// 비번체크
			if(rs.next()) {
				pass=rs.getString(1); // 패스워드 값이 저장된 컬럼인덱스
			}
			con.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		// 결과 리턴
		return pass;
	}
	//-------------------------------------------------------
	// [5] 수정한 회원 정보 업데이트
	public void updateMember(MemberDBBean bean) {
		
		getCon();
		
		try {
			String sql = "update member set  phone=?, email=?  where id=?";
			pstmt = con.prepareStatement(sql);
			// 해당하는 값을 대입
			pstmt.setString(1, bean.getPhone());
			pstmt.setString(2, bean.getEmail());
			pstmt.setString(3, bean.getId());
			// 실행
			pstmt.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	//----------------------------------------------------
	//[6] 회원 삭제
	public void deleteMember(String id) {
		getCon();
		
		try {
			String sql = "delete from member where id=?";
			pstmt=con.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.executeUpdate();
			con.close();
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
		
}
