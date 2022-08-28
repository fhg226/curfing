<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<header>
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
						<a href="#">등록</a> 
						<a class="aaa" href="/board/Mypage" role="button" tabindex="0" aria-expanded="false"aria-label="마이페이지">
						 <img src="/resources/image/user.png" width="20px" height="15.5px" alt aria-hidden="true" date-noaftdata-atf="1" data-frt="0">
						</a>
					</div>
				</c:if> 
				
				
			</ul>

		</div>



		<!-- 로고 -->
		<div class="logo">
			<a href="/board"> Curfing </a>
		</div>
	</header>

<!--검색 기능-->
   <div class="search_wrap">
        <div class="search_area">
            <form id ='searchForm' action="/board/list" method='get'>
           <select name="type">
                <option value="" <c:out value="${page.cri.type == null?'selected':'' }"/>>--</option>
                <option value="T" <c:out value="${page.cri.type eq 'T'?'selected':'' }"/>>제목</option>
                <option value="C" <c:out value="${page.cri.type eq 'C'?'selected':'' }"/>>내용</option>
                <option value="W" <c:out value="${page.cri.type eq 'W'?'selected':'' }"/>>작성자</option>
                <option value="TC" <c:out value="${page.cri.type eq 'TC'?'selected':'' }"/>>제목 + 내용</option>
                <option value="TW" <c:out value="${page.cri.type eq 'TW'?'selected':'' }"/>>제목 + 작성자</option>
                <option value="TCW" <c:out value="${page.cri.type eq 'TCW'?'selected':'' }"/>>전체</option>
            </select>    
            <input class="sinput" type="text" name="keyword" value="${pageMaker.cri.keyword }">
            <button class="sbtn">Search</button>
            </form>
        </div>
    </div>    
 

   <form id='moveForm' method="get">
      <input type='hidden' name='pageNum' value='${pageMaker.cri.pageNum }'>
      <input type='hidden' name='amount' value='${pageMaker.cri.amount }'>
      <input type='hidden' name='type' value='${pageMaker.cri.type }'> 
      <input type='hidden' name='keyword' value='${pageMaker.cri.keyword }'>
   </form>

   <!-- 메인 메뉴 -->

   <div class="mainMenu">
      <ul>
        <li> <a href="board/list">목록</a></li>
        <li ><a href="board/scope">인기</a></li>
        <li ><a href="board/rising">리뷰가 많은</a></li>
        <li ><a href="board/atmosphere">최신순</a></li>
      </ul>
   </div>
  