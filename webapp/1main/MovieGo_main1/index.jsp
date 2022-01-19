<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	import="java.util.*"
    import="project_3rd_package.Dao.*"   
    import="project_3rd_package.vo.*"     
    %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>MovieGo|Home Page</title>
		
		<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  		<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>
  		<script type="text/javascript" src="../../0jquery/jquery-3.6.0.js"></script>
		<script>
			$(document).ready(function(){
			  $('.menu>li').mouseover(function(){
			    $(this).find('.submenu').stop().slideDown(500);
			  }).mouseout(function(){
			    $(this).find('.submenu').stop().slideUp(500);
			  });
			  $('.slider').bxSlider();
			});
		</script>
		
		<link rel="stylesheet" type="text/css" href="./css/header_menu.css">
		<style>
		  
		</style>
		<style>
		* {margin:0;padding:0;}
		.section input[id*="slide"] {display:none;}
		.section .slidewrap {max-width:1200px;margin:0 auto;}
		.section .slidelist {white-space:nowrap;font-size:0;overflow:hidden;position:relative;}
		.section .slidelist > li {display:inline-block;vertical-align:middle;width:100%;transition:all .5s;}
		.section .slidelist > li > a {display:block;position:relative;}
		.section .slidelist > li > a img {width:400px;}
		.section .slidelist label {position:absolute;z-index:10;top:50%;transform:translateY(-50%);padding:50px;cursor:pointer;}
		.section .slidelist .textbox {position:absolute;z-index:1;top:50%;left:50%;transform:translate(-50%,-50%);line-height:1.6;text-align:center;}
		.section .slidelist .textbox h3 {font-size:36px;color:#fff;;transform:translateY(15px);transition:all .5s;}
		.section .slidelist .textbox p {font-size:16px;color:#fff;opacity:0;transform:translateY(30px);transition:all .5s;}
		
		/* input에 체크되면 슬라이드 효과 */
		.section input[id="slide01"]:checked ~ .slidewrap .slidelist > li {transform:translateX(0%);}
		.section input[id="slide02"]:checked ~ .slidewrap .slidelist > li {transform:translateX(-100%);}
		.section input[id="slide03"]:checked ~ .slidewrap .slidelist > li {transform:translateX(-200%);}
		.section input[id="slide04"]:checked ~ .slidewrap .slidelist > li {transform:translateX(-300%);}
	
		/* input에 체크되면 텍스트 효과 */
		.section input[id="slide01"]:checked ~ .slidewrap li:nth-child(1) .textbox h3 {opacity:1;transform:translateY(0);transition-delay:.2s;}
		.section input[id="slide01"]:checked ~ .slidewrap li:nth-child(1) .textbox p {opacity:1;transform:translateY(0);transition-delay:.4s;}
		.section input[id="slide02"]:checked ~ .slidewrap li:nth-child(2) .textbox h3 {opacity:1;transform:translateY(0);transition-delay:.2s;}
		.section input[id="slide02"]:checked ~ .slidewrap li:nth-child(2) .textbox p {opacity:1;transform:translateY(0);transition-delay:.4s;}
		.section input[id="slide03"]:checked ~ .slidewrap li:nth-child(3) .textbox h3 {opacity:1;transform:translateY(0);transition-delay:.2s;}
		.section input[id="slide03"]:checked ~ .slidewrap li:nth-child(3) .textbox p {opacity:1;transform:translateY(0);transition-delay:.4s;}
		.section input[id="slide04"]:checked ~ .slidewrap li:nth-child(3) .textbox h3 {opacity:1;transform:translateY(0);transition-delay:.2s;}
		.section input[id="slide04"]:checked ~ .slidewrap li:nth-child(3) .textbox p {opacity:1;transform:translateY(0);transition-delay:.4s;}
		
		/* 좌,우 슬라이드 버튼 */
		.slide-control > div {display:none;}
		.section .left {left:30px;background:url("../MovieGo_image/left.png") center center / 100% no-repeat;}
		.section .right {right:30px;background:url("../MovieGo_image/right.png") center center / 100% no-repeat;}
		.section input[id="slide01"]:checked ~ .slidewrap .slide-control > div:nth-child(1) {display:block;}
		.section input[id="slide02"]:checked ~ .slidewrap .slide-control > div:nth-child(2) {display:block;}
		.section input[id="slide03"]:checked ~ .slidewrap .slide-control > div:nth-child(3) {display:block;}
		.section input[id="slide04"]:checked ~ .slidewrap .slide-control > div:nth-child(4) {display:block;}
	
		/* 페이징 */
		.slide-pagelist {text-align:center;padding:20px;}
		.slide-pagelist > li {display:inline-block;vertical-align:middle;}
		.slide-pagelist > li > label {display:block;padding:8px 30px;border-radius:30px;background:#ccc;margin:20px 10px;cursor:pointer;}
		.section input[id="slide01"]:checked ~ .slidewrap .slide-pagelist > li:nth-child(1) > label {background:#999;}
		.section input[id="slide02"]:checked ~ .slidewrap .slide-pagelist > li:nth-child(2) > label {background:#999;}
		.section input[id="slide03"]:checked ~ .slidewrap .slide-pagelist > li:nth-child(3) > label {background:#999;}
		.section input[id="slide04"]:checked ~ .slidewrap .slide-pagelist > li:nth-child(4) > label {background:#999;}
	</style>
	</head>
	<body>
	
	<!--  상단 메뉴 바와 로고, 로그인 회원가입 부분입니다. -->
	<%
	// 저장된 session 값가져오기..
	Member m = (Member)session.getAttribute("mem");
	%>
	<script>
		$(document).ready(function(){
			$("#logoutBtn").click(function(){
				if(confirm("로그아웃하시겠습니까?")){
					location.href="../../3mypage/login.jsp";
				}
			});
		});
	</script>
		<header>
			<nav>
				<div id="menu1">
					<ul>
						<li><a href="index.jsp"><img src="image\Logo3.png" alt="" href="index.jsp" class="" width="400"></a></li>
						<li></li>
						<!-- 이부분은 로그인 인증시 로그인 회원가입으로 출력이 아닌 회원:@@@ 님 안녕하세요 로 출력 -->
						<!-- @@@를 클릭하면 mypage로 이동할수 있게 변경합니다. -->
						<%if(m!=null){ %>
							<li><a href="../../3mypage/mypage.jsp">마이페이지</a></li>
							<li><a id="logoutBtn">로그아웃</a></li>
						<%}else{ %>
							<li><a href="../../3mypage/login.jsp">로그인</a></li>
							<li><a href="../../3mypage/signupgo.html">회원가입</a></li>
						<%} %>
						
					</ul>
				</div>
			</nav>
			
			<nav>
			  <div>
			  <ul class="menu">
			    <li><a href="#">게시판</a>
			      <ul class="submenu">
			        <li><a href="#">자유게시판</a></li>
			        <li><a href="../../2board/board_review.jsp">리뷰게시판</a></li>
			        <li><a href="../../2board/board_critic.jsp">평론게시판</a></li>
			      </ul>
			    </li>
			    
			    <li><a href="#">영화순위</a>
			      <ul class="submenu">
			        <li><a href="#">한국 영화</a></li>
			        <li><a href="#">해외 영화</a></li>
			        <li><a href="#">장르별 영화</a></li>
			        <li><a href="#">연령별 영화</a></li>
			      </ul>
			    </li>
			    
			    <li><a href="#">영화추천</a>
			      <ul class="submenu">
			        <li><a href="#">한국 영화</a></li>
			        <li><a href="#">해외 영화</a></li>
			        <li><a href="#">장르별 추천</a></li>
			        <li><a href="#">연령별 추천</a></li>
			      </ul>
			    </li>
			    
			    <li><a href="#">MovieGo</a>
			      <ul class="submenu">
			        <li><a href="../../3mypage/mypage.jsp">마이페이지</a></li>
			        <li><a href="#">게시판 이용 수칙</a></li>
			        <li><a href="#">이벤트</a></li>
			        <li><a href="#">공지사항</a></li>
			      </ul>
			    </li>
			  </ul>
			  </div>
			</nav>
			</header>
			 <!-- 사진 슬라이드 삽입..
			 
			<nav>
				<div class="slider">
			    <div> 
			    	<table>
			    		<tr>
			    		  <td><img src="../MovieGo_image/nowayhome.png" width="350"></td>
			     	 	  <td><img src="../MovieGo_image/kingsman.png" width="350"></td>
			     	 	  <td><img src="../MovieGo_image/gucci.png" width="350"></td>
			   			</tr>   	
			   		</table>
			   	
			    </div>
			    <div> 
			    	<table>
			    		<tr>
			    		  <td><img src="../MovieGo_image/westsidestory.png" width="350"></td>
			     	 	  <td><img src="../MovieGo_image/The policeman's lineage.png" width="350"></td>
			     	 	  <td><img src="../MovieGo_image/happynewyear.png" width="350"></td>
			   			</tr>   	
			   		</table>
			    </div>
			  </div>
			</nav>
			 -->  
		
		<div class="section">
		<input type="radio" name="slide" id="slide01" checked>
		<input type="radio" name="slide" id="slide02">
		<input type="radio" name="slide" id="slide03">
		<input type="radio" name="slide" id="slide04">
		<div class="slidewrap">
			
			<ul class="slidelist">
				<!-- 슬라이드 영역 -->
				<li class="slideitem">
					<a>
						<div class="textbox">
							<h3></h3>
							<p></p>
						</div>
						<img src="../MovieGo_image/gucci.png" width="30px" height="570px"/>
						
						<div class="textbox">
							<h3></h3>
							<p></p>
						</div>
						<img src="../MovieGo_image/westsidestory.png" width="30px" height="570px"/>	
						
						<div class="textbox">
							<h3></h3>
							<p></p>
						</div>
						<img src="../MovieGo_image/Thepoliceman.png" width="30px" height="570px"/>						
					</a>
				</li>
				<li class="slideitem">
					<a>	
						<div class="textbox">
							<h3></h3>
							<p></p>
						</div>
						<img src="../MovieGo_image/kingsman.png" width="30px" height="570px"/>
						
						<div class="textbox">
							<h3></h3>
							<p></p>
						</div>
						<img src="../MovieGo_image/eternals.png" width="30px" height="570px"/>		
						
						<div class="textbox">
							<h3></h3>
							<p></p>
						</div>
						<img src="../MovieGo_image/lincoln.png" width="30px" height="570px"/>		
					</a>
				</li>
				<li class="slideitem">
					<a>
						<div class="textbox">
							<h3></h3>
							<p></p>
						</div>
						<img src="../MovieGo_image/happynewyear.png" width="30px" height="570px"/>
						
						<div class="textbox">
							<h3></h3>
							<p></p>
						</div>
						<img src="../MovieGo_image/miracle.png" width="30px" height="570px"/>		
						
						<div class="textbox">
							<h3></h3>
							<p></p>
						</div>
						<img src="../MovieGo_image/voice.png" width="30px" height="570px"/>		
					</a>
				</li>
				
				<li class="slideitem">
					<a>
						<div class="textbox">
							<h3></h3>
							<p></p>
						</div>
						<img src="../MovieGo_image/nowayhome.png" width="30px" height="570px"/>
						
						<div class="textbox">
							<h3></h3>
							<p></p>
						</div>
						<img src="../MovieGo_image/peninsula.png" width="30px" height="570px"/>		
						
						<div class="textbox">
							<h3></h3>
							<p></p>
						</div>
						<img src="../MovieGo_image/midnight.png" width="30px" height="570px"/>		
					</a>
				</li>
	
				<!-- 좌,우 슬라이드 버튼 -->
				<div class="slide-control">
					<div>
						<label for="slide04" class="left"></label>
						<label for="slide02" class="right"></label>
					</div>
					<div>
						<label for="slide01" class="left"></label>
						<label for="slide03" class="right"></label>
					</div>
					<div>
						<label for="slide02" class="left"></label>
						<label for="slide04" class="right"></label>
					</div>
					<div>
						<label for="slide03" class="left"></label>
						<label for="slide01" class="right"></label>
					</div>
				</div>
	
			</ul>
			<!— 페이징 —>
			<ul class="slide-pagelist">
				<li><label for="slide01"></label></li>
				<li><label for="slide02"></label></li>
				<li><label for="slide03"></label></li>
				<li><label for="slide04"></label></li>
			</ul>
		</div>

	
</div>
		 
		
		
		
		<!-- 메인페이지 게시판 출력 하는 부분  -->
		<section class="sectionMake">
			<div>
				<ul>
			   	 <li><a href="#" style="text-align:center; font-size:1.5em; font-weight: bold;">자유게시판</a>
			   	   <ul class="subSection">
			   	     <li><a href="#">1. 미드나잇 재밌더라 얘들아</a></li>
			   	     <li><a href="#">2. 좀비 바이러스 일어나면 어떡할거야?</a></li>
			   	     <li><a href="#">3. 안녕하세요 오랜만입니다.</a></li>
			   	     <li><a href="#">4. 샹치 명대사 굉장하지 않냐?</a></li>
			   	     <li><a href="#">5. 영화 늦었다 ㅠㅠ</a></li>
			   	    		   	     
			   	   </ul>
			   	 </li>
			   	</ul>
			</div>
			<div>
				<ul>
			   	 <li><a href="#" style="text-align:center; font-size:1.5em; font-weight: bold;">리뷰게시판</a>
			   	   <ul class="subSection">
			   	     <li><a href="#">1. 미드나이트 후기_정신건강에 해롭습니다.</a></li>
			   	     <li><a href="#">2. 아포칼립스 좀비 바이러스 영화 리뷰 데드 돈 다이</a></li>
			   	     <li><a href="#">3. 경관의 피 시사회 리뷰(무대인사!!)</a></li>
			   	     <li><a href="#">4. 샹치와 텐 링즈의 전설 영화 후기 및 영화 명대사</a></li>
			   	     <li><a href="#">5. [시간의 끝에서 널 기다려] 새벽감성을 깨우는 영화</a></li>
			   	 
			   	   </ul>
			   	 </li>
			   	</ul>
			</div>
			<div>
				<ul>
			   	 <li><a href="#" style="text-align:center; font-size:1.5em; font-weight: bold;">평론게시판</a>
			   	   <ul class="subSection">
			   	     <li><a href="#">1. 미드나이트 후기_정신건강에 해롭습니다.</a></li>
			   	     <li><a href="#">2. 아포칼립스 좀비 바이러스 영화 리뷰 데드 돈 다이</a></li>
			   	     <li><a href="#">3. 경관의 피 시사회 리뷰(무대인사!!)</a></li>
			   	     <li><a href="#">4. 샹치와 텐 링즈의 전설 영화 후기 및 영화 명대사</a></li>
			   	     <li><a href="#">5. [시간의 끝에서 널 기다려] 새벽감성을 깨우는 영화</a></li>
			   	   </ul>
			   	 </li>
			   	</ul>
			</div>
			<div>
				<ul>
			   	 <li><a href="#" style="text-align:center; font-size:1.5em; font-weight: bold;">평론게시판</a>
			   	   <ul class="subSection">
			   	     <li><a href="#">1. 미드나이트 후기_정신건강에 해롭습니다.</a></li>
			   	     <li><a href="#">2. 아포칼립스 좀비 바이러스 영화 리뷰 데드 돈 다이</a></li>
			   	     <li><a href="#">3. 경관의 피 시사회 리뷰(무대인사!!)</a></li>
			   	     <li><a href="#">4. 샹치와 텐 링즈의 전설 영화 후기 및 영화 명대사</a></li>
			   	     <li><a href="#">5. [시간의 끝에서 널 기다려] 새벽감성을 깨우는 영화</a></li>
			   	   </ul>
			   	 </li>
			   	</ul>
			</div>
		</section>
		
		
	</body>
</html>