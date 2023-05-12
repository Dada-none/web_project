<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*, java.util.ArrayList, com.beans.dada_web_project.EmpVo" %>    
<%@ page import = "com.beans.dada_web_project.EmpDao" %>    
<%
	EmpDao empDao = new EmpDao();
	ArrayList<EmpVo> list = empDao.getList();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Emp 사원정보</h1>
	<table border = 1>
		<tr>
			<th>사원번호</th>
			<th>사원명</th>
			<th>부서번호</th>
		</tr>
		<% for(EmpVo empVo: list){ %>
		<tr>
			<td><%@ out.write(empVo.getEmpno()); %></td> <!-- 이건 너무 길어 + 출력값 이상한데? -->
			<%-- <td><%= empVo.getEmpno() %></td> --%>
			<td><%= empVo.getEname() %></td>
			<td><%= empVo.getDeptno() %></td>
		</tr>
		<% } %>
	</table>
</body>
</html>