<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html>

<head>

<title>Curfing</title>
<link rel="stylesheet" href="/resources/css/basic.css">
<link rel="stylesheet" href="/resources/css/home.css">
<!-- 돋보기-->
<script src="https://kit.fontawesome.com/8eb5905426.js"
	crossorigin="anonymous"></script>
<!--화면 슬라이드-->
<script>
	var index = 0;
	window.onload = function() {
		slideShow();
	}

	function slideShow() {
		var i;
		var x = document.getElementsByClassName("slide");
		for (i = 0; i < x.length; i++) {
			x[i].style.display = "none";
		}
		index++;
		if (index > x.length) {
			index = 1; //인덱스가 초과되면 1로 변경
		}
		x[index - 1].style.display = "block";
		setTimeout(slideShow, 4000); //함수를 4초마다 호출

	}
</script>
</head>

<body>
	<!-- 로그인, 회원가입, 마이페이지 -->
	<header>
		<div class="topNav">
			<ul>
				<!-- 로그인 안한 상태 -->
				<c:if test="${member == null }">
					<li><a href="/member/login">로그인</a></li>
					<li><a href="/member/join">회원가입</a></li>
				</c:if>

				<!-- 로그인한 상태 -->
				<c:if test="${ member != null }">
					<div class="login_success_area">
         			
						<a href="/member/logout.do">로그아웃</a> 
						<a class="aaa" href="#" role="button" tabindex="0" aria-expanded="false"aria-label="마이페이지">
						 <img src="/resources/image/user.png" width="20px" height="15.5px" alt aria-hidden="true" date-noaftdata-atf="1" data-frt="0">
						</a>
					</div>
				</c:if>
			
			</ul>

		</div>


		<!-- 로고 -->
		<div class="logo">
			<a href="/home"> Curfing </a>
		</div>
	</header>

	<!--검색 기능-->
	<div class="container">
		<div class="search-container">
			<form action="/action_page.php">
				<input type="text" placeholder="검색" name="search">
				<button type="submit" class="fa fa-search"></button>
			</form>
		</div>
	</div>
	<!-- 메인 메뉴 -->

	<div class="mainMenu">
		<ul>
			<li><a href="/resourcespopular.html">인기</a></li>
			<li><a href="/resourcesscope.html">별점</a></li>
			<li><a href="/resourcesrising.html">요즘뜨는</a></li>
			<li><a href="/resourcesatmosphere.html">분위기</a></li>
		</ul>
	</div>


	<!-- 메인 화면 -->

	<section>
		<h2>추천</h2>
		<div class="flex-container">
			<div class="flex">
				<div>
					<a href="#" onclick="카페추천"> <img class="slide"
						src="../resources/cafephoto/커피3.jpg" width="500px" height="350px"
						alt="카페">
					</a>
				</div>
				<div>
					<a href="#" onclick="카페추천"> <img class="slide"
						src="./resources/cafephoto/후암동.jpg" width="500px" height="350px"
						alt="카페">
					</a>
				</div>

				<div>
					<a href="#" onclick="카페추천"> <img class="slide"
						src="/resources/cafephoto/카페2.jfif" width="500px" height="350px"
						alt="카페">
					</a>
				</div>
				<div>
					<a href="#" onclick="카페추천"> <img class="slide"
						src="/resources/cafephoto/카페6.jfif" width="500px" height="350px"
						alt="카페">
					</a>
				</div>
			</div>

			<!--메인 끝-->
		</div>

		<!-- 신규오픈 -->
		<h2>새로 오픈했어요</h2>
		<div class="new">
			<div class="flex-new">
				<a href="#" onclick="카페추천"> <img
					src="/resources/cafephoto/카페6.jfif" width="290px" height="350px"
					alt="카페">
				</a>

			</div>
			<div class="flex-new">
				<a href="#" onclick="카페추천"> <img
					src="/resources/cafephoto/카페6.jfif" width="290px" height="350px"
					alt="카페">
				</a>

			</div>
			<div class="flex-new">
				<a href="#" onclick="카페추천"> <img
					src="/resources/cafephoto/카페6.jfif" width="290px" height="350px"
					alt="카페">
				</a>

			</div>
		</div>
		<!--신규 끝-->

		<!--인스타 그램-->
		<h2>인스타그램</h2>
		<div class="insta">
			<div class="flex-insta">
				<a href="#" onclick="카페추천"> <img
					src="/resources/cafephoto/카페6.jfif" width="275px" height="400px"
					alt="카페">
				</a>

			</div>
			<div class="flex-insta1">
				<a href="#" onclick="카페추천"> <img
					src="/resources/cafephoto/카페6.jfif" width="275px" height="400px"
					alt="카페">
				</a>

			</div>
			<div class="flex-insta">
				<a href="#" onclick="카페추천"> <img
					src="/resources/cafephoto/카페6.jfif" width="275px" height="400px"
					alt="카페">
				</a>

			</div>
		</div>

	</section>



	<footer class="footer">
		<!-- 아이콘, 연락처, 이용안내 -->
		<div class="bottom">
			<!-- 아이콘 -->
			<div class="icon">
				<ul>
					<li><a href="#"><img src="/resources/image/icon_home.png"></a>
						<br /> 홈</li>
					<li><a href="#"><img src="/resources/image/icon_star.png"></a>
						<br /> 즐겨찾기</li>
					<li><a href="#"><img src="/resources/image/icon_mic.png"></a>
						<br /> 공지사항</li>
					<li><a href="#"><img src="/resources/image/icon_chat.png"></a>
						<br /> 고객센터</li>
				</ul>
			</div>
			<!-- 연락처 -->
			<div class="num">
				<h3 class="title">고객센터</h3>
				<span class="csNumber">031-946-8210</span>
				<p class="subTxt">
					평일 09:30 - 18:00 &nbsp; 점심 11:30 - 13:00 &nbsp;<br /> 토요일, 일요일 및
					공휴일은 휴무입니다. &nbsp;
				</p>
			</div>
			<!-- 이용안내 -->
			<div class="info">
				<ul>
					<li><a href="#">회사소개</a></li>
					<li><a href="#">이용안내</a></li>
					<li><a href="#">개인정보처리방침</a></li>
					<li><a href="#">이용약관</a></li>
				</ul>
			</div>
		</div>
		<!-- copyright -->
		<div class="copyright">
			한국정보교육원<span>|</span> 직업정보제공사업신고확인증 신고번호 : 서울관악 제2013-02호 <br /> 서울시
			관악구 봉천로 227 보라매샤르망<span>|</span> Tel : 010-6476 -4577 <br /> E-mail
			: kyh92n@naver.com<span>|</span> 개인정보보호책임자 : 김용현 (kyh92n@naver.com) <br />
			Copyright &copy; 2022 김용현 All Rights Reserved.
		</div>
		</div>
	</footer>

</body>

</html>