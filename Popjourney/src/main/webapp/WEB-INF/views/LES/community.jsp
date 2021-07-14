<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>자유게시판</title>
<style type="text/css">
/* #fcba03 노랑
            #2e3459 남색
            #f37321 주황
            #294a37 초록
         */
body {
	margin: 0px;
	font-size: 0px;
	font-family: 'Black Han Sans', sans-serif;
	min-width: 1480px;
}

/* 여기서부터 헤더 레이아웃 */
#wrap {
	width: 100%;
	height: 100%;
	background-color: #f9f9f9;
}

#header {
	width: 100%;
	height: 140px;
	background-color: #2e3459;
	position: relative;
}

.top {
	display: block;
	width: 100%;
	height: 70px;
	background-color: #FFFFFF;
}

.site_name {
	display: inline-block;
	vertical-align: top;
	position: absolute; /* 추가하기 */
	width: 200px;
	font-size: 16px;
	font-weight: bold;
	line-height: 70px;
	color: #2e3459;
}

.btns ul li {
	list-style: none;
	float: left;
	text-align: center;
	color: #2e3459;
	line-height: 25px;
	text-decoration: none;
	font-size: 18px;
	font-weight: 900;
}

.btns>ul>li {
	margin-right: 10px;
}

.logo_area {
	display: inline-block;
	width: calc(100% - 470px);
	height: 70px;
	background-color: #FFFFFF;
	text-indent: 40px;
}

.logo_photo {
	height: 35px;
	margin-top: 18px;
}

.btns { /* .logins와 연동  */
	display: none;
	position: relative;
	vertical-align: top;
	width: 470px;
	height: 70px;
	text-align: right;
	background-color: #FFFFFF;
	vertical-align: top;
}

.btns img {
	width: 40px;
	margin-right: 20px;
	margin-top: 15px;
	cursor: pointer;
}

.bell_icon {
	margin-left: 200px;
}

.logins {
	display:inline-block;
	vertical-align: top;
	width: 470px;
	height: 70px;
	text-align: right;
	background-color: #FFFFFF;
}

.sub_login1 {
	display: block;
	position: relative;
	width: 100%;
	height: 55px;
}

.sub_login2 {
	display: block;
	width: calc(100% - 75px);
	height: 15px;
	line-height: 10px;
	text-align: right;
	padding-right: 75px;
}

.sub_login2 span {
	position: relative;
	width: 10px;
	font-size: 12px;
	font-weight: 600;
	cursor: pointer;
	margin-left: 10px;
}

.sub_login2 span:hover {
	color: #fcba03;
}

.login {
	float: right;
	width: 100px;
	height: 25px;
	margin-top: 20px;
	margin-left: 5px;
}

.login_btn {
	float: right;
	margin: 20px 20px 0px 5px;
	width: 50px;
	height: 30px;
	background-color: #2e3459;
	font-weight: bold;
	font-size: 12px;
	color: #FFFFFF;
	text-align: center;
	line-height: 26px;
	cursor: pointer;
}

.login_btn:hover {
	color: #FFFFFF;
	background-color: #f37321;
}

.banner {
	width: 100%;
	height: 70px;
}

.timeline {
	display: none;
	/* display: inline-block; */
	width: 400px;
	background-color: #EAEAEA;
	box-shadow: 0px 0px 1px 1px #444444;
	position: absolute;
	margin-top: 72px;
	right: 10px;
	z-index: 300;
}

.timeline tr {
	height: 50px;
}

.timeline table {
	border-collapse: collapse;
}

.timeline table tr th:first-child {
	text-align: center;
}

.timeline tr th {
	text-align: left;
}

.timeline tr th img {
	height: 50px;
	width: 50px;
	text-align: center;
	cursor: pointer;
}

.timeline tfoot tr {
	background-color: #939597;
}

.timeline tfoot tr th {
	text-align: center;
	cursor: pointer;
}

.timeline table tr th span {
	text-decoration: underline;
	cursor: pointer;
}

.timeline table tr th span:hover {
	color: blue;
}

#dd {
	box-shadow: rgba(0, 0, 0, 0.09) 0 6px 9px 0;
	border: 2px solid #fcba03;
	background-color: white;
	position: absolute;
	margin-top: 10px;
	padding: 0px;
	right: 8px;
	height: 108px;
	width: 122px;
	display: none;
}

#dd li {
	display: inline-block;
	border: 1px solid rgb(250, 250, 250);
	font-size: 12pt;
	width: 120px;
	text-align: center;
}

#dd li:hover {
	background-color: #f37321;
}

.menu {
	position: absolute;
	height: 70px;
	left: 20px;
}

.menu ul li {
	list-style: none;
	float: left;
	color: white;
	font-size: 23px;
	font-weight: bold;
	margin-right: 100px;
	line-height: 70px;
	text-decoration: none;
	cursor: pointer;
}

.menu ul li:hover {
	color: #fcba03;
}

.menu ul li {
	display: inline-block;
	height: 30px;
	text-decoration: none;
	color: white;
}

.search {
	float: right;
	margin: 20px 20px 20px 0px;
	width: 250px;
	height: 29px;
}

.filter {
	float: right;
	margin: 20px 20px 20px 0px;
	width: 100px;
	height: 35px;
}

.search_icon {
	float: right;
	margin: 17px 20px 13px 0px;
	width: 40px;
	cursor: pointer;
}

input[type='text']:focus, input[type='password']:focus, select:focus {
	outline-color: #fcba03;
}
/* 여기까지 헤더 레이아웃 !!! */
#container {
	display: block;
	width: 1280px;
	height: 100%;
	margin: 0 auto;
}

.top_area {
	display: inline;
}

.sub_profile {
	display:none;
	margin: 20px 0;
	padding: 30px 0;
	height: 150px;
	border-radius: 20px;
	box-shadow: rgba(0, 0, 0, 0.09) 0 6px 9px 0;
}

.sub_area {
	display: block; 
	/* display:none; */
	font-size: 18px;
	font-weight: bold;
	color: black;
	text-align: center;
}

.sub_area span {
	display: block;
	margin-bottom: 20px;
}

.sub_area span:first-child {
	font-size: 18pt;
}

.sub_area span:nth-child(2) {
	font-weight: normal;
	font-size: 11pt;
}

.sub_area img {
	width: 100%;
	height: 350px;
}

.sub_profile>div {
	width: 50%;
	float: left;
}

.sub_profile>div>img {
	margin-left: 450px;
	margin-top: 5px;
	width: 140px;
	height: 140px;
	border-radius: 100px;
}

.info {
	width: 50%;
	position: relative;
	font-weight: bold;
	margin-top: 20px;
}

.info img {
	width: 25px;
	margin-left: 0;
}

.info span {
	font-size: 18pt;
}

.grade {
	margin-top: 15px;
	font-size: 12pt;
}

.grade span, .cnt span {
	font-size: 15pt;
}

.cnt {
	margin-top: 7px;
}

.cnt span {
	margin-right: 20px;
}

.board_menu {
	display: inline-block;
	width: 100%;
	height: 100px;
	font-size: 12pt;
	margin-bottom: 20px;
}

.left_nav {
	position: absolute;
	text-align: center;
	height: 100px;
	padding: 0;
	display: block;
	margin-top: 10px;
}

.right_nav {
	position: relative;
	left: 750px;
	text-align: center;
	height: 100px;
	padding: 0 0 0 100px;
	display: block;
	margin-top: 25px;
	width: 400px;
}

.board_menu nav ul li {
	height: 100px;
	list-style: none;
	float: left;
	text-align: center;
	color: #2e3459;
	margin-left: 30px;
	line-height: 25px;
	text-decoration: none;
	font-size: 18px;
	font-weight: 900;
}

.board_menu nav ul li  {
	display: inline-block;
	height: 100px;
	text-decoration: none;
	color: #2e3459;
}

.board_menu nav ul li img {
	margin: 10px 20px 0px 20px;
	width: 30px;
	height: 30px;
	padding: 4px;
	background-color: #2e3459;
	border-radius: 100px;
	cursor: pointer;
}

.board_menu nav ul li:hover img {
	background-color: #f37321;
}

.board_menu nav ul li.on {
	color: #f37321;
}

#path_info {
	height: 35px;
	font-size: 10pt;
	padding-top: 10px;
	padding-left: 20px;
}

#path_info{
	text-decoration: none;
	color: black;
}

.home_icon {
	position: relative;
	top: 3px;
	width: 20px;
	height: 20px;
}

.board_list_wrap {
	margin: 0;
	padding: 0;
	height: 40%;
	font-weight: 500;
}

.category_nav {
	height: 50px;
	text-align: center;
	margin-top: 20px;
}

.order_list {
	height: 50px;
	display: inline-block;
	margin: auto;
}

.order_list ul {
	padding: 0;
}

.order_list ul li {
	height: 50px;
	list-style: none;
	float: left;
	text-align: center;
	color: #2e3459;
	margin-right: 30px;
	line-height: 25px;
	text-decoration: none;
	font-size: 18px;
	font-weight: 900;
	cursor: pointer;
}

.order_list ul li  {
	display: inline-block;
	height: 50px;
	line-height: 50px;
	text-decoration: none;
}

.order_list ul li:hover {
	color: #f37321;
}

.order_list ul li.on {
	color: #f37321;
}

table {
	border-collapse: collapse;
}

caption {
	display: none;
}

a {
	text-decoration: none;
	color: inherit;
}

.board_list {
	width: 100%;
	border-top: 2px solid #2e3459;
}

.board_list tr {
	border-bottom: 1px solid #ccc;
}

.board_list th, .board_list td {
	padding: 10px;
	font-size: 12pt;
}

.board_list td {
	text-align: center;
}

.board_list tbody tr td:nth-child(2) {
	font-weight: 550;
	color: rgb(128, 0, 255);
}

.board_list tbody tr td:nth-child(3) {
	text-align: left;
	cursor: pointer;
}

.board_list tbody tr td:nth-child(3):hover {
	text-decoration: underline;
}

.notice_board {
	font-weight: 550;
	background: #faf9f7;
}

.board_list>tbody>.notice_board>td:nth-child(2) {
	color: #F1404B;
}

.notice_board>td>span {
	padding: 5px 10px;
	border-radius: 5px;
	background-color: #2e3459;
	color: white;
}

.board_search>.filter {
	float: right;
	margin: 20px 0px 20px 0px;
}

.board_search>.search {
	float: right;
	margin: 20px 0px 20px 0px;
	width: 250px;
	height: 29px;
}

.board_search>.search_icon {
	float: right;
	margin: 17px 0px 13px 0px;
	height: 39px;
	cursor: pointer;
	background-color: #2e3459;
	border-radius: 5px;
}

.board_search>.search_icon:hover {
	background-color: #fcba03;
}

.paging_wrap {
	width: 100%;
	height: 100px;
	padding-top: 50px;
}

.paging {
	font-size: 0;
	text-align: center;
}

.paging a {
	display: inline-block;
	margin-left: 10px;
	padding: 5px 10px;
	border-radius: 5px;
	font-size: 12pt;
	font-weight: bold;
}

.paging a.paging_btn {
	background-color: none;
	color: #2e3459;
	letter-spacing: -5px;
	font-size: 12pt;
}

.paging a.num {
	color: #2e3459;
}

.paging a:first-child {
	margin-left: 0;
}

.paging a.num:hover, .paging a.num.on, .paging a.paging_btn:hover {
	color: #F1404B;
	text-decoration: underline;
}

#footer {
	display: block;
	width: 100%;
	height: 100px;
	background-color: #2e3459;
	color: #FFFFFF;
	font-size: 15px;
}

#footer p {
	margin: 0px auto;
	padding-top: 20px;
	padding-left: 250px;
	width: 600px;
	height: 80px;
}
</style>
<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("#journalBoard").on("click", function() {
  		location.href = "journalBoard";
  	});
	$("#travelWriter").on("click", function() {
  		location.href = "travelWriterRank";
  	});
	$("#clientCenter").on("click", function() {
  		location.href = "clientCenterQuestion";
  	});
	$("#admin").on("click", function() {
  		location.href = "memAdmin";
  	});
});

</script>
</head>
<body>
	<div id="wrap">
		<!-- header부분 고정 -->
		<div id="header">
			<div class="banner">
				<div class="top">
					<div class="logo_area">
						<a href="#"><img alt="로고" src="./resources/images/logo.png" class="logo_photo"></a>
						<div class="site_name">우리들의 여행일지</div>
					</div>
					<div class="btns">
						<!-- 밑에 logins와 연동 -->
						<ul>
							<li><img alt="bell" src="./resources/images/bell.png" class="bell_icon">
								<div class="timeline">
									
								</div></li>
							<li><img alt="bookmark" src="./resources/images/bmk.png"></li>
							<li><img alt="프로필" src="./resources/images/profile.png">
								<ul id="dd">
									<li>마이 페이지</li>
									<li>프로필 수정</li>
									<li>회원정보 수정</li>
									<li>로그아웃</li>
								</ul></li>
						</ul>
					</div>
					<div class="logins">
						<div class="sub_login1">
							<input type="button" class="login_btn" value="로그인" /> <input
								type="password" class="login" placeholder="PW" /> <input
								type="text" class="login" placeholder="ID" />
						</div>
						<div class="sub_login2">
							<span>회원가입</span> <span>ID/PW 찾기</span>
						</div>
					</div>
				</div>
				<!-- 호버시 메뉴 생성 -->
			</div>
			<nav class="menu">
				<ul>
					<li id="journalBoard">여행게시판</li>
					<li id="community">자유게시판</li>
					<li id="travelWriter">여행작가</li>
					<li id="clientCenter">고객센터</li>
					<li id="admin">내부관리자</li>
				</ul>
			</nav>
			<img alt="search" src="./resources/images/search.png" class="search_icon" /> <input
				type="text" class="search" placeholder="검색"> <select
				class="filter">
				<option value="0">통합검색</option>
				<option value="1">여행일지</option>
				<option value="2">자유게시판</option>
				<option value="3">닉네임</option>
			</select>
		</div>
		<div id="path_info">
			<span> <img alt="메인페이지" src="./resources/images/home.png" class="home_icon">
			</span> &nbsp;&nbsp;>&nbsp;&nbsp; <span> 자유게시판 </span>
			&nbsp;&nbsp;>&nbsp;&nbsp; <span> 여행꿀팁
				&nbsp;&nbsp;>&nbsp;&nbsp; </span> 여행작가
		</div>
		<div class="sub_area">
			<span>자유게시판</span>
			<span>다른 사용자들과 의견을 나누세요.</span>
					<img src="./resources/images/board2.png">
		</div>
		<div class="category_nav">
			<nav class="order_list">
				<ul>
					<li>전체보기</li>
					<li>공지사항</li>
					<li>여행꿀팁</li>
					<li>Q & A</li>
					<li>잡&nbsp;&nbsp;&nbsp;담</li>
				</ul>
			</nav>
		</div>
		<div id="container">
			<div class="top_area">
				<div class="sub_profile">
					<div>
						<img alt="profile" src="./resources/images/profile3.png" class="profile_img">
					</div>
					<div class="info">
						<span>닉네임</span>
						<div class="grade">
							<img alt="icon" src="./resources/images/grade.png"> <span>여행작가</span>
						</div>
						<div class="cnt">
							<span>총 게시글 100</span> <span>총 댓글 100</span>
						</div>
					</div>
				</div>
			</div>
			<div class="board_list_wrap">
				<div class="board_menu">
					<nav class="left_nav">
						<ul>
							<li><img alt="bookmark" src="./resources/images/all.png"><br />전체보기</li>
							<li><img alt="bookmark" src="./resources/images/writer.png"><br />여행작가</li>
							<li><img alt="작성자" src="./resources/images/user2.png"><br />여행꾼</li>
						</ul>
					</nav>
					<nav class="right_nav">
						<ul>
							<li><img alt="bookmark" src="./resources/images/doc.png"><br />내가 쓴 글</li>
							<li><img alt="bookmark" src="./resources/images/comment.png"><br />댓글 쓴 글</li>
							<li><img alt="bookmark" src="./resources/images/pen.png"><br />글쓰기</li>
						</ul>
					</nav>
				</div>
				<table class="board_list">
					<caption>게시판 목록</caption>
					<thead>
						<tr>
							<th>글번호</th>
							<th>카테고리</th>
							<th>제목</th>
							<th>등급</th>
							<th>닉네임</th>
							<th>작성일</th>
							<th>조회</th>
							<th>좋아요</th>
						</tr>
					</thead>
					<tbody>
						<tr class="notice_board">
							<td><span>공지</span></td>
							<td>공지사항</td>
							<td>2021년 5월 3주차 콘텐츠 링크 모아보기!</td>
							<td>매니저</td>
							<td>admin</td>
							<td>2021-05-24</td>
							<td>4,163</td>
							<td>500</td>
						</tr>
						<tr class="notice_board">
							<td><span>공지</span></td>
							<td>공지사항</td>
							<td> &Star;[여행작가]를 찾습니다 + 여행작가 소개</td>
							<td>매니저</td>
							<td>admin</td>
							<td>2021-05-09</td>
							<td>4,163</td>
							<td>500</td>
						</tr>
						<tr class="notice_board">
							<td><span>공지</span></td>
							<td>공지사항</td>
							<td>PopJourney 200% 활용 꿀팁!</td>
							<td>매니저</td>
							<td>admin</td>
							<td>2021-04-25</td>
							<td>4,163</td>
							<td>500</td>
						</tr>
						<tr class="notice_board">
							<td><span>공지</span></td>
							<td>공지사항</td>
							<td>커뮤니티 규칙</td>
							<td>매니저</td>
							<td>admin</td>
							<td>2021-01-02</td>
							<td>4,163</td>
							<td>500</td>
						</tr>
						<tr class="notice_board">
							<td><span>공지</span></td>
							<td>공지사항</td>
							<td>통합 운영정책 (2021.05.26 개정)</td>
							<td>매니저</td>
							<td>admin</td>
							<td>2020-12-25</td>
							<td>4,163</td>
							<td>500</td>
						</tr>
						<tr>
							<td>6</td>
							<td>여행꿀팁</td>
							<td> </td>
							<td>여행작가</td>
							<td>abc</td>
							<td>2021-05-26</td>
							<td>145</td>
							<td>50</td>
						</tr>
						<tr>
							<td>7</td>
							<td>여행꿀팁</td>
							<td> </td>
							<td>여행작가</td>
							<td>abc</td>
							<td>2021-05-26</td>
							<td>145</td>
							<td>50</td>
						</tr>
						<tr>
							<td>8</td>
							<td>여행꿀팁</td>
							<td> </td>
							<td>여행작가</td>
							<td>abc</td>
							<td>2021-05-26</td>
							<td>145</td>
							<td>50</td>
						</tr>
						<tr>
							<td>9</td>
							<td>여행꿀팁</td>
							<td> </td>
							<td>여행작가</td>
							<td>abc</td>
							<td>2021-05-26</td>
							<td>145</td>
							<td>50</td>
						</tr>
						<tr>
							<td>10</td>
							<td>여행꿀팁</td>
							<td> </td>
							<td>여행작가</td>
							<td>abc</td>
							<td>2021-05-26</td>
							<td>145</td>
							<td>50</td>
						</tr>
						<tr>
							<td>11</td>
							<td>여행꿀팁</td>
							<td> </td>
							<td>여행작가</td>
							<td>abc</td>
							<td>2021-05-26</td>
							<td>145</td>
							<td>50</td>
						</tr>
						<tr>
							<td>12</td>
							<td>여행꿀팁</td>
							<td> </td>
							<td>여행작가</td>
							<td>abc</td>
							<td>2021-05-26</td>
							<td>145</td>
							<td>50</td>
						</tr>
						<tr>
							<td>13</td>
							<td>여행꿀팁</td>
							<td> </td>
							<td>여행작가</td>
							<td>abc</td>
							<td>2021-05-26</td>
							<td>145</td>
							<td>50</td>
						</tr>
						<tr>
							<td>14</td>
							<td>여행꿀팁</td>
							<td> </td>
							<td>여행작가</td>
							<td>abc</td>
							<td>2021-05-26</td>
							<td>145</td>
							<td>50</td>
						</tr>
						<tr>
							<td>15</td>
							<td>여행꿀팁</td>
							<td> </td>
							<td>여행작가</td>
							<td>abc</td>
							<td>2021-05-26</td>
							<td>145</td>
							<td>50</td>
						</tr>
						<tr>
							<td>16</td>
							<td>여행꿀팁</td>
							<td> </td>
							<td>여행작가</td>
							<td>abc</td>
							<td>2021-05-26</td>
							<td>145</td>
							<td>50</td>
						</tr>
						<tr>
							<td>17</td>
							<td>여행꿀팁</td>
							<td> </td>
							<td>여행작가</td>
							<td>abc</td>
							<td>2021-05-26</td>
							<td>145</td>
							<td>50</td>
						</tr>
						<tr>
							<td>18</td>
							<td>여행꿀팁</td>
							<td> </td>
							<td>여행작가</td>
							<td>abc</td>
							<td>2021-05-26</td>
							<td>145</td>
							<td>50</td>
						</tr>
						<tr>
							<td>19</td>
							<td>여행꿀팁</td>
							<td> </td>
							<td>여행작가</td>
							<td>abc</td>
							<td>2021-05-26</td>
							<td>145</td>
							<td>50</td>
						</tr>
						<tr>
							<td>20</td>
							<td>여행꿀팁</td>
							<td> </td>
							<td>여행작가</td>
							<td>abc</td>
							<td>2021-05-26</td>
							<td>145</td>
							<td>50</td>
						</tr>
					</tbody>
				</table>
				<div class="paging_wrap">
					<div class="paging"></div>
					<div class="board_search">
						<img alt="search" src="./resources/images/search.png" class="search_icon" /> <input
							type="text" class="search" placeholder="검색"> <select
							class="filter">
							<option value="0">제목+내용</option>
							<option value="1">제목</option>
							<option value="2">닉네임</option>
							<option value="3">글번호</option>
							<option value="4">댓글작성자</option>
						</select>
					</div>
				</div>
			</div>
		</div>
		<div id="footer">
			<p>
				POPJOURNEY<br /> GDJ-35기 LEE Eun-Soo, LEE In-Bok, CHOI Jeong-Min<br />
				Copyright© POPJOURNEY. All Rights Reserved.
			</p>
		</div>
	</div>
</body>
</html>