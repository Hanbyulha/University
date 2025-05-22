<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.*, ch11.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원정보출력__자바빈즈</title>
</head>
<body>

<jsp:useBean id="mMgr" class="ch11.MemberMgr"/>

Home > 회원가입 명단(useBean)<hr>
<table width="500" border=1 style="border-collapse: collapse;">
	<tr>
	<th>NO</th><th>ID</th><th>PASSWD</th><th>EMAIL</th><th>SIGNUPTIME</th>
	</tr>
	<%
		Vector<MemberBean> vlist = mMgr.getMembersList();
		for ( int i = 0; i < vlist.size(); i++ ){
			MemberBean mBean = vlist.get(i);
	%>
		<tr align=center>
		<td><%=(i+1) %></td>
		<td><%=mBean.getId() %></td>
		<td><%=mBean.getPasswd() %></td>
		<td><%=mBean.getEmail() %></td>
		<td><%=mBean.getSignuptime() %></td></tr>
	<%
		}
	%>
</table>
</body>
</html>