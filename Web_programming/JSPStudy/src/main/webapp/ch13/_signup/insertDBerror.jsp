<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러 페이지</title>
</head>
<body>
<h3>>> 회원 가입에 실패하였습니다.</h3>
다음과 같은 예외가 발생하였습니다.<br>
<%= exception.getMessage() %> <p>

	<table border="0">
		<tr>
			<td>	
				<form action="main.jsp" method="post" >
					<input type="submit" value="◀ 메인 화면으로 이동" >
				</form>
			</td>
			<td>	
				<form action="signup.jsp" method="post" >
					<input type="submit" value="다시 사용자 접속하기 ▶" >
				</form>
			</td>
		</tr>	
	</table>
</body>
</html>