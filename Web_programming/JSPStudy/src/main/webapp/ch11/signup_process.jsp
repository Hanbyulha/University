<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% 
	String u_id = request.getParameter("userID");
	String u_pw = request.getParameter("userPW");
	String u_mail = request.getParameter("userMAIL");
	
	String sql = "INSERT INTO members(id, passwd, email) VALUES(?,?,?)";
	//sql += "('" + u_id + "','" + u_pw + "','" + u_mail + "')";
	
	String driverName="com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/odbo";
	String username = "root";
	String password = "607607";
	Connection conn = null;
	
	Class.forName(driverName);
	conn = DriverManager.getConnection(url, username, password);
	//Statement sm = conn.createStatement();
	PreparedStatement ps = conn.prepareStatement(sql);
	ps.setString(1, u_id);
	ps.setString(2, u_pw);
	ps.setString(3, u_mail);
	//int count = sm.executeUpdate(sql);
	int count = ps.executeUpdate();
	if(count == 1){
		out.println("회원가입 성공!");
	}else{
		out.println("회원가입 실패!");
	}
	ps.close();
	//sm.close();
	conn.close();	
%>
