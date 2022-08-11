<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link href="${path}/resources/css/basic.css" rel="stylesheet"/> 	
<head>
  <meta charset="UTF-8">
 

  <style>
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
      background-color: cadetblue;
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
      width: 500px;
      margin: 0 auto;

    }

    input {
      width: 80%;
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
      border-bottom: 2px solid rgb(233, 159, 159);
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
    }

    .mainMenu li>a:hover {
      text-decoration: none;
      background-color: cadetblue;
    }

  

    /* 본문 상단 페이지 제목 및 설명 */
    .pg-toplist .basic-info-list {
      background-color: #f7f7f7;
    }

    .inner {
    padding-bottom: 10px;
    }

    .pg-toplist .basic-info-list .status {
      font-size: 0.625rem;
      color: #9b9b9b;
      line-height: 1.2em;
      text-align: center;
    }

    p {
      display: block;
      margin-block-start: 1em;
      margin-block-end: 1em;
      margin-inline-start: 0px;
      margin-inline-end: 0px;
    }

    .pg-toplist .basic-info-list .title {
      margin-top: 11px;
      font-size: 1.625rem;
      color: #000000;
      line-height: 1.2em;
      text-align: center;
    }

  .pg-toplist .basic-info-list .desc {
    margin-top: 9px;
    font-size: 1.063rem;
    color: #9b9b9b;
    line-height: 1.2em;
    text-align: center;
  }

  .list-restaurants.type-single-big {
    margin-top: 5px;
  }

  .list-restaurants {
    overflow: hidden;
  }

  ol, ul, ul li {
    list-style: none;
  }

  ul {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    
  }

  .list-restaurants.type-single-big>li {
    float: none;
    padding: 18px 15px;
    width: 100%;
    border-bottom: 1px solid #dbdbdb;
  }

  .list-restaurants>li {
    box-sizing: border-box;
  }

  li {
    display: list-item;
    text-align: -webkit-match-parent;
  }

  .list-restaurants.type-single-big>li .with-review {
    position: relative;
  }

  .restaurant-item {
    position: relative;
    width: 260px;
    display: inline-block;
  }

  .restaurant-item .thumb {
    position: relative;
    overflow: hidden;
    
    background-size: cover;
    background-position: 50% 50%;
    
  }

  .list-content{
    display: inline-block;
    width: 635px;
    
    padding-left: 10px;
  }

   .restaurant-item .info {
    position: relative;
    text-decoration: none;
    
  }
  
  .pg-toplist .container-list .wannago_wrap {
    float: right;
    text-align: center;
    position: relative;
  }

  .pg-toplist .container-list .wannago_wrap .favorite {
    position: static;
    top: 12px;
    right: 10px;
    z-index: 2;
  }
  
  .btn-type-icon.favorite {
    background-image: url(https://mp-seoul-image-production-s3.mangoplate.com/web/resources/2018022864551sprites_desktop.png);
    background-position: -935px -583px;
    width: 32px;
    height: 32px;
  }

  .btn-type-icon {
    display: inline-block;
    text-indent: -9999px;
    vertical-align: middle;
  }

  button {
    appearance: none;
    cursor: pointer;
    border: 0px;
    border-radius: 0;
    background-color: transparent;
  }

  .pg-toplist .container-list .wannago_wrap .wannago_txt {
    font-size: 0.7rem;
    color: #9b9b9b;
    margin-top: 6px;
  }

  .restaurant-item .info .title {
    display: inline-block;
    overflow: hidden;
    max-width: 64%;
    font-size: 1.000rem;
    color: #555;
    line-height: 1.3em;
    vertical-align: middle;
    text-overflow: ellipsis;
    white-space: nowrap;
  }

  .restaurant-item .info .point {
    display: inline-block;
    font-size: 1.375rem;
    color: #ff792a;
    vertical-align: middle;
    line-height: 1em;
  }

  .type-single-big .review-content {
    display: block;
    position: relative;
    overflow: visible;
    padding-left: 40px;
    height: auto;
    min-height: 40px;
  }

  .list-restaurants .review-content {
    font-size: 0.875rem;
    line-height: 21px;
  }

  .type-single-big .review-content .user {
    display: inline;
    position: static;
    width: auto;
    font-size: 0.688rem;
    line-height: 17px;
  }

  .type-single-big .review-content .user>.thumb {
    position: absolute;
    top: 4px;
    left: 2px;
    overflow: hidden;
    height: 30px;
    width: 30px;
    border-radius: 30px;
  }

  .type-single-big .review-content .user>figcaption {
    display: inline;
    font-weight: bold;
    color: #000000;
    line-height: 18px;
  }

  .list-restaurants .review-content {
    position: relative;
    overflow: hidden;
    margin-top: 8px;
    padding-left: 52px;
    height: 150px;
    font-size: 0.875rem;
    line-height: 21px;
    color: #333;
  }

  .pg-toplist .container-list .long_review {
    display: none;
  }

  .pg-toplist .container-list .review_more_btn {
    color: #ff792a;
    cursor: pointer;
  }

  .pg-toplist .container-list .restaurant-more-name {
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    word-wrap: normal;
    display: inline-block;
    text-align: right;
    width: 570px;
  }

  .pg-toplist .container-list .restaurant-more-text {
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
    word-wrap: normal;
    display: inline-block;
    text-align: right;
  }

  .more_btn_wrapper {
    display: flex;
    justify-content: space-between;
    box-pack: justify;
    align-items: center;
    box-align: center;
    align-self: center;
    min-width: 130px;
    height: 72px;
    margin: 0 auto;
    font-size: 19px;
    color: #ff792a;
    cursor: pointer;
    }

    .more_btn_wrapper:before {
    background-image: url(https://mp-seoul-image-production-s3.mangoplate.com/web/resources/2018022864551sprites_mobile.png);
    background-position: -588px -539px;
    width: 22px;
    height: 22px;
    content: '';
    margin-right: 17px;
    margin-left: 420px;
    }

    .more_btn_wrapper:after {
    background-image: url(https://mp-seoul-image-production-s3.mangoplate.com/web/resources/2018022864551sprites_mobile.png);
    background-position: -588px -539px;
    width: 22px;
    height: 22px;
    content: '';
    margin-left: 17px;
    margin-right: 420px;
    }

  /* footer */
  .bottom {
      border-top: 1px solid grey;
      border-bottom: 1px solid grey;
      padding: 10px;
      display: flex;
      justify-content: space-around;
      background-color: white;

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
      background-color: white;
      text-align: left;
      padding: 10px;
    }
  </style>

  <!-- 돋보기-->
  <script src="https://kit.fontawesome.com/8eb5905426.js" crossorigin="anonymous"></script>

  <!--사용자 위치 파악-->
<script>
    (function () {
      window.onload = function () {
        var startPos;
        var geoSuccess = function (position) {
          startPos = position;
          document.getElementById('startLat').innerHTML = startPos.coords.latitude;
          document.getElementById('startLon').innerHTML = startPos.coords.longitude;
        };
        navigator.geolocation.getCurrentPosition(geoSuccess);
      };
    })();
  </script>

  <title>리스트</title>
</head>

<body class="top_list_page_body">
  <header>
    <div class="topNav">
      <ul>
        <li><a href="login.html">로그인</a></li>
        <li><a href="join.html">회원가입</a></li>
        <li><a class="aaa" href="#" role="button" tabindex="0" aria-expanded="false" aria-label="마이페이지">
          <img src="/resources/image/user.png" width="20px" height="15.5px" alt aria-hidden="true"
          date-noaft data-atf="1" data-frt="0">
        </a></li>
      </ul>
    </div>

    <!-- 로고 -->
    <div class="logo" mathod="get">
      <a href="main">
        Curfing
      </a>
    </div>
  </header>

  <!--검색 기능-->
  <div class="container">
    <div class="search-container">
      <form action="/action_page.php">
        <input type="text" placeholder="검색" name="search">
        <button type="submit" class="fa fa-search"></button>
      </form>
    </div>
    <!-- 메인 메뉴 -->

    <div class="mainMenu">
        <ul>
        <li> <a href="popular">인기</a></li>
        <li ><a href="scope">별점</a></li>
        <li ><a href="rising">요즘뜨는</a></li>
        <li ><a href="atmosphere">분위기</a></li>
      </ul>
    </div>
  </div>


<!-- 본문 영역 -->
<main class="mn-toplist pg-toplist"
      data-restaurant_uuid=""
      data-restaurant_count=""
      data-keyword="">

  <article class="contents">
    <header class="basic-info-list">
      <div class="inner" style="padding-bottom: 10px">
        <p class="status">
          <span>
            클릭수 <!-- 현재 클릭수로 변경 -->
          </span> |
          <time datetime=""> <!-- 현재 날짜로 변경 -->
            날짜
          </time>
        </p>

        <h1 class="title">별점</h1>
        <h2 class="desc">
         별을 많이 받은 카페 
        </h2>
      </div>
    </header>

    <div class="container-list" id="contents_width">
      <div class="inner">

        <!-- 해당 레스토랑 목록 -->
        <section id="contents_list">
          <p class="hidden">목록</p>
          
<c:forEach items="${List}" var="star">
          <ul class="list-restaurants type-single-big top_list_restaurant_list">
            <li class="toplist_list">
              <div class="with-review">
                <div class="restaurant-item">
                  <a href="content.html">
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
                            <button class="btn-type-icon favorite wannago_btn "
                            data-restaurant_uuid=""
                            data-action_id="">
                          </button>
                          <p class="wannago_txt">찜 </p>
                        </div>
                        <span class="title ">
                            <c:out value="${ster.rno}"/>
                            <h3> 카페 이름</h3>
                          </a>
                        </span>
                        <strong class="point  ">
                          <span>평점</span>
                        </strong>
                        <p class="etc ">주소</p>
                       
                      </div>
                    </figcaption>
                  </figure>
                  </div>
                  <div class="review-content no-bottom">
                    <figure class="user">
                      <div class="thumb lazy"
                           data-original="#"
                           data-error="#">
                      </div>
                      <figcaption class="">
                        아이디
                      </figcaption>
                    </figure>
                    <p class="short_review ">
                      짧은 리뷰<br>
                      aljfal<br>
                      afadfads<br>
                    </p>
    
                    <p class="long_review ">
                      긴 리뷰
                    </p>
    
                      <span class="review_more_btn" >더보기</span>
                  </div>
                  <div>
                    <a href="content.html" class="btn-detail">
                      <div class="restaurant-more-name">카페 이름</div>
                      <div class="restaurant-more-text">더보기 ></div>
                  </a>
                  </div>
                </div>
              </li>

          
                  
                                                  
          </ul>
	</c:forEach>
          <div class="more_btn_wrapper" role="button">
              더보기
            
          </div>
        </section>

        
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
    </div>
  </footer>
</body>

</html>