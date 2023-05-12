<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>DHTML & JSON</title>
	<script src = "http://localhost:9000/dada_web_project/jquery/jquery-3.6.4.min.js"></script>
	<script>
		$(document).ready(function(){
			const employee = {list : [{"name":"홍길동", addr:'서울시 강남구', age:30},
							  		  {"name":"손석구", addr:'서울시 강남구', age:30},
							  		  {"name":"공유", addr:'서울시 강남구', age:30},
							  		  {"name":"테스트", addr:'서울시 강남구', age:30}]}; //jSON -> 스크립트에서만 사용됨
			let code = "<table><tr><th>번호</th><th>성명</th><th>주소</th><th>나이</th></tr>"
			
			for(index in employee.list){
				let no = parseInt(index) + 1;
				code += "<tr><td>" + no + "</td><td>" + employee.list[index].name + "</td><td>"
				+ employee.list[index].addr + "</td><td>" + employee.list[index].age + "</td></tr>";
			}
			/* for(i = 0; i < employee.list.length; i++){
				code += "<tr><td>" + (i+1) + "</td><td>" + employee.list[i].name + "</td><td>"
						+ employee.list[i].addr + "</td><td>" + employee.list[i].age + "</td></tr>";
			} */
			code += "</table>";
			
			$("body").append(code);
		});
	</script>
	<style> /*style은 메모리에 올라가 있는 태그를 찾아서 스타일 적용을 하는것*/
		table, td, th {
			border: 1px solid red;
		}
		th {
			background: lightgray;
		}
	</style>
</head>
<body>
	
</body>
</html>