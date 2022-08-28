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
  <link href="${path}/resources/css/modify.css" rel="stylesheet"/>
  
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