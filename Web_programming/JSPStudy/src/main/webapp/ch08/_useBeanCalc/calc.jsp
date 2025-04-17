<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="calc" class="ch08.Calculator" />
<jsp:setProperty property="*" name="calc"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>useBean 액션 태그 - 계산기 결과</title>
</head>
<body>

<h2>>> 계산 결과</h2>
<hr>
<%= calc.getN1()+ calc.getOp() + calc.getN2()+"=" + calc.calc() %>
 = <%=calc.calc() %>
</body>
</html>
