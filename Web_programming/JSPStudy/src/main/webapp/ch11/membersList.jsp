<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% 
	String sql = "SELECT id, email, signuptime FROM members";

	String driverName="com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/odbo";
	String username = "root";
	String password = "123456";
	Connection conn = null;
	
	Class.forName(driverName);
	conn = DriverManager.getConnection(url, username, password);
	
	Statement sm = conn.createStatement();
	ResultSet rs = sm.executeQuery(sql);
	
	String str = "";
	int count = 1;
	
	while(rs.next()){
		str += count + " : " + rs.getString("id") + " / " + rs.getString("email")
			+ " / " + rs.getString("signuptime") + "<br>";
		count++;
	}
	out.print("Home > 회원가입 명단 <hr>");
	out.print(str);
	
	rs.close();
	sm.close();
	conn.close();	
%>