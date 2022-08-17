<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>카페 상세 설명</title>
<script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
<style>
* {
	margin: 0px;
	padding: 0px;
}

html, body {
	font-size: 13px;
	font-family: 돋음체, sans-serif, serif;
}

body {
	width: 980px; /* % - 브라우저 크기 기준 */
	margin: 0 auto;
}

li {
	list-style: none;
}

a {
	text-decoration: none;
	color: black;
}

img {
	border: none;
}

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

    body {
      position: relative;
      font-size: 100%;
      line-height: 100%;
    }

    /* 본문 */
    .pg-cafe article.contents {
    position: relative;
    }

    .pg-cafe .cafe-photos {
    width: 100%;
    overflow: hidden;
    }

    .owl-carousel {
    position: relative;
    width: 100%;
    }

    .owl-carousel .owl-wrapper-outer {
    overflow: hidden;
    position: relative;
    width: 100%;
    }

    .pg-cafe .cafe-photos .owl-item {
    position: relative;
    }

    figure {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 40px;
    margin-inline-end: 40px;
    }

    .pg-cafe .cafe-photos .cafe-photos-item {
    display: block;
    position: relative;
    height: 100%;
    width: 100%;
    overflow: hidden;
    background-size: cover;
    background-position: 50% 50%;
    cursor: pointer;
    }

    .center-croping {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    object-fit: cover;
    }

    img {
    color: rgba(255,255,255,0);
    text-indent: -9999px;
    }

    img {
    border: none;
    vertical-align: top;
    }

    .pg-cafe .cafe-photos .cafe-photos-item .last_image {
    position: absolute;
    display: none;
    }

    .pg-cafe .cafe-photos .cafe-photos-item .last_image .txt {
    position: absolute;
    top: 50%;
    left: 50%;
    color: white;
    transform: translate(-50%, -50%);
    text-align: center;
    line-height: 1.2rem;
    width: 100%;
    }

    .pg-cafe .cafe-photos .cafe-photos-item .last_image .arrow-white {
    display: inline-block;
    margin-left: 12px;
    }

    .owl-carousel .owl-wrapper:after {
    content: ".";
    display: block;
    clear: both;
    visibility: hidden;
    line-height: 0;
    height: 0;
    }

    .owl-theme .owl-controls {
    margin-top: 10px;
    text-align: center;
    }

    .owl-controls {
    user-select: none;
    -webkit-tap-highlight-color: transparent;
    }

    .owl-controls .owl-page, .owl-controls .owl-buttons div {
    cursor: pointer;
    }

    .btn-nav.prev {
    left: 0;
    border-radius: 0px 70px 70px 0px;
    }

    .btn-nav {
    position: absolute;
    top: 50%;
    z-index: 1;
    margin-top: -35px;
    padding: 0;
    height: 70px;
    width: 62px;
    text-align: center;
    cursor: pointer;
    opacity: .4;
    }

    .btn-nav.next:before {
    margin-right: -10px;
    background-image: url(https://mp-seoul-image-production-s3.mangoplate.com/web/resources/2018022864551sprites_desktop.png);
    background-position: -935px -179px;
    width: 28px;
    height: 45px;
    }

    .btn-nav:before {
    content: '';
    display: inline-block;
    }


    .pg-cafe .column-contents {
    height: 100%;
    }

    .pg-cafe .cafe-detail {
    margin: 11px 0 14px 0;
    border-bottom: 1px solid #e9e9e9;
    }

    .pg-cafe .cafe-detail>header {
    position: relative;
    padding-bottom: 10px;
    min-height: 74px;
    }

    header, h1 {
    font-size: 100%;
    }

    .pg-cafe .cafe-detail>header .cafe_title_wrap {
    display: flex;
    flex-direction: row;
    box-direction: normal;
    box-orient: horizontal;
    }

    .pg-cafe .cafe-detail>header .title {
    display: block;
    box-sizing: border-box;
    position: relative;
    max-width: 80%;
    font-size: 1.688rem;
    color: #000000;
    line-height: 1.3em;
    }

    .pg-cafe .cafe-detail>header .title .cafe_name {
    display: inline-block;
    max-width: 100%;
    word-break: break-all;
    }

    h1, h2, h3, h4, h5, h6, strong, th {
    font-weight: normal;
    }

    .pg-cafe .cafe-detail>header .title>.rate-point {
    color: #ff792a;
    margin-left: 5px;
    }

    .pg-cafe .cafe-detail>header .title>.rate-point.expected {
    color: #e9e9e9;
    }

    .pg-cafe .cafe-detail>header .title .branch {
    font-size: 1.1rem;
    color: #888;
    line-height: 1.2rem;
    }

    .pg-cafe .cafe-detail>header .cafe_action_button_wrap {
    display: flex;
    flex-direction: row;
    box-direction: normal;
    box-orient: horizontal;
    margin-left: auto;
    }

    .pg-cafe .cafe-detail>header .review_writing_button {
    display: flex;
    flex-direction: column;
    box-direction: normal;
    box-orient: vertical;
    align-items: center;
    box-align: center;
    margin: 0 19px 0 0;
    }

    .pg-cafe .cafe-detail>header .review_writing_button_icon {
    display: block;
    width: 32px;
    height: 32px;
    background-image: url(https://mp-seoul-image-production-s3.mangoplate.com/web/resources/review_writing_icon.png);
    background-size: cover;
    background-repeat: no-repeat;
    }

    i {
    font-style: italic;
    }

    .pg-cafe .cafe-detail>header .review_writing_button_text {
    margin-top: 12px;
    font-size: 0.8rem;
    line-height: 1.3;
    color: #9B9B9B;
    }

    .pg-cafe .cafe-detail>header .wannago_wrap {
    cursor: pointer;
    display: inline-block;
    text-align: center;
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

    .pg-cafe .cafe-detail>header .wannago_wrap .wannago_txt {
    color: #9b9b9b;
    font-size: 0.8rem;
    margin-top: 12px;
    }

    .pg-cafe .cafe-detail>header .status {
    font-size: 0.688rem;
    color: #9b9b9b;
    }

    .pg-cafe .cafe-detail>header .status .cnt {
    margin-right: 10px;
    }

    .pg-cafe .cafe-detail>header .status .cnt:before {
    content: '';
    display: inline-block;
    margin: -3px 3px 0 0;
    vertical-align: middle;
    }

    .test{
      display: flex;
      justify-content: space-between;
      overflow: hidden;
    }

    .pg-cafe .cafe-detail .info {
    display: inline-block;
    
    }

    tbody {
    display: table-row-group;
    vertical-align: middle;
    border-color: inherit;

    }

    table {
    border-collapse: collapse;
    border-spacing: 0;
    box-sizing: border-box;
    text-indent: initial;
    border-color: grey;
    }

    tr {
    display: table-row;
    vertical-align: inherit;
    border-color: inherit;
    }

    .cafe__InfoAddress--Rectangle {
    border-radius: 2px;
    border: solid 1px #e9e9e9;
    padding: 0 4px;
    margin-right: 2px;
    font-size: 12px;
    color: #7f7f7f;
    }

    .cafe__InfoAddress--Text {
    font-size: 14px;
    color: #7f7f7f;
    line-height: normal;
    }

    th {
    display: table-cell;
    text-align: -internal-center;
    }

    td {
    display: table-cell;
    vertical-align: inherit;
    padding: 10px 30px;
    }

    .under_line {
    text-decoration: underline !important;
    }

    .cafe_MenuList {
    display: flex;
    flex-direction: column;
    box-direction: normal;
    box-orient: vertical;
    }

    .cafe_MenuItem {
    display: flex;
    flex-direction: row;
    box-direction: normal;
    box-orient: horizontal;
    border-bottom: 1px solid #e9e9e9;
    margin-bottom: 4px;
    }

    .cafe_Menu {
    flex: 1;
    display: inline-block;
    margin-right: 30px;
    white-space: normal;
    }

    .cafe_MenuPrice {
    margin-left: auto;
    }

    .pg-cafe .cafe-detail .update_date {
    padding: 20px 10px 19px 10px;
    font-size: 12px;
    text-align: right;
    color: rgba(79,79,79,0.6);
    }

    .pg-cafe .cafe-detail .info .list-thumb-photos {
    overflow: hidden;
    margin-top: 6px;
    padding-top: 0;
    }

    .pg-cafe .cafe-detail .info td button {
    position: relative;
    }

    .list-thumb-photos.size-small .btn-thumb {
    height: 44px;
    width: 44px;
    }

    .list-thumb-photos .btn-thumb {
    display: block;
    float: left;
    overflow: hidden;
    margin-right: 5px;
    background-size: cover;
    background-position: 50% 50%;
    }

    .center-croping {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    object-fit: cover;
    }


    p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    }

    .cafeReviewList {
    display: flex;
    flex-direction: column;
    box-direction: normal;
    box-orient: vertical;
    }

    .cafeReviewList__Header {
    display: flex;
    margin-bottom: 14px;
    }

    .cafeReviewList__Title {
    font-size: 18px;
    line-height: 1.2;
    color: #4F4F4F;
    }

    .cafeReviewList__AllCount:before {
    display: inline;
    content: '(';
    }

    .cafeReviewList__AllCount:after {
    display: inline;
    content: ')';
    }

    .cafeReviewList__ReviewCount:before {
    display: inline;
    content: '(';
    }

    .cafeReviewList__ReviewCount:after {
    display: inline;
    content: ')';
    }
    .cafeReviewList__FilterList {
    display: flex;
    margin-left: auto;
    }
    
    ol, ul, ul li {
    list-style: none;
    }

    .cafeReviewList__FilterItem {
    display: flex;
    flex-direction: row;
    box-direction: normal;
    box-orient: horizontal;
    align-items: center;
    box-align: center;
    }

    .cafeReviewList__FilterButton {
    padding-right: 3px;
    font-size: 16px;
    color: #9b9b9b;
    }

    .cafeReviewList__FilterItem:after {
    content: '|';
    margin: 0 7px;
    color: #9b9b9b;
    }

    input, textarea, keygen, select, button {
    font-family: "SpoqaHanSans", "Noto Sans SC", "APPLE SD Gothic NEO", "sans-serif";
    }

    .cafeReviewList__FilterItem:last-child .cafeReviewList__FilterButton {
    padding-right: 0;
    }

    .cafeReviewList__ReviewList {
    display: flex;
    flex-direction: column;
    box-direction: normal;
    box-orient: vertical;
    }

    .cafeReviewItem {
    position: relative;
    border-bottom: 1px solid #DBDBDB;
    }

    .cafeReviewItem__Link {
    display: flex;
    flex-direction: row;
    box-direction: normal;
    box-orient: horizontal;
    padding: 20px 0 52px 0;
    }

    .cafeReviewItem__User {
    display: flex;
    flex-direction: column;
    box-direction: normal;
    box-orient: vertical;
    flex-basis: 70px;
    margin: 15px 35px 0 8px;
    }

    .cafeReviewItem__UserPictureWrap {
    width: 70px;
    height: 70px;
    margin-bottom: 5px;
    border-radius: 50%;
    overflow: hidden;
    background-color: #dbdbdb;
    }

    .cafeReviewItem__UserPicture {
    width: 100%;
    height: 100%;
    border-radius: 50%;
    object-fit: cover;
    }

    .cafeReviewItem__UserNickName {
    margin-bottom: 2px;
    font-size: 13px;
    line-height: 1.3;
    text-align: center;
    word-break: break-all;
    color: #555555;
    }

    .cafeReviewItem__UserStat {
    display: flex;
    }

    .cafeReviewItem__UserStatItem {
    display: flex;
    align-items: center;
    align-items: center;
    box-align: center;
    margin-right: 2px;
    font-size: 10px;
    color: #CBCBCB;
    }

    .cafeReviewItem__UserStatItem--Review:before {
    background-image: url(https://mp-seoul-image-production-s3.mangoplate.com/web/resources/2018022864551sprites_desktop.png);
    background-position: -996px -600px;
    width: 9px;
    height: 8px;
    }

    .cafeReviewItem__UserStatItem:before {
    content: '';
    margin: 0 2px 0 2px;
    }

    .cafeReviewItem__UserStatItem:last-child {
    margin-right: 0;
    }

    .cafeReviewItem__UserStatItem {
    display: flex;
    align-items: center;
    align-items: center;
    box-align: center;
    margin-right: 2px;
    font-size: 10px;
    color: #CBCBCB;
    }

    .cafeReviewItem__UserStatItem--Follower:before {
    background-image: url(https://mp-seoul-image-production-s3.mangoplate.com/web/resources/2018022864551sprites_desktop.png);
    background-position: -998px -729px;
    width: 8px;
    height: 8px;
    }

    .cafeReviewItem__UserStatItem:before {
    content: '';
    margin: 0 2px 0 2px;
    }

    .cafeReviewList__Empty {
    display: none;
    padding: 70px 0 150px;
    font-size: 21px;
    line-height: 1.4;
    text-align: center;
    color: #999;
    background-color: transparent;
    }

    .cafeReviewList__EmptyTitle {
    display: block;
    }

    .cafeReviewList__EmptyDescription {
    font-size: 16px;
    }

    .cafeReviewList__MoreReviewButton {
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

    .cafeReviewList__MoreReviewButton:before {
    background-image: url(https://mp-seoul-image-production-s3.mangoplate.com/web/resources/2018022864551sprites_mobile.png);
    background-position: -588px -539px;
    width: 22px;
    height: 22px;
    content: '';
    margin-right: 17px;
    }

    .cafeReviewList__MoreReviewButton:after {
    background-image: url(https://mp-seoul-image-production-s3.mangoplate.com/web/resources/2018022864551sprites_mobile.png);
    background-position: -588px -539px;
    width: 22px;
    height: 22px;
    content: '';
    margin-left: 17px;
    }


    .pg-cafe .column-side {
    overflow: hidden;
    height: 100%;
    }

    .pg-cafe .map-container {
    display: inline-block;
    height: 45  0px;
    width: 500px;
    background-color: #3e3e3e;
    position: relative;
    cursor: pointer;
    margin-bottom: 10px;
    }

    .pg-cafe .module {
    position: relative;
    }

    .pg-cafe .module>.title {
    font-size: 1.125rem;
    line-height: 1.2em;
    color: #ff792a;
    text-align: left;
    }

    a:link, a:visited, a:active, a:focus {
    text-decoration: none;
    }

    .tag-item {
    display: inline-block;
    color: #6a6a6a;
    letter-spacing: -0.1em;
    border: 1px solid #cbcbcb;
    border-radius: 50px;
    background-color: #fff;
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
</head>
<%@ include file="../includes/header.jsp"%>

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
    <aside class="cafe-photos">

        <div class="list-photo_wrap owl-carousel owl-theme" style="opacity: 1; display: block;">
          <div class="owl-wrapper-outer">
            <div class="owl-wrapper" style="width: 1600px; left: 0px; display: block; transition: all 0ms ease 0s; transform: translate3d(0px, 0px, 0px);">
              <div class="owl-item" style="width: 160px;">
                <figure class="list-photo">
                <meta content="#"/>
                  <figure class="cafe-photos-item" 
                    role="img" aria-label="카페 이름 - 지역 카페 | 카페 검색" title="카페 이름 - 지역 카페 | 카페 검색">
                    <img class="center-croping"
                       src="resources/cafephoto/커피.jpg"
                      alt="카페 사진 - 주소"
                      width="200px"
                      height="200px"/>
              
                  <div class="last_image">
                    <p class="txt">
                      사진 더보기
                      <span class="arrow-white"></span>
                    </p>
                  </div>
                  </figure>
                </figure>
              </div>
              <div class="owl-item" style="width: 160px;">
                <figure class="list-photo">
                <meta content="#"/>
                  <figure class="cafe-photos-item" 
                    role="img" aria-label="카페 이름 - 지역 카페 | 카페 검색" title="카페 이름 - 지역 카페 | 카페 검색">
                    <img class="center-croping"
                       src="resources/cafephoto/커피.jpg"
                      alt="카페 사진 - 주소"
                      width="200px"
                      height="200px"/>
              
                  <div class="last_image">
                    <p class="txt">
                      사진 더보기
                      <span class="arrow-white"></span>
                    </p>
                  </div>
                  </figure>
                </figure>
              </div>
              <div class="owl-item" style="width: 160px;">
                <figure class="list-photo">
                <meta content="#"/>
                  <figure class="cafe-photos-item" 
                    role="img" aria-label="카페 이름 - 지역 카페 | 카페 검색" title="카페 이름 - 지역 카페 | 카페 검색">
                    <img class="center-croping"
                       src="resources/cafephoto/커피.jpg"
                      alt="카페 사진 - 주소"
                      width="200px"
                      height="200px"/>
              
                  <div class="last_image">
                    <p class="txt">
                      사진 더보기
                      <span class="arrow-white"></span>
                    </p>
                  </div>
                  </figure>
                </figure>
              </div>
              <div class="owl-item" style="width: 160px;">
                <figure class="list-photo">
                <meta content="#"/>
                  <figure class="cafe-photos-item" 
                    role="img" aria-label="카페 이름 - 지역 카페 | 카페 검색" title="카페 이름 - 지역 카페 | 카페 검색">
                    <img class="center-croping"
                       src="resources/cafephoto/커피.jpg"
                      alt="카페 사진 - 주소"
                      width="200px"
                      height="200px"/>
              
                  <div class="last_image">
                    <p class="txt">
                      사진 더보기
                      <span class="arrow-white"></span>
                    </p>
                  </div>
                  </figure>
                </figure>
              </div>
              <div class="owl-item" style="width: 160px;">
                <figure class="list-photo">
                <meta content="#"/>
                  <figure class="cafe-photos-item" 
                    role="img" aria-label="카페 이름 - 지역 카페 | 카페 검색" title="카페 이름 - 지역 카페 | 카페 검색">
                    <img class="center-croping"
                       src="resources/cafephoto/커피.jpg"
                      alt="카페 사진 - 주소"
                      width="200px"
                      height="200px"/>
              
                  <div class="last_image">
                    <p class="txt">
                      사진 더보기
                      <span class="arrow-white"></span>
                    </p>
                  </div>
                  </figure>
                </figure>
              </div>
            </div>    
          </div>
          <div class="owl-controls clickable">
            <div class="owl-buttons">
              <div class="owl-prev">
                <button class="btn-nav prev" style="display: none;"></button>
              </div>
              <div class="owl-next">
                <button class="btn-nav next">
                </button>
              </div>
            </div>
          </div>
        </div>  
    </aside>

    <div class="column-wrapper">

      <div class="column-contents">
        <div class="inner">

          <!-- 카페 상세 -->
          <section class="cafe-detail">
            <header>
              <div class="cafe_title_wrap">
                <span class="title">
                  <h1 class="cafe_name"><c:out value="${content.name }" /></h1>
                    <strong class="rate-point ">
                      <span>평점</span>
                    </strong>

                  <p class="branch"></p>
                </span>

                <div class="cafe_action_button_wrap">

                  <button data-oper="review" class="review_writing_button" data-cafe_key="">
                    <i class="review_writing_button_icon"></i>
                    <span class="review_writing_button_text">리뷰쓰기</span>
                  </button>

                  <div class="wannago_wrap">
                    <button data-oper="wish" class="btn-type-icon favorite wannago_btn " data-cafe_uuid="" data-action_id=""></button>
                    <p class="wannago_txt">찜</p>
                  </div>
                  
                  <form id="operForm" action="/board/review" method="get">
                    <input type="hidden" id="bno" name="bno" value='<c:out value="${content.bno }" />'>
                  </form>
                </div>
              </div>

              <div class="status
                branch_none
                ">
                <span class="cnt hit">본 숫자</span>
                <span class="cnt review">리뷰 숫자</span>
                <span class="cnt favorite">찜 숫자</span>
              </div>
            </header>

            </section>
            <!-- 상세 정보 -->
            <div class="test">
            <table class="info">
              <caption>카페 상세 정보</caption>

              <tbody>
                <tr class="only-desktop">
                  <th>주소</th>
                  <td><c:out value="${content.address }" /><br/>
                        <span class="cafe__InfoAddress--Rectangle">지번</span>
                      <span class="cafe__InfoAddress--Text">지번 주소</span>
                  </td>
                </tr>

                <tr class="only-desktop">
                  <th>전화번호</th>
                  <td><c:out value="${content.phone }" /></td>
                </tr>

                <tr>
                  <th>음식 종류</th>
                  <td>
                    <span><c:out value="${content.foodType }" /></span>
                  </td>
                </tr>

                <tr>
                  <th>가격대</th>
                  <td><c:out value="${content.price }" /></td>
                </tr>

                <tr>
                  <th>주차</th>
                  <td><c:out value="${content.parking }" /> </td>
                </tr>

                <tr>
                  <th>영업시간</th>
                  <td><c:out value="${content.salesTime }" /></td>
                </tr>



                <tr>
                  <th>휴일</th>
                  <td><c:out value="${content.holiday }" /></td>
                </tr>

                <tr>
                  <th>웹 사이트</th>
                  <td>
                    <a href='<c:out value="${content.site }" />' class="under_line" target="_blank" style="color: black;">
                      <c:out value="${content.site }" />
                    </a>
                  </td>
                </tr>

                <tr>
                  <th>메뉴</th>
                  <td class="menu_td">
                    <ul class="cafe_MenuList">
                        <li class="cafe_MenuItem">
                          <span class="cafe_Menu"><c:out value="${content.menu }" /></span>
                            <span class="cafe_MenuPrice">가격1</span>
                        </li>
                        <li class="cafe_MenuItem">
                          <span class="cafe_Menu">메뉴2</span>
                            <span class="cafe_MenuPrice">가격2</span>
                        </li>
                        <li class="cafe_MenuItem">
                          <span class="cafe_Menu">메뉴3</span>
                            <span class="cafe_MenuPrice">가격3</span>
                        </li>
                        <li class="cafe_MenuItem">
                          <span class="cafe_Menu">메뉴4</span>
                            <span class="cafe_MenuPrice">가격4</span>
                        </li>
                    </ul>
                  </td>
                </tr>

              </tbody>
           
            </table>
    <!-- 지도 -->
    <div class="map-container" tabindex="0" style="position: relative; overflow: hidden; background: url(&quot;https://ssl.pstatic.net/static/maps/mantle/1x/pattern_1.png&quot;) 0px 0px repeat transparent;">
      <div class="map_layer"></div>
      <div style="position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; overflow: visible; width: 100%; height: 100%; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); z-index: 0; cursor: url(&quot;https://ssl.pstatic.net/static/maps/mantle/1x/openhand.cur&quot;), default;">
        <div style="position: absolute; display: block; margin: 0px; padding: 0px; border: 0px none; top: 0px; left: 0px; overflow: visible; width: 100%; height: 100%; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); z-index: 0;">
        
        </div>
      </div>
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3165.759534518026!2d126.92489251564653!3d37.49000053626465!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x357c9f55d5800531%3A0xa3d2bc3503b9f38d!2z7ZWc6rWt7KCV67O06rWQ7Jyh7JuQ!5e0!3m2!1sko!2skr!4v1658978978119!5m2!1sko!2skr" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>"
      </div>
    </div>
    </div>
              <p class="update_date">
                업데이트
                : 2022. 0. 00
              </p>

            <div id="reviewListFocusId"></div>
          </section>

          <section class="cafeReviewList">
            <header class="cafeReviewList__Header">
              <h2 class="cafeReviewList__Title">
                <span class="cafeReviewList__cafeName"><c:out value="${content.name }" /></span><span class="cafeReviewList__cafeNameSuffixDesktop"> 리뷰</span>
                <span class="cafeReviewList__AllCount">
                  0
                </span>
              </h2>

              <ul class="cafeReviewList__FilterList">
                <li class="cafeReviewList__FilterItem">
                  <button class="cafeReviewList__FilterButton cafeReviewList__FilterButton--Selected cafeReviewList__AllFilterButton">
                    전체
                    <span class="cafeReviewList__ReviewCount">
                      0
                    </span>
                  </button>
                </li>

                <li class="cafeReviewList__FilterItem">
                  <button class="cafeReviewList__FilterButton cafeReviewList__RecommendFilterButton">
                    맛있다
                    <span class="cafeReviewList__ReviewCount">
                      0
                    </span>
                  </button>
                </li>

                <li class="cafeReviewList__FilterItem">
                  <button class="cafeReviewList__FilterButton cafeReviewList__OkFilterButton">
                    괜찮다
                    <span class="cafeReviewList__ReviewCount">
                      0
                    </span>
                  </button>
                </li>

                <li class="cafeReviewList__FilterItem">
                  <button class="cafeReviewList__FilterButton cafeReviewList__NotRecommendButton">
                    별로
                    <span class="cafeReviewList__ReviewCount">
                      0
                    </span>
                  </button>
                </li>
              </ul>
            </header>

            <ul class="cafeReviewList__ReviewList cafeReviewList__ReviewList--Loading">

            </ul>

            <div class="cafeReviewList__Empty">
              <span class="cafeReviewList__EmptyTitle">아직 작성된 리뷰가 없네요.</span>
              <span class="cafeReviewList__EmptyDescription">앱에서 해당 식당의 첫 리뷰를 작성해주시겠어요?</span>
            </div>

            <div class="cafeReviewList__MoreReviewButton cafeReviewList__MoreReviewButton--Hide" role="button">
              더보기
            </div>
          </section>

            
      <!-- class="column-contents" -->

      <!-- 사이드 영역 -->
      <div class="side-wrap">
        <div class="column-side">
         

          <div class="inner">
            <!-- 관련 태그 -->
              <section class="module related-tags only-desktop">
                <span class="title">이 카페 관련 태그</span>

                <p>
                    <a href="#" class="tag-item">태그</a>
                    <a href="#" class="tag-item">태그</a>
                    <a href="#" class="tag-item">태그</a>
                    <a href="#" class="tag-item">태그</a>
                    <a href="#" class="tag-item">태그</a>
                    <a href="#" class="tag-item">태그</a>
                    <a href="#" class="tag-item">태그</a>
                </p>
              </section>
          </div>
        </div>
      </div>
    </div>
    <!-- // side-wrap 종료 -->
  </article>


<%@ include file="../includes/footer.jsp"%>

<script type="text/javascript">
				$(document).ready(function(){
					var operForm = $("#operForm");
					
					$("button[data-oper='review']").on("click", function(e){
						operForm.attr("action", "/board/review").submit();
					});
					
					$("button[data-oper='wish']").on("click", function(e){
						
					});
				});
			</script> 