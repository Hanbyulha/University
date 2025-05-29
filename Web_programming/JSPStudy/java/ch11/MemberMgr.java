package ch11;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;

public class MemberMgr {
	String driverName = "com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/odbo";
	String username = "root";
	String password = "607607";
	Connection conn = null;
	Statement sm = null;
	ResultSet rs = null;

	public MemberMgr() {
		try {
			Class.forName(driverName);
		}catch(Exception e) {
			System.out.println("Error : JDBC 드라이버 로딩 실패");
		}
	}
	

	//회원가입 명단(useBean) 출력
	public Vector<MemberBean> getMembersList(){
		Vector<MemberBean> vectorList = new Vector<MemberBean>();

		try {
			conn = DriverManager.getConnection(url, username, password);
			String sql = "select id, email, signuptime from members";
			sm = conn.createStatement();
			rs = sm.executeQuery(sql);
			
			while(rs.next()) {
				MemberBean bean = new MemberBean();
				bean.setId(rs.getString("id"));
				bean.setEmail(rs.getString("email"));
				bean.setSignuptime(rs.getString("signuptime"));
				vectorList.addElement(bean);
			}
		}catch(Exception e) {
			System.out.println("Exception" + e);
		}finally {
			try {
				rs.close();
			} catch (SQLException e) {	}
			try {
				sm.close();
			} catch (SQLException e) {	}
			try {
				conn.close();
			} catch (SQLException e) {	}
		}
		return vectorList;
	}
}
