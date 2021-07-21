<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
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
	display: inline-block;
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
	display: inline-block;
	position: relative;
	width: 100%;
	height: 55px;
}

.sub_login2 {
	display: inline-block;
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
	border: 2px solid;
}

.sub_area, .top_msg {
	font-size: 18px;
	font-weight: bold;
	color: black;
	text-align: center;
}

.top_msg span {
	display: block;
	margin-bottom: 20px;
}

.top_msg span:first-child {
	font-size: 18pt;
}

.top_msg span:nth-child(2) {
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
	font-size: 17pt;
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
/* 공지 */
.td_n {
	color: #f1404b;
}
/* 여행꿀팁 */
.td_t {
	color: #8000ff;
}
/* QnA */
.td_q {
	color: #4d94ff;
}
/* 잡담 */
.td_c {
	 color: #00592d;
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
	font-weight: bold;
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
	text-align: center;
}

.paging_wrap div {
    display: inline-block;
    padding: 5px;
    margin-left: 3px;
    margin-right: 3px;
    cursor: pointer;
    text-align: center;
    color: #2e3459;
    }

#footer {
	display: block;
	width: 100%;
	height: 100px;
	background-color: #2e3459;
	color: #FFFFFF;
	font-size: 15px;
}
.paging_wrap div:active, .paging_wrap .on  {
	color: #F1404B;
    text-decoration: underline;

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
	reloadList();
	
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
	$("#newPost").on("click", function() {
  		location.href = "postWrite";
  	});
	$(".search_btn").on("click", function () {
		$("#page").val(1);
		reloadList();
	});
	$(".paging_wrap").on("click", "div", function () {
		$("#page").val($(this).attr("page"));
		reloadList();
	});	
	$(".post").on("click", function () {
		$("#postNo").val($(this).attr("postno"));
		$("#actionForm").attr("action", "post");
		$("#actionForm").submit();
	});
}); //document ready end
// 카테고리별, 작성자별(등급, 내가 쓴 글)
function reloadList() {
	var params = $("#BoardForm").serialize();
	
	console.log(params);
	$.ajax({
		url:"communityLists", 
		type: "post",
		dataType: "json",
		data : params,
		success: function(res){
			drawList(res.list);
		}, 
		error: function (request, status, error) {
			console.log(error);
		}
	});
}
function drawList(list) {
	var html = "";
	
	for(var d of list){
		html += "<tr postno=\"" + d.POST_NO + "\">";
		html += "<td>" + d.POST_NO + "</td>";
		switch(d.CATEGORY_NO)
		{
			case 1:
				html +=	"<td class=\"td_n\">공지사항 </td>";
				break;
			case 2:
				html +=	"<td class=\"td_t\">여행꿀팁 </td>";
				break;
			case 3:
				html +=	"<td class=\"td_q\"> Q & A </td>";
				break;
			case 4:
				html +=	"<td class=\"td_c\">잡&nbsp;&nbsp;&nbsp;담 </td>";
				break;
			default:
				console.log(d.CATEGORY_NO);
		}
		html += "<td>" + d.TITLE + d.CMT_CNT +"</td>";
		switch(d.GRADE_NO)
		{
			case 0:
				html +=	"<td>관리자 </td>";
				break;
			case 1:
				html +=	"<td>여행꾼</td>";
				break;
			case 2:
				html +=	"<td>여행작가 </td>";
				break;
			default:
				console.log(d.GRADE_NO);
		}
		html += "<td>" + d.NIC + "</td>";
		html += "<td>" + d.BOARD_DATE + "</td>";
		html += "<td>" + d.HIT + "</td>";
		html += "<td>" + d.LIKE_CNT + "</td>";
		html += "</tr>";
	}
	
	$(".board_list tbody").html(html); 
}
</script>
</head>
<body>
<form action="#" id="BoardForm">
	<input type="hidden" id="firstPage" name="firstPage" value="1"/>
	<input type="hidden" id="page" name="page" value="${page}"/>
	<input type="hidden" id="lastPage" name="lastPage" value="15"/>
</form>
				
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
								<form action="#" id="loginForm" method="post">
									<input type="button" class="login_btn" value="로그인" /> 
									<input type="password" class="login" id="inputPW" name="inputPW" placeholder="PW" /> 
									<input type="text" class="login" id="inputID" name="inputID" placeholder="ID" />
								</form>
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
				type="text" class="search" placeholder="검색">
				<select class="filter">
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
		<div class= "top_msg">
			<span>자유게시판</span>
			<span>다른 사용자들과 의견을 나누세요.</span>
		</div>
		<div class="sub_area">
			
			<img src="./resources/images/board2.png">
		</div>
		
		<div id="container">
			<div class="top_area">
				<div class="sub_profile">
					<div>
						<img alt="profile" src="./resources/images/profile3.png" class="profile_img">
					</div>
					<div class="info">
						<span>${sNIC}</span>
						<div class="grade">
							<img alt="icon" src="./resources/images/grade.png"> 
							<c:choose>
							<c:when test="${sGRADE_NO eq 0}">
							<span>관리자</span>
							</c:when>
							<c:when test="${sGRADE_NO eq 1}">
							<span>여행꾼</span>
							</c:when>
							<c:when test="${sGRADE_NO eq 2}">
							<span>여행작가</span>
							</c:when>
							</c:choose>
						</div>
						<div class="cnt">
							<span>총 게시글 100</span> <span>총 댓글 100</span>
						</div>
					</div>
				</div>
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
			<div class="board_list_wrap">
				<div class="board_menu">
					<nav class="left_nav">
						<ul>
							<li id="postAll"><img alt="bookmark" src="./resources/images/all.png"><br />전체보기</li>
							<li id="postGrade2"><img alt="bookmark" src="./resources/images/writer.png"><br />여행작가</li>
							<li id="postGrade1"><img alt="작성자" src="./resources/images/user2.png"><br />여행꾼</li>
						</ul>
					</nav>
					<nav class="right_nav">
						<ul>
							<li><img alt="bookmark" src="./resources/images/doc.png"><br />내가 쓴 글</li>
							<li><img alt="bookmark" src="./resources/images/comment.png"><br />댓글 쓴 글</li>
							<li id="newPost"><img alt="bookmark" src="./resources/images/pen.png"><br />글쓰기</li>
						</ul>
					</nav>
				</div>
	
				<table class="board_list">
					<colgroup>
						<col width="5%" /> <!-- 글번호 -->
						<col width="10%" /> <!-- 카테고리 -->
						<col width="30%" /> <!-- 제목 -->
						<col width="10%" /> <!-- 등급 -->
						<col width="10%" /> <!-- 닉네임 -->
						<col width="10%" /> <!-- 작성일 -->
						<col width="5%" /> <!-- 조회 -->
						<col width="5%" /> <!-- 좋아요 -->
					</colgroup>
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
					<tbody></tbody>
				</table>
				<div class="paging_wrap">
					<div class="paging"></div>
					<div class="board_search">
						<img alt="search" src="./resources/images/search.png" class="search_icon" /> 
						<input type="text" class="search" name="searchTxt" placeholder="검색" value="${param.searchTxt}"> 
						<select class="filter" id="selectFilter" name="selectFilter">
							<option value="0">제목+내용</option>
							<option value="1">제목</option>
							<option value="2">닉네임</option>
							<option value="3">글번호</option>
						</select>
					</div>
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
</body>
</html>