<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!-- saved from url=(0061)file:///C:/Users/user/Desktop/project-curfing/listupdate.html -->
<html lang="ko">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <script src="https://code.jquery.com/jquery-3.3.1.min.js" integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=" crossorigin="anonymous"></script>
  <title>등록 </title>

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
	display: flex;
	justify-content: space-around;
	/* text-align: center; */
}

.join_input {
	width: 400px;
	display: inline-block;
	float: left;
	padding-top: 20px;
	margin-right: 40px;
}

.join_input>h4 {
	text-align: left;
	padding-left: 15px;
}

#input-image{
	width: 365px;
}


.text_mv {
	display: inline-block;
	padding-top: 15px;
}

.text_mv input {
	width: 300px;
	height: 10px;
	margin: 5px;
}

.modify_btn {
	margin-top: 20px;
	margin-bottom: 40px;
	margin-left: 220px;
	width: 200px;
	height: 40px;
	font-size: 15pt;
	color: azure;
	border-radius: 15px;
	background-color: rgb(233, 159, 159);
	border: none;
}

.remove_btn {
	margin-top: 20px;
	margin-bottom: 40px;
	margin-left: 30px;
	width: 200px;
	height: 40px;
	font-size: 15pt;
	color: azure;
	border-radius: 15px;
	background-color: rgb(233, 159, 159);
	border: none;
}

.modify_btn:hover {
	margin-top: 20px;
	margin-bottom: 40px;
	margin-left: 220px;
	width: 200px;
	height: 40px;
	font-size: 15pt;
	color: azure;
	background-color: rgb(80, 80, 80);
}

.remove_btn:hover {
	margin-top: 20px;
	margin-bottom: 40px;
	margin-left: 30px;
	width: 200px;
	height: 40px;
	font-size: 15pt;
	color: azure;
	background-color: rgb(80, 80, 80);
}

.image_size {
	width: 400px;
	height: 400px;
}

.image-container {
	width: 400px;
	margin-bottom: 50px;
}

.radio {
	width: 50px;
	text-align: left;
}

#zipNo{
	width: 120px;
}

#btn_addr{
	width: 100px;
	border-radius: 20px;
	border: 1px solid #bbb;
	margin-left: 5px;
	padding: 5px 5px;
}

#menun{
	width: 125px;
}

#menup{
	width: 125px;
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
<script>
function goPopup(){
	// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://business.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
	var pop = window.open("/board/jusoPopup","pop","width=570,height=420, scrollbars=yes, resizable=yes");
    
	// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(https://business.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
}
/** API 서비스 제공항목 확대 (2017.02) **/
function jusoCallBack(address,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn
						, detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn, buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo){
	// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
	document.register.address.value = address;
	document.register.roadAddrPart1.value = roadAddrPart1;
	document.register.roadAddrPart2.value = roadAddrPart2;
	document.register.addrDetail.value = addrDetail;
	document.register.zipNo.value = zipNo;
}
</script>
<%@ include file="../includes/header.jsp"%>

<!-- section -->
<section class="join">
	<h2>내용을 적어주세요.</h2>
	<div class="join_box">
		<!-- 사진 등록 부분 -->
		<form id="modifyForm"
			action="/board/modify"
			method="post" >

			<div class="join_input">


				<div class="image-container">

					<img class="image_size" style="width: 400px;" id="preview-image"
						src="./작성_files/000000.png&amp;text=preview+image">
						 <input
						type="file" id="input-image">




					<script>
            function readImage(input) {
                // 인풋 태그에 파일이 있는 경우
                if(input.files && input.files[0]) {
                    // 이미지 파일인지 검사 (생략)
                    // FileReader 인스턴스 생성
                    const reader = new FileReader()
                    // 이미지가 로드가 된 경우
                    reader.onload = e => {
                        const previewImage = document.getElementById("preview-image")
                        previewImage.src = e.target.result
                    }
                    // reader가 이미지 읽도록 하기
                    reader.readAsDataURL(input.files[0])
                }
            }
            // input file에 change 이벤트 부여
            const inputImage = document.getElementById("input-image")
            inputImage.addEventListener("change", e => {
                readImage(e.target)
            })
                
            </script>
				</div>

			</div>
			<!-- 사진 등록 부분 끝 -->


			<!--내용 제목 오른쪽 -->
			<div class="text_mv">
				<input type="hidden" class="memberid" name="memberid" value='<c:out value="${member.memberid }" />' >
				<table>
				
					<tr>
						<td colspan="2">
							<h3>카페 정보</h3>
							<input type="hidden" id="bno" name="bno" value='<c:out value="${cafe_r.bno }" />' >
						</td>
					</tr>
					<tr>
						<td>카페 이름</td>
						<td><input class="cafename" type="text" name="cafename" value='<c:out value="${cafe_r.cafename }" />' required><br>
						</td>
					</tr>
					<tr>
						<td style="padding-bottom: 30px;">주소</td>
						<td>
						<input type="hidden" id="confmKey" name="confmKey" value=""  >
						<input type="hidden" id="zipNo" name="zipNo" placeholder="우편번호" onclick="goPopup()" readonly>
						<input class="address" id="address" type="text" onclick="goPopup()" name="address" value='<c:out value="${cafe_r.address }" />'required><br>
						<button type="button" id="btn_addr" onclick="goPopup()">주소 검색</button><br>
						<input type="hidden" id="roadAddrPart1" name="roadAddrPart1" />
						<input type="hidden" id="addrDetail" name="addrDetail" />
						<input type="hidden" id="roadAddrPart2" name="roadAddrPart2" />
						</td>
					</tr>
					<tr>
						<td>전화 번호</td>
						<td><input class="phone" type="text" name="phone" value='<c:out value="${cafe_r.phone }" />'required><br>
						</td>
					</tr>
					<tr>
						<td>음식 종류</td>
						<td><input class="cafeinfo" type="text" name="cafeinfo" value='<c:out value="${cafe_r.cafeinfo }" />'><br>
						</td>
					</tr>
					<tr>
						<td>가격대</td>
						<td><input class="price" type="text" name="price" value='<c:out value="${cafe_r.price }" />'><br></td>
					</tr>
					<tr>
						<td>주차</td>
						<td>
						<input class="car" type="text" name="car" value='<c:out value="${cafe_r.car }" />'><br>

						</td>
					</tr>
					<tr>
						<td>영업 시간</td>
						<td>
							<input class="opentime" type="text" name="opentime" style="width: 109px" value='<c:out value="${cafe_r.opentime }" />'required>
							&nbsp;&nbsp;~&nbsp;&nbsp;
							<input class="closetime" type="text" name="closetime" style="width: 109px" value='<c:out value="${cafe_r.closetime }" />' required><br>
						</td>
					</tr>
					<tr>
						<td>휴일</td>
						<td><input class="dayoff" type="text" name="dayoff" value='<c:out value="${cafe_r.dayoff }" />' required><br>

						</td>
					</tr>
					<tr>
						<td>웹사이트</td>
						<td><input class="site" type="text" name="site" value='<c:out value="${cafe_r.site }" />'><br>

						</td>
					</tr>
					<tr>
						<td style="padding-bottom: 160px;">메뉴</td>
						<td>
						<input id="menun" type="text" name="menun1" value='<c:out value="${menu.menun1 }" />' ><input id="menup" type="text" name="menup1" value='<c:out value="${menu.menup1 }" />' ><br>
						<input id="menun" type="text" name="menun2" value='<c:out value="${menu.menun2 }" />' ><input id="menup" type="text" name="menup2" value='<c:out value="${menu.menup2 }" />' ><br>
						<input id="menun" type="text" name="menun3" value='<c:out value="${menu.menun3 }" />' ><input id="menup" type="text" name="menup3" value='<c:out value="${menu.menup3 }" />' ><br>
						<input id="menun" type="text" name="menun4" value='<c:out value="${menu.menun4 }" />' ><input id="menup" type="text" name="menup4" value='<c:out value="${menu.menup4 }" />' >
						</td>
					</tr>
					<tr>
						<td>태그</td>
						<td>
							<input class="hashtagname" type="text" name="hashtagname" value='<c:out value="${hashtag_t.hashtagname }" />' >
						</td>
					</tr>
				</table>
			</div>
			<!--내용 제목 오른쪽 끝 -->
	<br> <br>		
		<button class="modify_btn" type="submit" data-oper='modify' onclick="test()">수정</button>
		<button class="remove_btn" type="submit" data-oper="remove">삭제</button>
	</form>
	
	<script>
	$(document).ready(function(){
    	var formObj = $("#modifyForm");
    	
    	$(".remove_btn").on("click", function(e){
        	e.preventDefault();
    		
	    		formObj.attr("action", "/board/remove");
    			formObj.submit();
    		
    	});
   });
	</script>
	</div>
	


</section>	




	
	<script type="text/javascript">
	
          function test(){
        	  
        	  if(document.($(".cafename").value) == ""){
        		  alert("카페 이름을 적어주세요");
        	  }else if(document.($(".address").value) == ""){
        		  alert("주소를 적어주세요");
        	  }else if(document.($(".phone").value) == ""){
        		  alert("전화 번호를 적어주세요");
        	  }else if((document.($(".opentime").value) == "") || (document.($(".closetime").value) == "")){
        		  alert("영업 시간을 적어주세요");
        	  }else if(document.($(".dayoff").value) == ""){
        		  alert("휴일을 적어주세요");
        	  }else{
        		  alert("수정되었습니다.");		  
        	  }
          }
        	  
        
          
        </script>





<%@ include file="../includes/footer.jsp"%>