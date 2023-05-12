<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<script src = "http://localhost:9000/dada_web_project/jquery/jquery-3.6.4.min.js"></script>
	<script>
		$(document).ready(function(){
			let code = "<h1>DHTML(Dynamic HTML)</h1>"; //code는 html(val X, text X);
			let code2 = "<h2>code test!!!</h2>"
			//$("body").html(code);
			//$("body").html(code2); 이러면 앞서 작성된거 사라지고 덮어씌워(추가X)
			$("body").append(code); //이렇게 해야 추가됨
			$("body").append(code2);
		});
	</script>
</head>
<body>

</body>
</html>