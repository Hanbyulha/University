<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 개인 정보 입력 </title>
</head>
<body>
	Home > Person Information
	<hr>
	<form action="#" name="person_info" method="get">
		이름 : 
		<input type="text" name="p_name" size="10"><br><br>
		
		사원코드 : 
		<input type="text" name="e_code" size="10"><br><br>
		
		성별 : 
		<input type="radio" name="gender" value="남자">남
		<input type="radio" name="gender"value="여자" checked>여 <br><br>
		
		취미 :<br>
		<input type="checkbox" name="hobby1"value="운동" checked>운동<br>
		<input type="checkbox" name="hobby2"value="독서">독서<br>			 
		<input type="checkbox" name="hobby3"value="음악감상">음악감상 <br>
		<hr> &nbsp;
		
		<input type="submit" value=" 가입하기 "> &nbsp;&nbsp;
		<input type="reset" value=" 다시작성 ">
	</form>
</body>
</html>
