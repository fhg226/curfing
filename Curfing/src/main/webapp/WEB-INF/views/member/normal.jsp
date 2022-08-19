<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>로그인</title>
<link rel="stylesheet" href="/resources/css/basic.css">
<link rel="stylesheet" href="/resources/css/normal.css">
  <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
</head>

<body>
	<!-- header -->
	<header>
		
		<!-- 로고 -->
		<div class="logo">
			<a href="/home"> CURFING </a>
		</div>
	</header>
	<!-- section -->
		<section class="join">
		<h2>일반회원 회원가입</h2>
		<div class="join_box">
			<form id="join_form" method="post">
				<div class="join_input">
					<h4>
						<span id="star">*</span> 표시는 필수 입력항목 입니다.
					</h4>
					<br />
				</div>
				<div class="wrap">
					<div class="id_wrap">
						<div class="id_name">아이디 *</div>
						<div class="id_input_box">
							<input class="id_input" name="userid">
						</div>
						<span class="id_input_re_1">사용 가능한 아이디입니다.</span> <span
							class="id_input_re_2">아이디가 이미 존재합니다.</span> <span
							class="final_id_ck">아이디를 입력해주세요.</span>
					</div>

					<div class="pw_wrap">
						<div class="pw_name">비밀번호 *</div>
						<div class="pw_input_box">
							<input class="pw_input" type="password" name="pwd">
						</div>
						<span class="final_pw_ck" >비밀번호를 입력해주세요.</span>
					</div>

					<div class="pwck_wrap">
						<div class="pwck_name">비밀번호 확인 *</div>
						<div class="pwck_input_box" >
							<input class="pwck_input" type="password" >
						</div>
						<span class="final_pwck_ck">비밀번호 확인해주세요.</span> <span
							class="pwck_input_re_1">비밀번호가 일치합니다.</span> <span
							class="pwck_input_re_2">비밀번호가 일치하지 않습니다.</span>
					</div>

					<div class="user_wrap">
						<div class="user_name">이름 *</div>
						<div class="user_input_box">
							<input class="user_input" name="username">
						</div>
					</div>

          <div class="phone_wrap">
						<div class="phone_name">휴대폰 번호 *</div>
						<div class="phone_input_1_wrap">
							<div class="phone_input_1_box">
								<input class="phone_input_1" name="phone">
							</div>
						</div>
					</div>	
					

					<div class="mail_wrap">
						<div class="mail_name">이메일 *</div>
						<div class="mail_input_box">
							<input class="mail_input" name="email">
						</div>
						</div>
						<span class="final_mail_ck">이메일을 입력해주세요. *</span>
						<div class="mail_check_wrap">
							<div class="mail_check_input_box" id="mail_check_input_box_false">
								<input class="mail_check_input" disabled="disabled">
							</div>

							<div class="mail_check_button">
								<span>인증번호 전송</span>
							</div><br>
							<div class="clearfix"></div><br>
							<span id="mail_check_input_box_warn"></span><br>
						</div>
					
						<div class="labels">
							<ul>
								<li><label> <input type="checkbox" name="agreement"
										value="Y"> <a href="#">이용약관</a>과 <a href="#">개인정보취급방침</a>에
										동의합니다.
								</label></li>
							</ul>
						</div>
						
						<div class="join_button_wrap">
							<input type="button" class="join_button" value="가입하기">
						</div>
					</div>
					</div>
			</form>
		</div>
	</section>
	<!-- footer -->
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
					<li><a href="#">회사소개</li>
					</a>
					<li><a href="#">이용안내</li>
					</a>
					<li><a href="#">개인정보처리방침</li>
					</a>
					<li><a href="#">이용약관</li>
					</a>
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
	</footer>

	<script>
		var code = ""; //이메일전송 인증번호 저장위한 코드

		/* 유효성 검사 통과유무 변수 */
		var idCheck = false; // 아이디
		var idckCheck = false; // 아이디 중복 검사
		var pwCheck = false; // 비번
		var pwckCheck = false; // 비번 확인
		var pwckcorCheck = false; // 비번 확인 일치 확인
		var mailCheck = false; // 이메일
		var mailnumCheck = false; // 이메일 인증번호 확인

		$(document).ready(function(){
			//회원가입 버튼(회원가입 기능 작동)
			$(".join_button").click(function(){
				
				/* 입력값 변수 */
				var id = $('.id_input').val(); 				// id 입력란
				var pw = $('.pw_input').val();				// 비밀번호 입력란
				var pwck = $('.pwck_input').val();			// 비밀번호 확인 입력란
				var name = $('.user_input').val();			// 이름 입력란
				var mail = $('.mail_input').val();			// 이메일 입력란
				
				/* 아이디 유효성검사 */
				if(id == ""){
					$('.final_id_ck').css('display','block');
					idCheck = false;
				}else{
					$('.final_id_ck').css('display', 'none');
					idCheck = true;
				}
				
				/* 비밀번호 유효성 검사 */
				if(pw == ""){
					$('.final_pw_ck').css('display','block');
					pwCheck = false;
				}else{
					$('.final_pw_ck').css('display', 'none');
					pwCheck = true;
				}
				
				/* 비밀번호 확인 유효성 검사 */
				if(pwck == ""){
					$('.final_pwck_ck').css('display','block');
					pwckCheck = false;
				}else{
					$('.final_pwck_ck').css('display', 'none');
					pwckCheck = true;
				}
				
				/* 이메일 유효성 검사 */
				if(mail == ""){
					$('.final_mail_ck').css('display','block');
					mailCheck = false;
				}else{
					$('.final_mail_ck').css('display', 'none');
					mailCheck = true;
				}		
				
				
				/* 최종 유효성 검사 */
				if(idCheck&&pwCheck&&pwckCheck&&pwckcorCheck&&mailCheck&&mailnumCheck ){
					$("#join_form").attr("action", "/member/normal");
					$("#join_form").submit();			
					
				}		
		
				return false;
			});
		});
		//아이디 중복검사
		$('.id_input').on(
				"propertychange change keyup paste input",
				function() {

					var userid = $('.id_input').val(); // .id_input에 입력되는 값
					var data = {
						userid : userid
					} // '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'

					$.ajax({
						type : "post",
						url : "/member/memberIdChk",
						data : data,

						success : function(result) {

							if (result != 'fail') {
								$('.id_input_re_1').css("display",
										"inline-block");
								$('.id_input_re_2').css("display", "none");
								idCheck = true; // 중복 있을 때
							} else {
								$('.id_input_re_2').css("display",
										"inline-block");
								$('.id_input_re_1').css("display", "none");
								idCheck = false; //중복 없을 때
							}
						}// success 종료
					}); // ajax 종료

				});// function 종료

		/* 비밀번호 확인 일치 유효성 검사 */

		$('.pwck_input').on("propertychange change keyup paste input",
				function() {

					var pw = $('.pw_input').val();
					var pwck = $('.pwck_input').val();
					$('.final_pwck_ck').css('display', 'none');

					if (pw == pwck) {
						$('.pwck_input_re_1').css('display', 'block');
						$('.pwck_input_re_2').css('display', 'none');
						pwckcorCheck = true;
					} else {
						$('.pwck_input_re_1').css('display', 'none');
						$('.pwck_input_re_2').css('display', 'block');
						pwckcorCheck = false;
					}

				});

		/* 인증번호 이메일 전송 */
		$(".mail_check_button").click(function() {

			var email = $(".mail_input").val(); // 입력한 이메일

			/* 인증번호 이메일 전송 */
			$(".mail_check_button").click(function() {

				var email = $(".mail_input").val(); // 입력한 이메일
				var cehckBox = $(".mail_check_input"); // 인증번호 입력란
				var boxWrap = $(".mail_check_input_box"); // 인증번호 입력란 박

				$.ajax({

					type : "GET",
					url : "mailCheck?email=" + email,
					success : function(data) {

						//console.log("data : " + data); 확인용
						cehckBox.attr("disabled", false);
						boxWrap.attr("id", "mail_check_input_box_true");
						code = data;
					}

				});

			});
			/* 인증번호 비교 */
			$(".mail_check_input").blur(function() {

				var inputCode = $(".mail_check_input").val(); // 입력코드    
				var checkResult = $("#mail_check_input_box_warn"); // 비교 결과     

				if (inputCode == code) { // 일치할 경우
					checkResult.html("인증번호가 일치합니다.");
					checkResult.attr("class", "correct");
					mailnumCheck = true; // 일치할 경우
				} else { // 일치하지 않을 경우
					checkResult.html("인증번호를 다시 확인해주세요.");
					checkResult.attr("class", "incorrect");
					mailnumCheck = false; // 일치하지 않을 경우
				}

			});
		});
	</script>
</body>
</html>