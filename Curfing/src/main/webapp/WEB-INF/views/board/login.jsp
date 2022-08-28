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
    <!-- 로고 -->
    <div class="logo">
      <a href="/board">
       CURFING
      </a>
    </div>
  </header>
  <section class="login">
    <h2>로그인</h2>
    <div class="login_box">
      <div class="member_login">
        <form id="login_form" method="post" >
          <h3>로그인</h3>
          <br />
        <div class="loginform">
         <a href="normallogin"><div class="btn">일반회원 로그인</div></a><br>
         <a href="businesslogin"><div class="btn">사업자 로그인</div></a>
        </div>
        </form>
      </div>
      <div class="line">
      </div>
      <div class="new_member">
        <h3>회원가입</h3><br />
            <p>아직 회원이 아니신가요?<br/>회원가입을 하시면 다양한 혜택을 편리하게 이용하실 수 있습니다.</p>
            <a href="join"><div class="right_btn">JOIN US</div></a>
            <p>아이디 혹은 비밀번호를 잊으셨나요?<br/>간단한 정보를 입력 후 잃어버린 정보를 찾으실 수 있습니다.</p>
            <a href="findpw"><div class="right_btn">FIND ID / PASSWORD</div></a>
      </div>
    </div>
  </section>
  <!-- footer -->
  <%@ include file="../includes/footer.jsp"%>
  
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
        
        alert("로그인중");
        
        /* 로그인 메서드 서버 요청 */
        $("#login_form").attr("action", "/board/normallogin");
        $("#login_form").submit();
    });
 
</script>
</body>
</html>