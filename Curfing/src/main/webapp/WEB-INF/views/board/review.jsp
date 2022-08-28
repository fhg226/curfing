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
  <link href="${path}/resources/css/review.css" rel="stylesheet"/> 
</head>
<%@ include file="../includes/header1.jsp"%>

<!-- section -->
<section class="join">
	<h2><c:out value="${cafe_r.cafename }" /> 리뷰를 적어주세요.</h2>
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
			
		<input type="hidden" id="bno" name="bno" value='<c:out value="${cafe_r.bno }" />'><br>
		ID : <input type="text" class="userid" id="userid" name="userid" value='<c:out value="${user.userid }" />' readonly><br>
		비밀번호 : <input type="password" class="userid" id="rpwd" name="rpwd" required>
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

