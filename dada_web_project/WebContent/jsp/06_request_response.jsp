<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Login form</h1>
	<form name = "loginForm" action = "06_loginCheck.jsp" method="post"> 
	<!-- method="get"방식 -> query string 방식 : 패킷의 헤더(url)에 붙어서 넘어가 -> http:~~/06_request_response.jsp?id=test&pass=1234# -->
	<!-- method="post"방식 -> 패킷의 바디에 붙어서 넘어가 -> http://localhost:9000/dada_web_project/jsp/06_loginCheck.jsp -->
		<ul>
			<li>
				<label>아이디</label>
				<input type="text" name="id">
			</li>
			<li>
				<label>패스워드</label>
				<input type="password" name="pass">
			</li>
			<li>
				<button type="submit">Login</button>
				<button type="reset">Cancel</button>
			</li>
		</ul>
	</form>
</body>
</html>