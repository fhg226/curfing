<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>로그인</title>
  <link rel="stylesheet" href="/resources/css/basic.css">
  <link rel="stylesheet" href="/resources/css/login.css">
  <script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>

</head>
<body>
   <!-- header -->
   <header>
    <!-- 로그인, 회원가입, 마이페이지, 고객센터 -->
    <div class="topNav">
      <ul>
        <li><a href="login">로그인</a></li>
        <li><a href="join">회원가입</a></li>
      </ul>
    </div>
    <!-- 로고 -->
    <div class="logo">
      <a href="index.html">
       CURFING
      </a>
    </div>
  </header>
  <section class="login">
    <h2>로그인</h2>
    <div class="login_box">
      <div class="member_login">
        <form id="login_form" method="post" >
          <h3>회원 로그인</h3>
          <br />
          <input class="id_input" name="userid" placeholder="&nbsp;&nbsp;ID " /><br />
          <input class="pw_input" type="password" name="pwd" placeholder="&nbsp;&nbsp;비밀번호" /><br /><br/>
          <input class="radio" type="radio" name="radio" checked>일반회원
          <input class="radio" type="radio" name="radio">사업자<br/>
          <c:if test = "${result == 0 }">
                <div class = "login_warn">사용자 ID 또는 비밀번호를 잘못 입력하셨습니다.</div>
          </c:if>
          
          <button class="login_btn" type="submit" value="LOGIN">LOGIN</button>
          
        </form>
      </div>
      <div class="line">
      </div>
      <div class="new_member">
        <h3>회원가입</h3><br />
				<p>아직 회원이 아니신가요?<br/>회원가입을 하시면 다양한 혜택을 편리하게 이용하실 수 있습니다.</p>
				<a href="join"><div class="right_btn">JOIN US</div></a>
				<p>아이디 혹은 비밀번호를 잊으셨나요?<br/>간단한 정보를 입력 후 잃어버린 정보를 찾으실 수 있습니다.</p>
				<a href="#"><div class="right_btn">FIND ID / PASSWORD</div></a>
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
 
    /* 로그인 버튼 클릭 메서드 */
    $(".login_btn").click(function(){
        
        alert("로그인");
        
    	 /* 로그인 메서드 서버 요청 */
        $("#login_form").attr("action", "/member/login");
        $("#login_form").submit();
    });
 
</script>
 
  
</body>
</html>