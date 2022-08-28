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
   <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
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
<style type="text/css">
#searchForm{
    margin:0 auto;
    }
    
    
    
    select{
        width: 150px;
   border: 1px solid #bbb;
   margin-bottom: 50px;
   padding: 15px 17px 15.5px;
   margin-right: -6px;
   margin-left: 200px;
    }
  .sinput {
    height: 17px;
    width: 300px;
   border: 1px solid #bbb;
   margin-bottom: 50px;
   padding: 15px 17px;
}
.sbtn{
    width: 100px;
   border: 1px solid #bbb;
   margin-bottom: 50px;
   padding: 15.5px 17px 16px;
   margin-left: -6px;
}
   
</style>
</head>
<body>
   <!-- 로그인, 회원가입, 마이페이지 -->
   <header>
      <div class="topNav">
         <ul>
             <!-- 로그인 안한 상태 -->
            <c:if test="${user == null && member == null }">
               <li><a href="/board/login">로그인</a></li>
               <li><a href="/board/join">회원가입</a></li>
            </c:if>

            <!-- 로그인한 상태 -->
            <c:if test="${ user != null }">
               <div class="login_success_area">
                     <li>
                        "${user.username }"님 반갑습니다.
                     </li>
                  <a href="/board/logout.do">로그아웃</a> 
                  <a class="aaa" href="/board/Mypage" role="button" tabindex="0" aria-expanded="false"aria-label="마이페이지">
                   <img src="/resources/image/user.png" width="20px" height="15.5px" alt aria-hidden="true" date-noaftdata-atf="1" data-frt="0">
                  </a>
               </div>
            </c:if> 
      

            <!-- 로그인한 상태 -->
            <c:if test="${ member != null }">
               <div class="login_success_area">
                     <li>
                        사업자 "${member.membername }"님 반갑습니다.
                     </li>
                  <a href="/board/logout.do">로그아웃</a> 
                  <a id="reg" href='<c:out value="${member.memberid}" />' >등록</a> 
                  <a class="aaa" href="/board/Mypage" role="button" tabindex="0" aria-expanded="false"aria-label="마이페이지">
                   <img src="/resources/image/user.png" width="20px" height="15.5px" alt aria-hidden="true" date-noaftdata-atf="1" data-frt="0">
                  </a>
               </div>
            </c:if> 
            
            
         </ul>

      </div>



      <!-- 로고 -->
      <div class="logo">
         <a href="/board"> Curfing </a>
      </div>
   </header>

<!--검색 기능-->
   <div class="search_wrap">
        <div class="search_area">
            <form id ='searchForm' action="/board/list" method='get'>
           <select name="type">
                <option value="" <c:out value="${page.cri.type == null?'selected':'' }"/>>--</option>
                <option value="T" <c:out value="${page.cri.type eq 'T'?'selected':'' }"/>>제목</option>
                <option value="C" <c:out value="${page.cri.type eq 'C'?'selected':'' }"/>>내용</option>
                <option value="W" <c:out value="${page.cri.type eq 'W'?'selected':'' }"/>>작성자</option>
                <option value="TC" <c:out value="${page.cri.type eq 'TC'?'selected':'' }"/>>제목 + 내용</option>
                <option value="TW" <c:out value="${page.cri.type eq 'TW'?'selected':'' }"/>>제목 + 작성자</option>
                <option value="TCW" <c:out value="${page.cri.type eq 'TCW'?'selected':'' }"/>>전체</option>
            </select>    
            <input class="sinput" type="text" name="keyword" value="${pageMaker.cri.keyword }">
            <button class="sbtn">Search</button>
            </form>
        </div>
    </div>    
 

   <form id='moveForm' method="get">
      <input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum }'>
      <input type='hidden' name='amount' value='${pageMaker.cri.amount }'>
      <input type='hidden' name='type' value='${pageMaker.cri.type }'> 
      <input type='hidden' name='keyword' value='${pageMaker.cri.keyword }'>
   </form>
   

   <!-- 메인 메뉴 -->

   <div class="mainMenu">
      <ul>
        <li> <a href="board/list">목록</a></li>
        <li ><a href="board/scope">인기</a></li>
        <li ><a href="board/rising">요즘뜨는</a></li>
        <li ><a href="board/atmosphere">분위기</a></li>
      </ul>
   </div>


   <!-- 메인 화면 -->

   <section>
      <h2>추천</h2>
      <div class="flex-container">
         <div class="flex">
            <div>
               <a href="https://map.naver.com/v5/entry/place/1061513977?c=14125288.9377589,4512799.4622611,15,0,0,0,dh&isCorrectAnswer=true" onclick="카페추천"> <img class="slide"
                  src="../resources/cafephoto/noburden.jfif" width="500px" height="350px"
                  alt="카페">
               </a>
            </div>
            <div>
               <a href="https://map.naver.com/v5/entry/place/1262377225?c=14135974.2507776,4519403.6710053,15,0,0,0,dh" onclick="카페추천"> <img class="slide"
                  src="./resources/cafephoto/sudang.jfif" width="500px" height="350px"
                  alt="카페">
               </a>
            </div>

            <div>
               <a href="https://map.naver.com/v5/entry/place/428320157?c=14137325.3799651,4514372.0825360,15,0,0,0,dh" onclick="카페추천"> <img class="slide"
                  src="/resources/cafephoto/sau.jfif" width="500px" height="350px"
                  alt="카페">
               </a>
            </div>
            <div>
               <a href="https://map.naver.com/v5/entry/place/1240190178?c=14135609.4554563,4519905.9601739,15,0,0,0,dh" onclick="카페추천"> <img class="slide"
                  src="/resources/cafephoto/onion.jfif" width="500px" height="350px"
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
            <a href="https://map.naver.com/v5/entry/place/1671232472?c=14128430.7745402,4515500.9930336,15,0,0,0,dh" onclick="카페추천"> <img
               src="/resources/cafephoto/coffeeba.jfif" width="290px" height="350px"
               alt="카페">
            </a>

         </div>
         <div class="flex-new">
            <a href="https://map.naver.com/v5/entry/place/1053282197?c=14136144.8701611,4518396.8872666,15,0,0,0,dh" onclick="카페추천"> <img
               src="/resources/cafephoto/gonggan.jfif" width="290px" height="350px"
               alt="카페">
            </a>

         </div>
         <div class="flex-new">
            <a href="https://map.naver.com/v5/entry/place/1467896089?c=14127471.4439972,4515582.1161141,14.63,0,0,0,dh" onclick="카페추천"> <img
               src="/resources/cafephoto/bar.jfif" width="290px" height="350px"
               alt="카페">
            </a>

         </div>
      </div>
      <!--신규 끝-->

      <!--인스타 그램-->
      <h2>인스타그램</h2>
      <div class="insta">
         <div class="flex-insta">
            <a href="https://www.instagram.com/cafedrape/" onclick="카페추천"> <img
               src="/resources/cafephoto/cafedrape.jpg" width="275px" height="400px"
               alt="카페">
            </a>

         </div>
         <div class="flex-insta1">
            <a href="https://www.instagram.com/cafe_obrett/" onclick="카페추천"> <img
               src="/resources/cafephoto/cafeobrett.jpg" width="275px" height="400px"
               alt="카페">
            </a>

         </div>
         <div class="flex-insta">
            <a href="https://www.instagram.com/mulgyul_hangang/" onclick="카페추천"> <img
               src="/resources/cafephoto/mulgyulhangang.jpg" width="275px" height="400px"
               alt="카페">
            </a>

         </div>
      </div>



                  <form id="actionForm" method="get">
               </form>
   </section>



   <%@ include file="./includes/footer.jsp"%>
<script type="text/javascript">
/* var searchForm = $(".search-container"); //검색을 눌렀을 떄 이벤트 적용
 */

 
   // 기중님 검색기능 함수 
   let moveForm = $("#moveForm");
     
     $(".move").on("click", function(e){
        e.preventDefault();

         moveForm.append("<input type='hidden' name='bno' value='" + $(this).attr("href")+ "'>");
         moveForm.attr("action", "/board/get");
         moveForm.submit();
     });
    

       $(".pageInfo a").on("click", function(e){
    
           e.preventDefault();
           moveForm.find("input[name='pageNum']").val($(this).attr("href"));
           moveForm.attr("action", "/board/list");
           moveForm.submit();
           
       });

    // 등록 버튼 클릭
    var actionForm = $("#actionForm");
            
          console.log("actionForm....." + actionForm);
    
       $("#reg").on("click", function(e){
          
          console.log("......Click.....");
          
          let member = "${member.memberid}";
            
            if(member == ""){
               alert("사업자 회원만 가능합니다.");
               return false;
            }
            
          e.preventDefault();
          actionForm.empty();
          actionForm.append("<input type='hidden' name='memberid' value='" + $(this).attr("href") + "'>");
          actionForm.attr("action", "/board/register");
          actionForm.submit();
       });
     
     

       $(".search_area button").on("click", function(e){
              e.preventDefault();
              
              let type = $(".search_area select").val();
              let keyword = $(".search_area input[name='keyword']").val();
              
              console.log("작동하니");
              
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
              moveForm.find("input[name='amount']").val(10);
              moveForm.attr("action", "/board/list");
              moveForm.submit();
          });

</script>

</body>

</html>