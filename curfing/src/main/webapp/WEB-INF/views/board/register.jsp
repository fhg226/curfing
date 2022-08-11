<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!-- saved from url=(0061)file:///C:/Users/user/Desktop/project-curfing/listupdate.html -->
<html lang="ko">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  
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
	height: 400px;
	display: inline-block;
	margin-right: 40px;
}

.join_input>h4 {
	text-align: left;
	padding-left: 15px;
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

.image_size {
	width: 400px;
	height: 400px;
}

.image-container {
	width: 400px;
	height: 400px;
	margin-bottom: 50px;
}

.radio {
	width: 50px;
	text-align: left;
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
	<h2>내용을 적어주세요.</h2>
	<div class="join_box">
		<!-- 사진 등록 부분 -->
		<form
			action="/board/register"
			method="post" name="register">

			<div class="join_input">


				<div class="image-container">

					<img class="image_size" style="width: 400px;" id="preview-image"
						src="./작성_files/000000.png&amp;text=preview+image"> <input
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

				<table>
					<tr>
						<td colspan="2">
							<h3>카페 정보</h3>
						</td>
					</tr>
					<tr>
						<td>카페 이름</td>
						<td><input class="name" type="text" name="name" required><br>
						</td>
					</tr>
					<tr>
						<td>주소</td>
						<td><input class="address" type="text" name="address" required><br>
						</td>
					</tr>
					<tr>
						<td>전화 번호</td>
						<td><input class="phone" type="text" name="phone" required><br>
						</td>
					</tr>
					<tr>
						<td>음식 종류</td>
						<td><input class="foodType" type="text" name="foodType" ><br>
						</td>
					</tr>
					<tr>
						<td>가격대</td>
						<td><input class="price" type="text" name="price" ><br></td>
					</tr>
					<tr>
						<td>주차</td>
						<td>
						<input class="parking" type="text" name="parking" ><br>

						</td>
					</tr>
					<tr>
						<td>영업 시간</td>
						<td><input class="salesTime" type="text" name="salesTime"
							required><br></td>
					</tr>
					<tr>
						<td>휴일</td>
						<td><input class="holiday" type="text" name="holiday" required><br>

						</td>
					</tr>
					<tr>
						<td>웹사이트</td>
						<td><input class="site" type="text" name="site" ><br>

						</td>
					</tr>
					<tr>
						<td>메뉴</td>
						<td><input class="menu" type="text" name="menu" ><br>

						</td>
					</tr>

				</table>
			</div>
			<!--내용 제목 오른쪽 끝 -->
	<br> <br>		
		<button class="join_btn" type="submit" value="join" onclick="test()">등록</button>
	</form>
	</div>
	







	
	<script>
          
          function test(){
        alert("등록되었습니다."  );
        
     
     
       }
          
        </script>



</section>

<%@ include file="../includes/footer.jsp"%>