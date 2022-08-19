<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>로그인</title>
  <link rel="stylesheet" href="/resources/css/basic.css">
<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
</head>
<style>
/* header */
    /* 로그인, 회원가입, 마이페이지, 고객센터 */
    .topNav>ul{
        text-align: right;
        padding-top: 5px;
      }
      .topNav li{
        display: inline-block;
        margin-left: 2px;
      }
      .topNav li>a{
        display: inline-block;
        padding: 5px 5px;
       background-color: rgb(233, 159, 159);
       border-radius: 8px;
       color: azure;
      }
      .topNav li>a:hover{
        color: azure;
        background-color: cadetblue;
      }
      /* 로고 */
      .logo{
        text-align: center;
        font-size: 50pt;
        margin-bottom: 5px;
      }
      .logo>a{
        color: rgb(233, 159, 159);
      }
      .logo img{
        width: 100px;
        height: 100px;
      }
  
      /* section */
      h2{
        font-weight: bold;
        font-size: large;
      }
      .join{
        padding-top: 50px;
        margin-bottom: 20px;
      }
      .join>h2{
        color: rgb(233, 159, 159);
        padding-bottom: 5px;
      }
      .join_box{
        border-top: 1px solid rgb(233, 159, 159);
        padding: 10px 250px 10px 300px;
        /* text-align: center; */
      }
      .join_input{
        margin-top: 30px;
      }
      .join_input>h4{
        text-align: left;
        padding-left: 15px;
      }
      #star{
        color: red;
      }
      .memberid_wrap{
      width: 100%;
      margin-top: 20px;
      }
      .memberid_name{
      font-size: large;
      font-weight: bold;
      }
       .memberid_input{
        width: 410px;
        height: 40px;
        margin: 5px;
      }
      
       .memberpwd_wrap{
      width: 100%;
      margin-top: 20px;
      }
      .memberpwd_name{
      font-size: large;
      font-weight: bold;
      }
       .memberpwd_input{
        width: 410px;
        height: 40px;
        margin: 5px;
      } 
      
       .memberpwck_wrap{
      width: 100%;
      margin-top: 20px;
      }
      .memberpwck_name{
      font-size: large;
      font-weight: bold;
      }
      .memberpwck_input{
        width: 410px;
        height: 40px;
        margin: 5px;
      }
      
       .membername_wrap{
      width: 100%;
      margin-top: 20px;
      }
      .membername_name{
      font-size: large;
      font-weight: bold;
      }
       .membername_input{
        width: 410px;
        height: 40px;
        margin: 5px;
      } 
      
       .mail_wrap{
      width: 100%;
      margin-top: 20px;
      }
      .mail_name{
      font-size: large;
      font-weight: bold;
      }
      .mail_input{
        width: 410px;
        height: 40px;
        margin: 5px;
      } 
      .mail_check_wrap{
      margin-top: 20px;	
  }
  .mail_check_input_box{
      border: 1px solid black;
      height:22px;
      padding: 10px 14px;
      width: 60%;
      float: left;
  }
  .mail_check_input{
      width:400px;
      height:35px;
      border:none;
  }
  .mail_check_button{
      border: 1px solid black;
      height: 42px;
      width: 130px;
      float: right;
      line-height: 40px;
      text-align: center;
      font-size: large;
      font-weight: 900;
      background-color: #ececf7;
      cursor: pointer;
  }
  
  
  
  .phone_name{
      font-size: large;
      font-weight: bold;
      }
  .phone_input_1{
       width: 410px;
       height: 40px;
       margin: 5px;
      }
      .labels{
        margin: 5px;
        text-align: left;
        padding-left: 15px;
      }
      
      .memberJurirno_wrap{
        width: 100%;
        margin-top: 20px;
        }
        .memberJurirno_number{
        font-size: large;
        font-weight: bold;
        }
        .memberJurirno_input{
          width: 410px;
          height: 40px;
          margin: 5px;
        }

        .license_wrap{
            width: 100%;
            margin-top: 20px;
            }
            .license_name{
            font-size: large;
            font-weight: bold;
            }
            .license_input{
              width: 410px;
              height: 40px;
              margin: 5px;
            }
      
      
      /* 가입하기 버튼 */
      .join_button_wrap{
      margin-top: 40px;
      text-align: center;
  }
  
      .join_button{
        width: 414px;
        height: 40px;
        font-size: 15pt;
        color: azure;
        background-color: rgb(233, 159, 159);
        border: none;
        cursor: pointer;
      }
  
      .radio{
        width: 50px;
        text-align: left;
      }
  
      /* footer */
      .bottom{
        border-top: 1px solid rgb(233, 159, 159);
        border-bottom: 1px solid rgb(233, 159, 159);
        padding: 10px;
        display: flex;
        justify-content: space-around;
      }
      .icon li{
        display: inline-block;
        text-align: center;
      }
      .info{
        padding-top: 30px;
      }
      .info li{
        display: inline-block;
        text-align: start;
      }
      .copyright{
        text-align: left;
        padding: 10px;
      }
          /* 중복아이디 존재하지 않는경우 */
      .memberid_input_re_1{
          color : green;
          display : none;
      }
      /* 중복아이디 존재하는 경우 */
      .memberid_input_re_2{
          color : red;
          display : none;
      }
      
   
      /* 비밀번호 확인 일치 유효성검사 */
      .memberpwck_input_re_1{
          color : green;
          display : none;    
      }
      .memberpwck_input_re_2{
          color : red;
          display : none;    
      }    
  
      
      #mail_check_input_box_false{
      background-color:#ebebe4;
  }
   
      #mail_check_input_box_true{
      background-color:white;
  }
      
      /* 유효성 검사 문구 */
   
      .final_memberid_ck{
      display: none;
      }
      .final_memberpwd_ck{
      display: none;
      }
      .final_memberpwck_ck{
      display: none;
      }
      .final_membername_ck{
      display: none;
      }
      .final_mail_ck{
      display: none;
      }
     
</style>
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
		<h2>사업자 회원가입</h2>
		<div class="join_box">
			<form id="join_form" method="post">
				<div class="join_input">
					<h4>
						<span id="star">*</span> 표시는 필수 입력항목 입니다.
					</h4>
					<br />
				</div>
				<div class="wrap">
					<div class="memberid_wrap">
						<div class="memberid_name">아이디 *</div>
						<div class="memberid_input_box">
							<input class="memberid_input" name="memberid">
						</div>
						<span class="memberid_input_re_1">사용 가능한 아이디입니다.</span> <span
							class="memberid_input_re_2">아이디가 이미 존재합니다.</span> <span
							class="final_memberid_ck">아이디를 입력해주세요.</span>
					</div>

					<div class="memberpwd_wrap">
						<div class="memberpwd_name">비밀번호 *</div>
						<div class="memberpwd_input_box">
							<input class="memberpwd_input"  name="memberpwd">
						</div>
						<span class="final_memberpwd_ck">비밀번호를 입력해주세요.</span>
					</div>

					<div class="memberpwck_wrap">
						<div class="memberpwck_name">비밀번호 확인 *</div>
						<div class="memberpwck_input_box">
							<input class="memberpwck_input">
						</div>
						<span class="final_memberpwck_ck">비밀번호 확인해 주세요.</span> <span
							class="memberpwck_input_re_1">비밀번호가 일치합니다.</span> <span
							class="memberpwck_input_re_2">비밀번호가 일치하지 않습니다.</span>
					</div>

					<div class="membername_wrap">
						<div class="membername_name">이름 *</div>
						<div class="membername_input_box">
							<input class="membername_input" name="membername">
						</div>
					</div>

					 <div class="phone_wrap">
						<div class="phone_name">휴대폰 번호 *</div>
						<div class="phone_input_1_wrap">
							<div class="phone_input_1_box">
								<input class="phone_input_1" name="phone">
							</div>
						</div>
						
						

					<div class="mail_wrap">
						<div class="mail_name">이메일 *</div>
						<div class="mail_input_box">
							<input class="mail_input" name="email">
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
					</div>

          <div class="memberJurirno_wrap">
						<div class="memberJurirno_number">사업자등록번호 *</div>
						<div class="memberJurirno_input_box">
							<input class="memberJurirno_input" name="memberJurirno">
						</div>
					</div>

          <div class="license_wrap">
						<div class="license_name">사업자 등록증 *</div>
						<div class="license_input_box">
							<input class="license_input" type="file" name="license">
						</div>
					</div>
						
						<div class="labels">
							<ul>
								<li><label> <input type="checkbox" name="agreement"
										value="Y">이용약관과 개인정보취급방침에
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

		$(document).ready(
				function() {
					//회원가입 버튼(회원가입 기능 작동)
					$(".join_button").click(function() {

										/* 입력값 변수 */
										var id = $('.memberid_input').val(); // id 입력란
										var pw = $('.memberpwd_input').val(); // 비밀번호 입력란
										var pwck = $('.memberpwck_input').val(); // 비밀번호 확인 입력란
										var mail = $('.mail_input').val(); // 이메일 입력란

										/* 아이디 유효성검사 */
										if (id == "") {
											$('.final_memberid_ck').css('display',
													'block');
											idCheck = false; //중복 없을 때
										} else {
											$('.final_memberid_ck').css('display',
													'none');
											idCheck = true; // 중복 있을 때
										}

										/* 비밀번호 유효성 검사 */
										if (pw == "") {
											$('.final_memberpwd_ck').css('display',
													'block');
											pwCheck = false;
										} else {
											$('.final_memberpwd_ck').css('display',
													'none');
											pwCheck = true;
										}

										/* 비밀번호 확인 유효성 검사 */
										if (pwck == "") {
											$('.final_memberpwck_ck').css('display',
													'block');
											pwckCheck = false;
										} else {
											$('.final_memberpwck_ck').css('display',
													'none');
											pwckCheck = true;
										}
										/* 이메일 유효성 검사 */
										if (mail == "") {
											$('.final_mail_ck').css('display',
													'block');
											mailCheck = false;
										} else {
											$('.final_mail_ck').css('display',
													'none');
											mailCheck = true;
										}

										/* 최종 유효성 검사 */
										if(idCheck&&pwCheck&&pwckCheck&&pwckcorCheck&&mailCheck&&mailnumCheck ){
											$("#join_form").attr("action", "/member/business");
											$("#join_form").submit();			
											
										}		
										return false;

									});
				});

		//아이디 중복검사
		$('.memberid_input').on(
				"propertychange change keyup paste input",
				function() {

					var memberid = $('.memberid_input').val(); // .id_input에 입력되는 값
					var data = {
						memberid : memberid
					} // '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'

					$.ajax({
						type : "post",
						url : "/member/memberIdCheck",
						data : data,

						success : function(result) {

							if (result != 'fail') {
								$('.memberid_input_re_1').css("display",
										"inline-block");
								$('.memberid_input_re_2').css("display", "none");
								idCheck = true; // 중복 있을 때
							} else {
								$('.memberid_input_re_2').css("display",
										"inline-block");
								$('.memberid_input_re_1').css("display", "none");
								idCheck = false; //중복 없을 때
							}
						}// success 종료
					}); // ajax 종료

				});// function 종료

		/* 비밀번호 확인 일치 유효성 검사 */

		$('.memberpwck_input').on("propertychange change keyup paste input",
				function() {

					var pw = $('.memberpwd_input').val();
					var pwck = $('.memberpwck_input').val();
					$('.final_pwck_ck').css('display', 'none');

					if (pw == pwck) {
						$('.memberpwck_input_re_1').css('display', 'block');
						$('.memberpwck_input_re_2').css('display', 'none');
						pwckcorCheck = true;
					} else {
						$('.memberpwck_input_re_1').css('display', 'none');
						$('.memberpwck_input_re_2').css('display', 'block');
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