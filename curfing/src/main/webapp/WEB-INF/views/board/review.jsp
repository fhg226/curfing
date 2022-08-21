<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<!-- saved from url=(0061)file:///C:/Users/user/Desktop/project-curfing/listupdate.html -->
<html lang="ko">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  
  <title>리뷰 작성 </title>
<link href="${path}/resources/css/basic.css" rel="stylesheet"/> 
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
/* header */

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
	font-size: 50pt;
	margin-bottom: 5px;
}

.logo img {
	width: 100px;
	height: 100px;
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
	margin-bottom: 10px;
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

/* section */
h3 {
	font-weight: bold;
	font-size: large;
}

.join {
	padding-top: 50px;
	margin-bottom: 5px;
}

.join>h2 {
	color: rgb(233, 159, 159);
	padding-bottom: 5px;
}

.join_box {
	border-top: 1px solid grey;
}

.join_input {
	width: 400px;
	display: inline-block;
	margin-right: 40px;
	padding-top: 30px;
	padding-left: 130px;
}

.join_input>h4 {
	text-align: left;
	padding-left: 15px;
}

.userid

{
	width: 200px;
	height: 10px;
}

.review_box{
	padding-left: 130px;
}

.reply{
	width: 700px;
	height: 150px;
	border-radius: 15px;
	padding: 10px;
}

.join_btn {
	margin-top: 20px;
	margin-bottom: 40px;
	margin-left: 280px;
	width: 410px;
	height: 40px;
	font-size: 15pt;
	color: azure;
	border-radius: 15px;
	background-color: rgb(233, 159, 159);
	border: none;
	text-align: center;
}

.join_btn:hover {
	margin-top: 20px;
	margin-bottom: 40px;
	margin-left: 280px;
	width: 410px;
	height: 40px;
	font-size: 15pt;
	color: azure;
	background-color: rgb(80, 80, 80);
}

/* component */

.star-rating {
  display:flex;
  flex-direction: row-reverse;
  font-size:2.5em;
  justify-content:space-around;
  padding:0 .2em;
  text-align:center;
  width:5em;
}

.star-rating input {
  display:none;
}

.star-rating label {
  color:#ccc;
  cursor:pointer;
}

.star-rating :checked ~ label {
  color:#f90;
}

.star-rating label:hover,
.star-rating label:hover ~ label {
  color:#fc0;
}



/* footer */
.bottom {
	border-top: 1px solid grey;
	border-bottom: 1px solid grey;
	padding: 10px;
	display: flex;
	justify-content: space-around;
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
	text-align: left;
	padding: 10px;
}
</style> 
</head>
<%@ include file="../includes/header.jsp"%>

<!-- section -->
<section class="join">
	<h2><c:out value="${content.name }" /> 리뷰를 적어주세요.</h2>
	<div class="join_box">
		<!-- 리뷰 등록 부분 -->
		<form
			action="/board/review"
			method="post" name="review" id="review">

			<div class="join_input">
			<div class="star-rating">
  <input type="radio" id="5-stars" name="replygrade" value="5" />
  <label for="5-stars" class="star">&#9733;</label>
  <input type="radio" id="4-stars" name="replygrade" value="4" />
  <label for="4-stars" class="star">&#9733;</label>
  <input type="radio" id="3-stars" name="replygrade" value="3" />
  <label for="3-stars" class="star">&#9733;</label>
  <input type="radio" id="2-stars" name="replygrade" value="2" />
  <label for="2-stars" class="star">&#9733;</label>
  <input type="radio" id="1-star" name="replygrade" value="1" />
  <label for="1-star" class="star">&#9733;</label>
</div>
			
		<input type="hidden" id="bno" name="bno" value='<c:out value="${content.bno }" />'><br>
		ID : <input type="text" class="userid" id="userid" name="userid" value='<c:out value="${user.userid }" />' readonly>
			
			</div>
			
			<div class="review_box">
				<textarea class="reply" name="reply" id="reply"></textarea>
			</div>
			
	<br> <br>		
		<button class="join_btn" type="submit" value="join" onclick="test()">등록</button>
			</form>
	</div>
	
	
	<script>
          
          function test(){
        	  {
        		  
			        alert("등록되었습니다."  );
        	  }
     
       }
          
         
    </script>
    

</section>

<%@ include file="../includes/footer.jsp"%>

