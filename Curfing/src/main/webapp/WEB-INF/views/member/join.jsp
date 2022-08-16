<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html lang="ko">
<head>
  <meta charset="UTF-8">
  <title>회원가입</title>
  <link rel="stylesheet" href="/resources/css/basic.css">
  <link rel="stylesheet" href="/resources/css/join.css">
</head>
<body>
   <!-- header -->
   <header>
    <div class="box">
    <!-- 로그인, 회원가입, 마이페이지, 고객센터 -->
     <div class="topNav">
      <ul>
        <li><a href="login">로그인</a></li>
      </ul>
    </div>
    <!-- 로고 -->
    <div class="logo">
      <a href="index.html">
       CURFING
      </a>
    </div>
   </div>
   
  </header>
  <section class="login">
    <h2>회원가입</h2>
    <div class="login_box">
      <div class="member_login">
        <form id="join_form" method="get">
          <a href="normal">
            일반 회원 회원가입
            <br /><br/>
            <img src="/resources/image/user.png" alt="일반회원" width="100px" height="100px" >
          </a>
          <br/><br/><br/>
          <p>일반 회원으로 이용하실 분은</p>
          <p>일반회원 회원가입을 해주시길 바랍니다.</p>
        </form>
      </div>
      <div class="line">
      </div>
      <div class="new_member">
        <form action="" method="post" name="login">
          <a href="business">
            사업자 회원 회원가입
            <br /><br/>
            <img src="/resources/image/businessman.png" alt="사업자회원" width="100px" height="100px" >
          </a>
          <br/><br/><br/>
          <p>사업자 회원으로 이용하실 분은</p>
          <p>사업자회원 회원가입을 해주시길 바랍니다.</p>
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
</body>
</html>