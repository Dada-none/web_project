<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<style>
		div {
			background: tomato;
			width:300px;
			height:100px;
		}
	</style>
	<script src = "http://localhost:9000/dada_web_project/jquery/jquery-3.6.4.min.js"></script>
	<script>
		$(document).ready(function(){
			//hide 클릭 이벤트
			$("#hide").click(function(){
				$("#target").hide(1000, function(){alert("hide성공!!")});
			});
			//show 클릭 이벤트
			$("#show").click(function(){
				$("#target").show(1000, function(){alert("show성공~~")});
			});
			//toggle 클릭 이벤트
			$("#toggle").click(function(){
				$("#target").toggle(function(){alert("바빠바빠")});
			});
		});
	</script>
</head>
<body>
	<h1>Hide / Show / Toggle Method</h1>
	<div id = "target"></div>
	<button type = "button" id = "hide">Hide</button>
	<button type = "button" id = "show">Show</button>
	<button type = "button" id = "toggle">Toggle</button>
</body>
</html>