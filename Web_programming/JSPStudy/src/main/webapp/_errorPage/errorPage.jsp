<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    errorPage="error.jsp"%>
<!DOCTYPE html>    
<html>
<head>
<meta charset="UTF-8">
<title>산술연산</title>
</head>
<body>
<h1>디렉티브 errorPage, isErrorPage 속성</h1>
one과 zero의 사칙연산<p/>
one+zero=<%=1 + 0%><p/>
one-zero=<%=1 - 0%><p/>
one*zero=<%=1 * 0%><p/>
one/zero=<%=1 / 0%><p/>
<!-- 아래와 같이 0이 아닌 다른 숫자로 나눌 시 오류안남 -->
<!-- one/one=<%=1 / 1%><p/> -->
</body>
</html>
