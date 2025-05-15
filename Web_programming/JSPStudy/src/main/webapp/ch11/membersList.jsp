<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<% 
	String sql = "SELECT id, email, signuptime, passwd FROM members";

	String driverName="com.mysql.jdbc.Driver";
	String url = "jdbc:mysql://localhost:3306/odbo";
	String username = "root";
	String password = "607607";
	Connection conn = null;
	
	Class.forName(driverName);
	conn = DriverManager.getConnection(url, username, password);
	
	Statement sm = conn.createStatement();
	ResultSet rs = sm.executeQuery(sql);

	//String str = "";
	String id = "";
	String email = "";
	String signuptime = "";
	String passwd = "";
	int count = 1; 
	/*	while(rs.next()){
		str += count + " : " + rs.getString("id") + " / " + rs.getString("email")
			+ " / " + rs.getString("signuptime") + "<br>";
		count++;
	}
	out.print(str);*/
	out.print("Home > 회원가입 명단 <hr>");
%>
<table border=1><tr><td>No.</td><td>아이디</td><td>비밀번호</td><td>이메일</td><td>가입일자</td></tr>
<% while(rs.next()){%>
	<tr>
		<td><%=count%></td>
		<td><%=rs.getString("id")%>
		</td><td><%=rs.getString("passwd")%></td>
		<td><%=rs.getString("email")%></td>
		<td><%=rs.getString("signuptime")%></td>
	</tr>
<%
	/*out.println("<table border=1><tr><td>No.</td><td>아이디</td><td>비밀번호</td><td>이메일</td><td>가입일자</td></tr>");
	while(rs.next()){
		id = rs.getString("id");
		email = rs.getString("email");
		passwd = rs.getString("passwd");
		signuptime = rs.getString("signuptime");
		out.println("<tr><td>"+count+"</td><td>"+id+"</td><td>"+passwd+"</td><td>"+email+"</td><td>"+signuptime+"</td></tr>");*/
		count++;
	}
	rs.close();
	sm.close();
	conn.close();	
%>
