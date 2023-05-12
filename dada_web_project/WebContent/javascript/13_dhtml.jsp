<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JS - DHTML(Dynamic HTML)</title>
	<script>
		window.onload = () => {
			const para = document.createElement("p");
			const node = document.createTextNode("Paragraph #3");
			para.appendChild(node);
			
			document.getElementById("d1").appendChild(para); //html 페이지 소스에는 나오지 않아. 개발자 도구의 Elements에서는 확인할 수 있어
		}
	</script>
</head>
<body>
	<h1>Dynamic HTML</h1>
	<div id = "d1">
		<p id = "p1">Paragraph #1</p>
		<p id = "p2">Paragraph #2</p>
	</div>
</body>
</html>