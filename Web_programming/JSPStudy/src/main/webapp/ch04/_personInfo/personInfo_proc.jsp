<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	Home > Person Information
	<hr>
<%
request.setCharacterEncoding("utf-8");

String p_name = request.getParameter("p_name");
String e_code = request.getParameter("e_code");
String gender = request.getParameter("gender");
String[] hob = request.getParameterValues("hobby");

%>

	<table border=1 width=350>
		<tr>
				<th>이름(성별)</th>
				<th>사원코드</th>
				<th>취미</th>		
		</tr>
		<tr align=center>
				<td><%=p_name + "(" + gender +")" %></td>
				<td><%=e_code %></td>
				<td><%if(hob != null)
				{
					for(int count = 0; count < hob.length; count++)
					{
						out.println(hob[count]);
						if(count+1 < hob.length){
							out.println(",&nbsp;");
						}
					}
				}
				else{
					out.println("없음");
				}%></td>	
		</tr>
	</table>	

</body>
</html>
