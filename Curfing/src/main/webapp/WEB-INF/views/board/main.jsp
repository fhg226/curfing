<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html>

<head>

<title>Curfing</title>
<link rel="stylesheet" href="/resources/css/basic.css">

<style>
/*   글꼴  */

/* 로그인, 회원가입, 마이페이지 */
.topNav>ul {
   text-align: right;
   padding-top: 5px;
}

.topNav li {
   display: inline-block;
   margin-left: 2px;
}

.topNav li>a {
   display: inline-block;
   padding: 5px 5px;
   background-color: rgb(233, 159, 159);
   border-radius: 8px;
   color: azure;
}

.topNav li>a:hover {
   color: azure;
   background-color: #C3E2DD;
}

/* 로고 */
.logo {
   text-align: center;
   font-size: 90pt;
   margin-bottom: 50px;
}

.logo>a {
   color: rgb(233, 159, 159);
}

/* 검색 */
.search-container {
   position: relative;
   text-align: center;
   width: 550px;
   margin: 0 auto;
}

.selectbox {
   width: 80px;
   height: 45px;
   border-radius: 20px;
}

input {
   width: 70%;
   border-radius: 20px;
   border: 1px solid #bbb;
   margin-bottom: 50px;
   padding: 15px 17px;
}

.fa-search {
   position: absolute;
   right: 50px;
   top: 15px;
}

/* 메인 메뉴 */
.mainMenu {
   text-align: center;
   margin-bottom: 50px;
   border-bottom: 2px solid #C3E2DD;
}

.mainMenu li {
   display: inline-block;
   font-weight: bold;
   font-size: 20px;
   padding: 10px 40px;
}

.mainMenu li>a {
   display: inline-block;
   padding: 5px 20px;
   background-color: rgb(233, 159, 159);
   border-radius: 15px;
   color: azure;
   margin-bottom: 30PX;
}

.mainMenu li>a:hover {
   text-decoration: none;
   background-color: #C3E2DD;
}

/* 메인 */
h2 {
   text-align: center;
   font-size: 40px;
   color: rgb(233, 159, 159);
   margin-top: 30px;
   margin-bottom: 30px;
}

.flex-container {
   display: flex;
   justify-content: center;
   border-bottom: 2px solid #C3E2DD;
}

.flex {
   margin-bottom: 80px;
}

/* 신규 */
.new {
   display: inline-flex;
   border-bottom: 2px solid #C3E2DD;
}

.flex-new {
   margin: 20px;
   margin-bottom: 30px;
}

/* 인스타 */
.insta {
   display: inline-flex;
   margin-bottom: 100px;
   margin-left: 30px;
}

.flex-insta {
   margin: 20px;
   margin-bottom: 30px;
}

.flex-insta1 {
   margin: 20px;
   margin-bottom: 30px;
}

/* footer */
.bottom {
   border-top: 1px solid grey;
   border-bottom: 1px solid grey;
   padding: 10px;
   display: flex;
   justify-content: space-around;
   background-color: gray;
}

.icon li {
   display: inline-block;
   text-align: center;
}

.info {
   padding-top: 30px;
}

.info li {
   display: inline-block;
   text-align: start;
}

.copyright {
   background-color: gray;
   text-align: left;
   padding: 10px;
}
</style>
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
            <li><a href="login.html" style="text-decoration: none">로그인</a></li>
            <li><a href="join.html">회원가입</a></li>
            <li><a class="aaa" href="#" role="button" tabindex="0"
               aria-expanded="false" aria-label="마이페이지"> <img
                  src="/resources/image/user.png" width="20px" height="15.5px" alt
                  aria-hidden="true" date-noaft data-atf="1" data-frt="0">
            </a></li>
         </ul>
      </div>


      <!-- 로고 -->
      <div class="logo">
         <a href="main" style="text-decoration: none"> Curfing </a>
      </div>
   </header>

   <!--검색 기능-->
   <div class="container">
      <div class="search-container">
       <!--   <form id ='searchForm' action="list" method='get'> -->
            <select class="selectbox" name='type'>
               <option value="${pageMaker.cri.type == null? 'selected' : '' }">--</option>
               <option value="T"
                  <c:out value="${pageMaker.cri.type eq 'T'? 'selected' : '' }"/>>가게명</option>
               <option value="C"
                  <c:out value="${pageMaker.cri.type eq 'C'? 'selected' : '' }"/>>지역</option>
               <option value="M"
                  <c:out value="${pageMaker.cri.type eq 'M'? 'selected' : '' }"/>>태그</option>
               <option value="TC" <c:out value="${pageMaker.cri.type eq 'TC'?'selected':'' }"/>>가게명 + 지역</option>
                <option value="TW" <c:out value="${pageMaker.cri.type eq 'TW'?'selected':'' }"/>>가게명 + 태그</option>
                <option value="TCW" <c:out value="${pageMaker.cri.type eq 'TCW'?'selected':'' }"/>>가게명 + 지역 + 태그</option>
            </select> 
            <input type="text" placeholder="검색" name="keyword"
               value='<c:out value="${pageMaker.cri.keyword }"/>'> 
            <input type='hidden' name='pageNum'
               value='<c:out value="${pageMaker.cri.pageNum }"/>'> 
            <input type='hidden' name='amount'
               value='<c:out value="${pageMaker.cri.amount }"/>'>
            <button class="fa fa-search"></button>
         <!-- </form> -->
      </div>
   </div>

   <form id='actionForm' action="list" method="get">
      <input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum }'>
      <input type='hidden' name='amount' value='${pageMaker.cri.amount }'>
      <input type='hidden' name='type' value='<c:out value="${pageMaker.cri.type }"/>'> <input
         type='hidden' name='keyword' value='<c:out value="${pageMaker.cri.keyword }"/>'>
   </form>

   <!-- 메인 메뉴 -->

   <div class="mainMenu">
      <ul>
        <li> <a href="popular">인기</a></li>
        <li ><a href="scope">별점</a></li>
        <li ><a href="rising">요즘뜨는</a></li>
        <li ><a href="atmosphere">분위기</a></li>
      </ul>
   </div>


   <!-- 메인 화면 -->

   <section>
      <h2>추천</h2>
      <div class="flex-container">
         <div class="flex">
            <div>
               <a href="#" onclick="카페추천"> <img class="slide"
                  src="/resources/cafephoto/커피3.jpg" width="500px" height="350px"
                  alt="카페">
               </a>
            </div>
            <div>
               <a href="#" onclick="카페추천"> <img class="slide"
                  src="/resources/cafephoto/후암동.jpg" width="500px" height="350px"
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
      </div>
   </footer>

<script type="text/javascript">
/* var searchForm = $(".search-container"); //검색을 눌렀을 떄 이벤트 적용
 */$(".search-container button").on("click", function(e){
	e.preventDefault();
    
    let type = $(".search-container select").val();
    let keyword = $(".search-container input[name='keyword']").val();
    
    if(!type){
        alert("검색 종류를 선택하세요.");
        return false;
    }
    
    if(!keyword){
        alert("키워드를 입력하세요.");
        return false;
    }        
    
    moveForm.find("input[name='type']").val(type);
    moveForm.find("input[name='keyword']").val(keyword);
    moveForm.find("input[name='pageNum']").val(1);
    moveForm.submit();
   
   
});



</script>


</body>

</html>

