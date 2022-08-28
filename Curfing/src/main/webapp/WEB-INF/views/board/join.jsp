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
    
    <!-- 로고 -->
    <div class="logo">
      <a href="/board">
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
  <%@ include file="../includes/footer.jsp"%>
</body>
</html>