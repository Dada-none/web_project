$(document).ready(function(){
	//실행 버튼 이벤트
	$("#btnKobis").click(function(){
		if($("#kselect").val() == "default"){
			alert("박스오피스를 선택해주세요");
			$("#kselect").focus();
			return false;
		}
		else if($("input[type='text']").val() == ""){
			alert("날짜를 입력해주세요");
			$("input[type='text']").focus();
			return false;
		}
		else{
			//1. 일별, 주말 박스 오피스 JSON 데이터 가져오기
			let kdate = $("input[type='text']").val();
			let ktype = $("#kselect").val();
			let url = "";
			
			if(ktype == "Daily"){
				//일별 박스오피스 url 생성
				url = "https://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/" + 
				  	   "search" + ktype + "BoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt=" + kdate;
			}
			else{
				//주말 박스오피스 url생성
				url = "http://kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/" +
				   	  "search" + ktype + "BoxOfficeList.json?key=f5eef3421c602c6cb7ea224104795888&targetDt=" + kdate;
			}
			
			/*alert(url);*/
			$.getJSON(url, function(kobis){
				//2. code 형식 생성
				let boxOffice =  kobis.boxOfficeResult;
				let code = "<div id = 'd2'>";
				code += "<h1>제목 : " + boxOffice.boxofficeType + "</h1>";
				code += "<h3>기간 : " + boxOffice.showRange + "</h3>";
				code += "<table border=1>";	
				code += "<tr><th>순위</th><th>영화제목</th><th>개봉일</th><th>누적매출액</th><th>관객수</th><th>누적관객수</th><th>상영횟수</th></tr>";
				
				let listName = null; //따옴표가 아닌 null 사용으로 객체의 주소를 받는 형태로 
				if(ktype == "Daily"){
					listName = boxOffice.dailyBoxOfficeList;
				}
				else{
					listName = boxOffice.weeklyBoxOfficeList;
				}
				
				for(list of listName){
					code += "<tr><td>" + list.rank + 
							"</td><td>" + list.movieNm +
							"</td><td>" + list.openDt +
							"</td><td>" + list.salesAcc +
							"</td><td>" + list.audiCnt +
							"</td><td>" + list.audiAcc +
							"</td><td>" + list.showCnt + "</td></tr>";
				}
				code += "</table></div>"
					
					
				//3. 출력 위치에 append
				//이전 출력 화면 삭제!!
				$("div#d2").remove();
				
				//$("body").append(code);
				//$("body").append(code);
				//$().before();
				$("#p1").css("background", "tomato");
				$("#d1").after(code);
				
			});//getJSON	
		}
	});//btnKobis
}); //ready