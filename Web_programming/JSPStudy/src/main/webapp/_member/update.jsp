<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="style.css">
	<title> 회원 수정 </title>
</head>
<body>
<ul>
	<li><a href="main.jsp">홈</a></li>
	<li><a href="signup.jsp">회원가입</a></li>
	<li><a href="membersList.jsp">회원목록보기</a></li>
	<li><a href="update.jsp">회원수정</a></li>
	<li><a href="withdraw.jsp">회원탈퇴</a></li>	
</ul>
<div style="position:absolute; left:55px; top:100px;">
	Home > Update the Membership
	<hr>
	<form action="update_process.jsp" name="user_info" method="post">
		<fieldset style="width:200px">
			<legend> 회원 수정 </legend><p>
	
			아이디 : <br>
			<input type="text" name="userID"><br>
			
		<div align="center">
			<input type="submit" value=" 회원정보 불러오기 "> &nbsp;&nbsp;
		</div><br>
		</fieldset>
	</form>
</div>	
</body>
</html>