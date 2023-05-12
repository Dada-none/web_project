$(document).ready(function(){
	//1. json data --> $.getJSON(url, function(JSON데이터를 담고 있는 변수 ex.kobis){});
	let url = "https://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt=20230101"; 
	$.getJSON(url, function(kobis){ //빈그릇 준비!
		//alert(kobis); --> object object 뜸 : 객체가 넘어온걸 알 수 있지
		
		//2. output code 생성
		let boxOffice =  kobis.boxOfficeResult;
		
		let code = "<h1>제목 : " + boxOffice.boxofficeType + "</h1>";
		code += "<h3>기간 : " + boxOffice.showRange + "</h3>";
		code += "<table border=1>";	
		code += "<tr><th>순위</th><th>영화제목</th><th>개봉일</th><th>누적매출액</th><th>관객수</th><th>누적관객수</th><th>상영횟수</th></tr>";
		
		for(list of boxOffice.dailyBoxOfficeList){
			code += "<tr><td>" + list.rank + 
					"</td><td>" + list.movieNm +
					"</td><td>" + list.openDt +
					"</td><td>" + list.salesAcc +
					"</td><td>" + list.audiCnt +
					"</td><td>" + list.audiAcc +
					"</td><td>" + list.showCnt + "</td></tr>";
		}
		code += "</table>"
			
			
		//3. 출력 위치에 append
		$("body").append(code);
	}); //getJSON
}); // ready