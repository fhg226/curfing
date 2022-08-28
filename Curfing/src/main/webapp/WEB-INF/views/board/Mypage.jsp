<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/basic.css">
<style>
.header {
   text-align: center;
   font-size: 120px;
   margin-bottom: 120px;
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
      background-color: #C3E2DD;
    }
  
  .login_success_area{
     font-size: 13px;
     color: black;
     text-align:right;
  }
  
  .login_success_area >a{
   display: inline-block;
      padding: 5px 5px;
      background-color: rgb(233, 159, 159);
      border-radius: 8px;
      color: azure;
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

.navbar>a {
   color: rgb(233, 159, 159);
}

.wrap {
   border-top: 3px solid #C3E2DD;
}

.sidenav {
   margin-top: 40px;
   width: 130px;
   z-index: 1;
   top: 20px;
   overflow-x: hidden;
   padding: 8px;
   background-color: rgb(233, 159, 159);
   border-radius: 15px;
   border: 3px solid rgb(233, 159, 159)
}

.sidenav a {
   padding: 6px 8px 6px 16px;
   text-decoration: none;
   font-size: 20px;
   display: block;
   color: azure;
}

.sidenav a:hover {
   background-color: #C3E2DD;
   border-radius: 15px;
}

.main {
   font-size: 15px; /* Increased text to enable scrolling */
   text-align: center;
}

@media screen and (max-height: 450px) {
   .sidenav {
      padding-top: 15px;
   }
   .sidenav a {
      font-size: 18px;
   }
}
</style>
</head>
<body>
   <header class="header" role="banner">
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
						<a href="register">등록</a> 
						<a class="aaa" href="/board/Mypage" role="button" tabindex="0" aria-expanded="false"aria-label="마이페이지">
						 <img src="/resources/image/user.png" width="20px" height="15.5px" alt aria-hidden="true" date-noaftdata-atf="1" data-frt="0">
						</a>
					</div>
				</c:if> 
				
				
			</ul>
      <div class="navbar">
         <a href="/board">Curfing</a>
      </div>
   </header>
   <section>

      <div class="wrap">
            <div class="sidenav">
               <a href="profil">내 프로필</a>
            </div>
      </div>
            <div class="main">
               <h2>저희 Curfing을 찾아주신 여러분을 환영합니다.</h2>

            </div>
   </section>

</body>
</html>