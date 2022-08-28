<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.Date"%>
<%@ page import="java.text.SimpleDateFormat"%>
<%
   Date nowTime = new Date();
   SimpleDateFormat sf = new SimpleDateFormat("yyyy년 MM월 dd일");
%>
    <!DOCTYPE html>
<html lang="ko">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<link href="${path}/resources/css/basic.css" rel="stylesheet"/> 
<head>
  <meta charset="UTF-8">
<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
 <link href="${path}/resources/css/list.css" rel="stylesheet"/>

  <!-- 돋보기-->
  <script src="https://kit.fontawesome.com/8eb5905426.js" crossorigin="anonymous"></script>

  <!--사용자 위치 파악-->


  <title>리스트</title>
</head>

<body class="top_list_page_body">
<!-- 로그인, 회원가입, 마이페이지 -->
   <%@ include file="../includes/header1.jsp"%>

<!-- 본문 영역 -->
<main class="mn-toplist pg-toplist"
      data-restaurant_uuid=""
      data-restaurant_count=""
      data-keyword="">

  <article class="contents">
    <header class="basic-info-list">
      <div class="inner" style="padding-bottom: 10px">
        <p class="status">

         <!-- 현재 날짜로 변경 -->
         <%= sf.format(nowTime) %>
          </time>
        </p>

        <h1 class="title">목록</h1>
        <h2 class="desc">
             원하는 카페를 찾아보세요~ <!-- 변경예정 -->
        </h2>
      </div>
    </header>

    <div class="container-list" id="contents_width">
      <div class="inner">

        <!-- 해당 레스토랑 목록 -->
        <section id="contents_list">
          <div class="hidden"><a id="reg" href='<c:out value="${member.memberid}" />' >글쓰기</a></div>
      <c:forEach items="${list}" var="list">
      
          <ul class="list-restaurants type-single-big top_list_restaurant_list">
            <li class="toplist_list">
              <div class="with-review">
                <div class="restaurant-item">
                
                
                    <!-- 이미지 보이기 -->
                  <a class="move" href='<c:out value="${list.bno }" />'>
                    <div class="thumb">
                      <img class="center-croping lazy"
                           alt="사진 - 주소"
                           src="/resources/image/list_photo_example.jpg"
                           width="260px" height="260px"
                        />
                    </div>
                  
                  </a>
                </div>
                
                <div class="list-content">
                  <div>
                    <figure>
                      <figcaption>
                      
                      
                      
                        <div class="info">
                          <div class="wannago_wrap">
                          
                          
                        </div>
                        <span class="title ">
                        <a class="move" href='<c:out value="${list.bno }" />'>
                         
                            <h3><c:out value="${list.cafename}"/></h3>
                        </a>
                        </span>
                        <strong class="point ">
                         <span style="color: #ff792a">평점</span>
                        </strong>
                        <p class="etc ">주소 : <c:out value="${list.address}"/></p>
                       
                      </div>
                    </figcaption>
                  </figure>
                  </div>
                  <div class="review-content no-bottom">
                  조회수: ${list.upcount }<br> 
                  <c:forEach items="${listWithReview}" var="listWithReview">
                  <c:set var="num" value="${list.bno }" />
                  <c:if test="${listWithReview.bno eq num}">
                  <c:if test="${not empty listWithReview.rownum }" >
                    <figure class="user">
                      <div class="thumb lazy"
                           data-original="#"
                           data-error="#">
                      </div>
                      <figcaption class="">
                        ID : <c:out value="${listWithReview.userid }" />
                      </figcaption>
                    </figure>
                      <div class="star-ratings">
                      <c:set var="grade" value="${listWithReview.replygrade *20 }" />
            <div class="star-ratings-fill space-x-2 text-lg" style="width: ${grade}%">
               <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
            </div>
            <div class="star-ratings-base space-x-2 text-lg">
               <span>★</span><span>★</span><span>★</span><span>★</span><span>★</span>
            </div>
            </div>
                    <div class="short_review">
                      <c:out value="${listWithReview.reply }" />
            </div>
               </c:if>    
               </c:if>    
                </c:forEach>
                  </div>
                  <div>
                  <div>
                    <a href='<c:out value="${list.bno }" />' class="btn-detail">
                      <div class="restaurant-more-name"><c:out value="${list.cafename }"></c:out></div>
                      <div class="restaurant-more-text">더보기 ></div>
                  </a>
                  </div>
                </div>
              </li>

            
                                          
          </ul>
          </c:forEach>
          
     
          
          



                  <form id="actionForm" method="get">
               </form>

        </section>

<div class="pageInfo_wrap">
         <div class="pageInfo_area">
            <ul id="pageInfo" class="pageInfo">
               <!-- 이전페이지 버튼 -->
                   <c:if test="${pageMaker.prev}">
                       <li class="pageInfo_btn previous"><a href="${pageMaker.startPage-1}">Previous</a></li>
                   </c:if>
            
               <!-- 각 번호 페이지 버튼 -->
                   <c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
                       <li class="pageInfo_btn ${pageMaker.cri.pageNum == num ? "active":"" }"><a href="${num}">${num}</a></li>
                   </c:forEach>

                   <!-- 다음페이지 버튼 -->
                   <c:if test="${pageMaker.next}">
                       <li class="pageInfo_btn next"><a href="${pageMaker.endPage + 1 }">Next</a></li>
                   </c:if>                  

            </ul>
         </div>
      </div>
        
<%@ include file="../includes/footer.jsp"%>
  
  <script type="text/javascript">
       $(document).ready(function(){
            
            var actionForm = $("#actionForm");
            
            console.log("actionForm....." + actionForm);
            
            $(".move").on("click", function(e){
               
               console.log("......Click.....");
               e.preventDefault();
               actionForm.empty();
               actionForm.append("<input type='hidden' name='bno' value='" + $(this).attr("href") + "'>");
               actionForm.attr("action", "/board/content");
               actionForm.submit();
               
            });
            
          $(".btn-detail").on("click", function(e){
               
               console.log("......Click.....");
               e.preventDefault();
               actionForm.empty();
               actionForm.append("<input type='hidden' name='bno' value='" + $(this).attr("href") + "'>");
               actionForm.attr("action", "/board/content");
               actionForm.submit();
            });
          
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
        });
       
       
       
       
       
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