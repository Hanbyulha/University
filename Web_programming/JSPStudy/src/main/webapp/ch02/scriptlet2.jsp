<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Date" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3>표현문1</h3>
<%
	String name1 = "KOREA";
	out.println("1. 이름은 <br><font color=blue>"+ name1 + "</font>입니다."+"<br>");
%>

<%
	String name2 ="KOREA";
%>
<br>2. 이름은 <font color=red><%=name2 %></font>입니다. 

<hr>
<h1>Scriptlet Example2</h1>
<%
	float f = 2.3f;
	int i = Math.round(f);
	Date date = new Date();
	//java.util.Date date = new java.util.Date();
%>
실수 f의 반올림값은? <%= i %> <br>
현재의 날짜와 시간은? <%= date.toLocaleString() %>
</body>
</html>
