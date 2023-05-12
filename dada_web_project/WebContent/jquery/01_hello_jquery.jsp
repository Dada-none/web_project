<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<!-- jquery 문법 실행 전에(위에) 첫번째로 호출되어야 함 -->
	<script src = "http://localhost:9000/dada_web_project/jquery/jquery-3.6.4.min.js"></script>
	<!-- <script src = "https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script> -->
	<script>
		/*
			형식 : $(선택자).메소드(); 
		*/
		$("document").ready(function(){ //window.onload 함수와 동일한 기능 수행 + document는 최상위 객체이기 때문에 쌍따옴표 필요X
			alert("hello~jquery~~~");
		}); 
	</script>
</head>
<body>

</body>
</html>