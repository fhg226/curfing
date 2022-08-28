<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카페 상세 설명</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js" ></script>
 <script src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=nkahbmp7rl&submodules=geocoder"></script>
<link href="${path}/resources/css/content.css" rel="stylesheet"/>
</head>
<%@ include file="../includes/header1.jsp"%>

<!-- 본문 영역 -->
<main class="pg-cafe have-share-sns-another"
   data-cafe_key="" 
   data-cafe_name="카페 이름"
   data-metro_str="주소" 
   data-price_code_str="가격대"   
   data-parking_code_str="주차 가능 여부" 
   data-review_count="리뷰 수">

  <article class="contents">
    <!-- 레스토랑 상세 이미지 슬라이드 -->
    

    <div class="column-wrapper">

      <div class="column-contents">
        <div class="inner">

          <!-- 카페 상세 -->
          <section class="cafe-detail">
            <header>
              <div class="cafe_title_wrap">
                <span class="title">
                  <h1 class="cafe_name"><c:out value="${cafe_r.cafename }" /></h1>
                    <strong class="rate-point ">
                      <span>평점</span>
                    </strong>

                  <p class="branch"></p>
                </span>

                <div class="cafe_action_button_wrap">

                  <button data-oper="review" class="review_writing_button">
                    <i class="review_writing_button_icon"></i>
                    <span class="review_writing_button_text">리뷰쓰기</span>
                  </button>

                  
                  <form id="operForm" action="/board/review" method="get">
                    <input type="hidden" id="bno" name="bno" value='<c:out value="${cafe_r.bno }" />'>
                    <input type="hidden" id="userid" name="userid" value='<c:out value="${user.userid }" />'>
                  </form>
                </div>
              </div>

              <div class="status
                branch_none
                ">
                <a class="modify" href='<c:out value="${cafe_r.bno }" />' ><span>수정</span></a>
              </div>
            </header>

            </section>
            <!-- 상세 정보 -->
            <div class="test">
            <table class="info">

              <tbody>
                <tr class="only-desktop">
                  <th>주소</th>
                  <td id="addrInfo"><c:out value="${cafe_r.address }" />
                  </td>
                </tr>

                <tr class="only-desktop">
                  <th>전화번호</th>
                  <td><c:out value="${cafe_r.phone }" /></td>
                </tr>

                <tr>
                  <th>음식 종류</th>
                  <td>
                    <span><c:out value="${cafe_r.cafeinfo }" /></span>
                  </td>
                </tr>

                <tr>
                  <th>가격대</th>
                  <td><c:out value="${cafe_r.price }" /></td>
                </tr>

                <tr>
                  <th>주차</th>
                  <td><c:out value="${cafe_r.car }" /> </td>
                </tr>

                <tr>
                  <th>영업시간</th>
                  <td><c:out value="${cafe_r.opentime }" /> ~ <c:out value="${cafe_r.closetime }" /></td>
                </tr>



                <tr>
                  <th>휴일</th>
                  <td><c:out value="${cafe_r.dayoff }" /></td>
                </tr>

                <tr>
                  <th>웹 사이트</th>
                  <td>
                    <a href='http://<c:out value="${cafe_r.site }" />' class="under_line" target="_blank" style="color: black;">
                      <c:out value="${cafe_r.site }" />
                    </a>
                  </td>
                </tr>

                <tr>
                  <th>메뉴</th>
                  <td class="menu_td">
                    <ul class="cafe_MenuList">
                        <li class="cafe_MenuItem">
                          <span class="cafe_Menu"><c:out value="${menu.menun1 }" /></span>
                            <span class="cafe_MenuPrice"><c:out value="${menu.menun1 }" /></span>
                        </li>
                        <li class="cafe_MenuItem">
                          <span class="cafe_Menu"><c:out value="${menu.menun2 }" /></span>
                            <span class="cafe_MenuPrice"><c:out value="${menu.menup2 }" /></span>
                        </li>
                        <li class="cafe_MenuItem">
                          <span class="cafe_Menu"><c:out value="${menu.menun3 }" /></span>
                            <span class="cafe_MenuPrice"><c:out value="${menu.menup3 }" /></span>
                        </li>
                        <li class="cafe_MenuItem">
                          <span class="cafe_Menu"><c:out value="${menu.menun4 }" /></span>
                            <span class="cafe_MenuPrice"><c:out value="${menu.menup4 }" /></span>
                        </li>
                    </ul>
                  </td>
                </tr>

              </tbody>
           
            </table>
    <!-- 지도 -->
    <div>
      <div class="image-container" style="width: 300px;">

      <img class="image_size" style="width: 300px; height: 300px;" id="preview-image"
                  src="/resources/cafephoto/onion.jfif">
      </div>
    <div class="map-container" tabindex="0" style="position: relative; overflow: hidden; background: url(&quot;https://ssl.pstatic.net/static/maps/mantle/1x/pattern_1.png&quot;) 0px 0px repeat transparent;">
      <div id="map" style="width:100%;height:300px;"></div>
            
         <script>
         //지도보기 액션
               var Addr_val = '<c:out value = "${cafe_r.address}"/>';

               // 도로명 주소를 좌표 값으로 변환(API)
               naver.maps.Service.geocode({
                    query: Addr_val
                }, function(status, response) {
                    if (status !== naver.maps.Service.Status.OK) {
                        return alert('Something wrong!');
                    }
            
                    var result = response.v2, // 검색 결과의 컨테이너
                        items = result.addresses; // 검색 결과의 배열
                        
                    // 리턴 받은 좌표 값을 변수에 저장
                    let x = parseFloat(items[0].x);
                    let y = parseFloat(items[0].y);
                    
                    // 지도 생성
                    var map = new naver.maps.Map('map', {
                     center: new naver.maps.LatLng(y, x), // 지도를 열 좌표
                     zoom: 18
                  });
                  
                    // 지도에 해당 좌표 마커(아이콘 설정)
                    var markerOptions = {
                           position: new naver.maps.LatLng(y, x), //마커찍을 좌표
                           map: map,
                           icon: {
                               url: 'resources/image/marker.png', //아이콘 경로
                               size: new naver.maps.Size(22, 36), //아이콘 크기
                               origin: new naver.maps.Point(0, 0),
                               anchor: new naver.maps.Point(11, 35)
                           }
                       };
                    
                    // 마커 생성
                    var marker = new naver.maps.Marker(markerOptions);
            
                });

         </script>
      </div>
      </div>
    </div>
    </div>
              <p class="update_date">
                업데이트
                : <fmt:formatDate pattern="yyyy-MM-dd" value="${cafe_r.updateDate }" />
              </p>

            <div id="reviewListFocusId"></div>
          </section>

<!-- class="column-contents" -->

      <!-- 사이드 영역 -->
      <div class="side-wrap">
        <div class="column-side">
         

          <div class="inner">
            <!-- 관련 태그 -->
              <section class="module related-tags only-desktop">
                <span class="title"><c:out value="${cafe_r.cafename }" /> 관련 태그</span>

                <p>
                    <a href="#" class="tag-item"><c:out value="${hashtag_t.hashtagname }" /></a>
                </p>
              </section>
          </div>
        </div>
      </div>
    </div>
    </div>
    <!-- // side-wrap 종료 -->

          <section class="cafeReviewList">
            <header class="cafeReviewList__Header">
              <h2 class="cafeReviewList__Title">
                <span class="cafeReviewList__cafeName"><c:out value="${cafe_r.cafename }" /></span><span class="cafeReviewList__cafeNameSuffixDesktop"> 리뷰</span>
              </h2>

            </header>

            <ul class="cafeReviewList__ReviewList cafeReviewList__ReviewList--Loading">

            </ul>

            <div class="cafeReviewList__Empty">
              <span class="cafeReviewList__EmptyTitle">아직 작성된 리뷰가 없네요.</span>
              <span class="cafeReviewList__EmptyDescription">앱에서 해당 식당의 첫 리뷰를 작성해주시겠어요?</span>
            </div>
         
         <c:forEach items="${reviewList}" var="reviewList">
         
         <div class="cafeReviewList_Show">
           <div class="cafeReviewList_ShowId">
           <c:out value="${reviewList.userid }" />
           </div>
           <div class="cafeReviewList_ShowGrade">
           <div class="star-ratings">
                <c:set var="grade" value="${reviewList.replygrade *20 }" />
            <div class="star-ratings-fill space-x-2 text-lg" style="width: ${grade}%">
               <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
            </div>
            <div class="star-ratings-base space-x-2 text-lg">
               <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
            </div>
            </div>
           </div>
           <div class="cafeReviewList_ShowReview">
           <c:out value="${reviewList.reply }" /><br>
           <div id="deleteR">
           <a class="delR">삭제</a>
           <div class="modal_background"></div>
            <div class="modal_wrap">
                <div class="modal_close"><img class="closeImg" src="/resources/image/closeBtn.png" alt="x버튼"></div>
                <div class="text">
                <form id="Form" action="/board/removeReview" method="post">
                    <div id="write_pwd">비밀번호를 입력해주세요.</div>
                    <input type="hidden" id="rbno" name="rbno" value='<c:out value="${reviewList.bno }" />' > 
                    <input type="hidden" id="rno" name="rno" value='<c:out value="${reviewList.rno }" />' > 
                    <input type="hidden" id="rpwd" name="rpwd" value='<c:out value="${reviewList.rpwd }" />' > 
                    <input type="text" id="pwd" name="pwd" style="margin-bottom: 10px;"> <br>
                    <button class="checkPwd" type="submit">확인</button>
                </form>
                </div>
            </div>
           </div>
           </div>
           
         </div>
         </c:forEach>
         
          </section>

            
      
  </article>


<script type="text/javascript">

            $(document).ready(function(){
               var operForm = $("#operForm");
               
               $("button[data-oper='review']").on("click", function(e){
                  var user = "${user.userid}";
                  console.log(user);
                  if(user == ""){
                     alert("일반회원 로그인 후 이용해주세요");
                     return false;
                  }
                  
                  e.preventDefault();
                  operForm.attr("action", "/board/review?userid=${userid}")
                  operForm.submit();
               });
               
               $(".modify").on("click", function(e){
                     
                     console.log("......Click.....");
                     
                     var member = "${member.memberid}";
                  
                  if(member != "${cafe_r.memberid}"){
                     alert("게시자만 가능합니다.");
                     return false;
                  }
                  
                     e.preventDefault();
                     operForm.empty();
                     operForm.append("<input type='hidden' name='bno' value='" + $(this).attr("href") + "'>");
                     operForm.attr("action", "/board/modify");
                     operForm.submit();
                  });
               
               // 모달 열기
               function modalOpen() {
                   document.querySelector('.modal_wrap').style.display = 'block';
                   document.querySelector('.modal_background').style.display = 'block';
               }

               // 모달 끄기
               function modalClose() {
                   document.querySelector('.modal_wrap').style.display = 'none';
                   document.querySelector('.modal_background').style.display = 'none';
               }


               //버튼 클릭리스너 달기
               document.querySelector('.delR').addEventListener('click', modalOpen);
               document.querySelector('.modal_close').addEventListener('click', modalClose);

               
               $(".checkPwd").on("click", function(e){
                     
                     console.log("......Click.....");
                     
                     var pwd = $("#pwd").val();
                  console.log(pwd);
                  if(pwd !== $("#rpwd").val()){
                     alert("비밀번호가 맞지 않습니다.");
                     return false;
                  }
                  
                  
                  
                  });
               
               
            });
            
</script> 

<%@ include file="../includes/footer.jsp"%>

