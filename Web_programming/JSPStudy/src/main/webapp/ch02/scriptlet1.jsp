<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>Scriptlet Example1</h1>
<%
	int n = 31;
	String msg = "Scriptlet Example";
%>
<%= n + " : " + msg %> <br>
</body>
</html>