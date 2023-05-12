<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%-- 로그인 처리 --%>
<% 
	//did, dpass
	String did = "test";
	String dpass = "1234";
	
	String id = request.getParameter("id");
	String pass = request.getParameter("pass"); //값을 제대로 못 찾으면 null값 들어감

	String loginResult = "";
	if(did.equals(id) && dpass.equals(pass)){
		//loginResult = "성공"; 
		//06_loginSuccess.jsp 이동
		response.sendRedirect("06_loginSuccess.jsp");
	}
	else{
		//loginResult = "실패"; 
		//06_loginFail.jsp 이동
		response.sendRedirect("06_loginFail.jsp");
	}
%>

<!-- 위에서 실행되던 코드를 끊고 response.sendRedirect(url)로 보내 버리니 아래의 코드가 실행되지 않겠지 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>로그인 결과 - <%=loginResult %></h1>
	<h3>아이디 : <%=id %></h3>
	<h3>패스워드 : <%=pass %></h3>
</body>
</html>