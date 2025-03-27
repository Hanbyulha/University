<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>Expression Example1</h1>
<%
	String name[] = {"Java", "JSP", "Android", "Struts"};   //문자열 배열 선언
%>
<h3>3. jsp+html</h3>
<table border=1 width=200>
<%
	for(int i=0; i<name.length; i++){
		out.println("<tr><td align=center bgcolor=skyblue>"+(i+1)+"</td><td>"+name[i]+"</td></tr>");
	}
%>
</table>   
<hr>
<h3>2. html+jsp</h3>
<table border=1 width=200>
<%
	for(int i=0; i<name.length; i++){
%>
	<tr>
		<td align=center bgcolor=dddddd><%=i + 1 %></td>
		<td><%=name[i] %></td>
	</tr>
<%
	}
%>
</table>



<hr>
<h3>1. 원본</h3>
<table border=1 width=200>
<%
  for(int i=0; i<name.length; i++) {
%>
	<tr>
		<td><%=i %></td>
		<td><%=name[i] %></td>
	</tr>
<%
  }
%>
</table>
</body>
</html>
