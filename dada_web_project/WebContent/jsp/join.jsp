<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>MYCGV</title>
</head>
<body>
	<!-- content -->
	<div class="content">
		<section class="join">
			<h1 class="title">íìê°ì</h1>
			<form name="joinForm" action="#" method="get">
				<ul>
					<li>
						<label>ìì´ë</label>
						<input type="text" name="id" 
							placeholder="*8ì ì´ì ìë¬¸ì¼ë¡ ìë ¥í´ì£¼ì¸ì" class="input1"
							id="id" >
						<button type="button" class="btn_style2">ì¤ë³µì²´í¬</button>
					</li>
					<li>
						<label>ë¹ë°ë²í¸</label>
						<input type="password" name="pass" class="input1" id="pass">
					</li>
					<li>
						<label>ë¹ë°ë²í¸ íì¸</label>
						<input type="password" name="cpass" class="input1" id="cpass"
						     onblur="passCheck()">
                        <span id="cmsg">test</span>						     
					</li>
					<li>
						<label>ì±ëª</label>
						<input type="text" name="name" class="input1" id="name">
					</li>
					<li>
						<label>ì±ë³</label>
						<input type="radio" name="gender" value="m"><span>ë¨ì</span> 
						<input type="radio" name="gender" value="f"><span>ì¬ì</span>
					</li>
					<li>
						<label>ì´ë©ì¼</label>
						<input type="text" name="email1" id="email1"> @
						<input type="text" name="email2" id="email2">
						<select id="email3" id = "email3">
							<option value="default">ì í</option>
							<option value="naver.com">ë¤ì´ë²</option>
							<option value="gmail.com">êµ¬ê¸</option>
							<option value="daum.net">ë¤ì</option>
							<option value="korea.com">ì½ë¦¬ì</option>
							<option value="self">ì§ì ìë ¥</option>
						</select>
					</li>
					<li>
						<label>ì£¼ì</label>
						<input type="text" name="addr1" class="input1" id="addr1">
						<button type="button" class="btn_style2" id = "btnSearchAddr">ì£¼ìì°¾ê¸°</button>
					</li>
					<li>
						<label>ìì¸ì£¼ì</label>
						<input type="text" name="addr2" class="input1" id="addr2">
					</li>
					<li>
						<label>í´ëí°</label>
						<input type="radio" name="tel" value="skt"><span>SKT</span>
						<input type="radio" name="tel" value="lgu+"><span>LGU+</span>
						<input type="radio" name="tel" value="kt"><span>KT</span>
						<select name="phone1" id="phone1">
							<option value="default">ì í</option>
							<option value="011">011</option>
							<option value="010">010</option>
							<option value="017">017</option>
						</select>
						- <input type="text" name="phone2" id="phone2">
						- <input type="text" name="phone3" id="phone3">				
					</li>
					<li>
						<label>ì·¨ë¯¸</label>
						<input type="checkbox" name="hobby" value="ìíë³´ê¸°"><span>ìíë³´ê¸°</span>
						<input type="checkbox" name="hobby" value="ë±ì°íê¸°"><span>ë±ì°íê¸°</span>
						<input type="checkbox" name="hobby" value="ê²ìíê¸°"><span>ê²ìíê¸°</span>
						<input type="checkbox" name="hobby" value="ì ìê¸°"><span>ì ìê¸°</span>
					</li>
					<li>
						<label>ìê¸°ìê°</label>
						<textarea name="intro" placeholder="*200ì ì´ë´ë¡ ìì±í´ì£¼ì¸ì"></textarea>
					</li>
					<li>
						<button type="button" class="btn_style" id = "btnJoin">ê°ìíê¸°</button>
						<button type="reset" class="btn_style">ë¤ììë ¥</button>
					</li>			
				</ul>
			</form>
		</section>
	</div>
	
</body>
</html>
















