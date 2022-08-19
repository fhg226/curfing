<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>로그인</title>
  <link rel="stylesheet" href="/resources/css/basic.css">
  <link rel="stylesheet" href="/resources/css/login2.css">
  <script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>

</head>
<body>
   <!-- header -->
   <header>
    <!-- 로고 -->
    <div class="logo">
      <a href="/home">
       CURFING
      </a>
    </div>
  </header>
  <section class="login">
    <h2>로그인</h2>
    <div class="login_box">
      <div class="member_login">
        <form id="login_form" method="post" >
          <h3>사업자 로그인</h3>
          <br />
          <div>
          <input class="id_input" type="text" name="memberid" placeholder="&nbsp;&nbsp;ID " /><br />
          <input class="pw_input" type="password" name="memberpwd" placeholder="&nbsp;&nbsp;비밀번호" /><br />
          <input class="jurirno_input" type="text" name="memberJURIRNO" placeholder="&nbsp;&nbsp;사업자번호" /><br/><br>
          <c:if test = "${result == 0 }">
                <div class = "login_warn">사용자 ID 또는 비밀번호를 잘못 입력하셨습니다.</div>
          </c:if>
            <button class="login_btn" type="submit" value="LOGIN">LOGIN</button>
           </div>
        </form>
      </div>
    </div>
  </section>
  <!-- footer -->
  <footer class="footer">
    <!-- 아이콘, 연락처, 이용안내 -->
    <div class="bottom">
      <!-- 아이콘 -->
      <div class="icon">
        <ul>
          <li>
            <a href="#"><img src="/resources/image/icon_home.png"></a>
            <br />
            홈
          </li>
          <li>
            <a href="#"><img src="/resources/image/icon_star.png"></a>
            <br />
            즐겨찾기
          </li>
          <li>
            <a href="#"><img src="/resources/image/icon_mic.png"></a>
            <br />
            공지사항
          </li>
          <li>
            <a href="#"><img src="/resources/image/icon_chat.png"></a>
            <br />
            고객센터
          </li>
        </ul>
      </div>
      <!-- 연락처 -->
      <div class="num">
        <h3 class="title">고객센터</h3>
        <span class="csNumber">031-946-8210</span>
        <p class="subTxt">
          평일 09:30 - 18:00 &nbsp;
          점심 11:30 - 13:00 &nbsp;<br />
          토요일, 일요일 및 공휴일은 휴무입니다. &nbsp;
        </p>
      </div>
      <!-- 이용안내 -->
      <div class="info">
        <ul>
          <li><a href="#">회사소개</li></a>
          <li><a href="#">이용안내</li></a>
          <li><a href="#">개인정보처리방침</li></a>
          <li><a href="#">이용약관</li></a>
        </ul>
      </div>
    </div>
    <!-- copyright -->
    <div class="copyright">
      한국정보교육원<span>|</span>
      직업정보제공사업신고확인증 신고번호 : 서울관악 제2013-02호
      <br />
      서울시 관악구 봉천로 227 보라매샤르망<span>|</span>
      Tel : 010-6476 -4577
      <br />
      E-mail : kyh92n@naver.com<span>|</span>
      개인정보보호책임자 : 김용현 (kyh92n@naver.com)
      <br />
      Copyright &copy; 2022 김용현 All Rights Reserved.
    </div>
  </footer>
  <script>
	//체크 버튼에 따라 아이디/비밀번호 기능이 달라진다
	function search_check(num) {
		if (num == '1') {
			document.getElementById("searchP").style.display = "none";
			document.getElementById("searchI").style.display = "";	
		} else {
			document.getElementById("searchI").style.display = "none";
			document.getElementById("searchP").style.display = "";
		}
	}
    /* 로그인 버튼 클릭 메서드 */
    $(".login_btn").click(function(){
        
        alert("로그인");
        
    	 /* 로그인 메서드 서버 요청 */
        $("#login_form").attr("action", "/member/businesslogin");
        $("#login_form").submit();
    });
 
</script>
</body>
</html>