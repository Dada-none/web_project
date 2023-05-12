$(document).ready(function(){
	const gangnam = {title:"강남고등학교", address:"서울시 강남구 강남대로123", 
					 grade: {gtitle:"2학년1반",
						 	 list:[{name:"홍길동", kor: 10, eng: 10, math: 10},
							 	   {name:"테스트", kor: 20, eng: 20, math: 20},
							 	   {name:"자바", kor: 30, eng: 30, math: 30},
							 	   {name:"오라클", kor: 40, eng: 40, math: 40},
							 	   {name:"스크립트", kor: 50, eng: 50, math: 50}]}};
	
	let output = "<h1>" + gangnam.title + "</h1>";
	output += "<h3>" + gangnam.address + "</h3>";
	output += "<h3>" + gangnam.grade.gtitle + "</h3>";
	
	output += "<table><tr><th>name</th><th>kor</th><th>eng</th><th>math</th><th>tot</th><th>avg</th></tr>" 	
	for(i = 0; i < gangnam.grade.list.length; i++){
		let tot = gangnam.grade.list[i].kor + gangnam.grade.list[i].eng + gangnam.grade.list[i].math;
		let avg = tot / 3;
		output += "<tr><td>" + gangnam.grade.list[i].name + "</td><td>" + gangnam.grade.list[i].kor + 
				  "</td><td>" + gangnam.grade.list[i].eng + "</td><td>" + gangnam.grade.list[i].math + 
				  "</td><td>" + tot + "</td><td>" + avg + "</td></tr>";
	}
	output += "</table>";
	
	$("body").append(output);
});