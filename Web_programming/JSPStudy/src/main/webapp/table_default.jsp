<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title> 기본 테이블 생성하기 </title>
</head>
<body>
	<h3>rowspan</h3>
	<table border=1 width=200 heidht=300>
		<tr>
			<th rowspan=2>금강산</th> <td>설악산</td>
		</tr>
		<tr>
			<td>한라산</td>
		</tr>
	</table>
	
	<h3>colspan</h3>
	<table border=1 width=200 heidht=300>
		<tr>
			<th colspan=2>금강산</th>
		</tr>
		<tr>
			<td>치악산</td> <td>한라산</td>
		</tr>
	</table>

	<h3>2x2 테이블</h3>
	<table border=1 width=200 heidht=200>
		<tr>
			<td>금강산</td> <td>설악산</td>
		</tr>
		<tr>
			<td>치악산</td> <td>한라산</td>
		</tr>
	</table>
	<hr>
	<h3> 2행 2열의 기본 테이블 </h3>
	<hr>
	<table border="3" width=700 height=100>
		<tr>
			<th> 아이디 </th> <th> 비밀번호 </th>
		</tr>
		<tr>
			<td width=100> spacezone </td> <td> #123@456 </td>
		</tr>
	</table>
</body>
</html>
