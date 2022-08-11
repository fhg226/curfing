<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<body>
  <!-- header -->
  <header>
  
    <div class="topNav">
      <ul>
        <li><a href="login.html">로그인</a></li>
        <li><a href="join.html">회원가입</a></li>
        <li><a class="aaa" href="#" role="button" tabindex="0" aria-expanded="false" aria-label="마이페이지">
          <img src="./image/user.png" width="20px" height="15.5px" alt aria-hidden="true"
          date-noaft data-atf="1" data-frt="0">
        </a></li>
      </ul>
    </div>

    <!-- 로고 -->
    <div class="logo">
      <a href="file:///C:/Users/user/Desktop/project-curfing/index.html">
       CURFING
      </a>
    </div>

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
        <li><a href="#">인기</a></li>
        <li><a href="#">별점</a></li>
        <li><a href="#">요즘뜨는</a></li>
        <li><a href="#">분위기</a></li>
      </ul>
    </div>
  </div>

  </header>