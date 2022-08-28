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
          <h3>사업자 로그인</h3>
          <br />
          <div>
          <input class="id_input" type="text" name="memberid" placeholder="&nbsp;&nbsp;아이디 " /><br />
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
        $("#login_form").attr("action", "/board/businesslogin");
        $("#login_form").submit();
    });
 
</script>
</body>
</html>