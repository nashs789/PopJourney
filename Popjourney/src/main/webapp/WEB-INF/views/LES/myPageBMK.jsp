<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>북마크</title>
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
	position: relative; vertical-align : top;
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
	display: none;
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
}

.menu ul li:hover {
	color: #fcba03;
}

.menu ul li a {
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

input[type='text']:focus, input[type='password']:focus, select:focus,
	textarea:focus {
	outline-color: #fcba03;
}

input[type='checkbox'] {
	margin: 10px 10px 0 310px;
	width: 20px;
	height: 20px;
}
/* 여기까지 헤더 레이아웃 !!! */
#container {
	display: block;
	width: 1280px;
	height: 1800px;
	margin: 0 auto;
}

.sub_profile {
	z-index: 100;
	width: 100%;
	height: 300px;
	background-color: #fcba03;
}

.info {
	position: relative;
	z-index: 1;
	width: 100%;
	padding-top: 30px;
	text-align: center;
	font-size: 23pt;
	font-weight: bold;
	color: #2e3459;
}

.info img {
	border-radius: 100px;
	width: 150px;
	height: 150px;
}

.info>span {
	font-size: 12pt;
}

.board_menu {
	width: 100%;
	height: 135px;
	margin-top: 10px;
	border-bottom: 2px solid #2e3459;
}

.menu_nav {
	text-align: center;
	height: 50px;
	display: block;
	margin-top: 30px;
}

.menu_nav ul li {
	height: 100px;
	list-style: none;
	float: left;
	text-align: center;
	color: #2e3459;
	margin-left: 140px;
	line-height: 25px;
	text-decoration: none;
	font-size: 18px;
	font-weight: 900;
}

.menu_nav ul li {
	display: inline-block;
	height: 50px;
	text-decoration: none;
	color: #2e3459;
}
.menu_nav ul li:hover img, .menu_nav ul li.on img {
	background-color: #f37321;
}

.menu_nav ul li img {
	margin: 10px 20px 0px 20px;
	padding: 4px;
	width: 30px;
	height: 30px;
	background-color: #2e3459;
	border-radius: 100px;
}

#left_group {
	display: inline-block;
	position: relative;
	height: 100%;
	padding: 0 0 0 50px;
}

#left_group li {
	margin: 0px;
}

#left_group img {
	margin-left: 0;
	margin-right: 0;
	cursor: pointer;
}

.right_group {
	padding-left: 0;
	display: inline-block;
	width: 58%;
	height: 100%;
}

.right_group img{
	cursor: pointer;
}

.right_group li:nth-child(1) img{
	background-color: #f37321;
}

.board_list_wrap {
	margin: 0;
	padding: 0;
	height: 1500px;
	font-weight: 500;
}

a {
	text-decoration: none;
	color: inherit;
}

.board_list {
	width: 100%;
	border-top: 2px solid #2e3459;
}

#path_info {
	width: calc(100% -20px);
	height: 35px;
	font-size: 10pt;
	padding-top: 10px;
	padding-left: 20px;
}


.home_icon {
	position: relative;
	top: 3px;
	width: 20px;
	height: 20px;
}

.folder_btn_list {
	height: 65px;
	margin: 0 0 20px 1070px;
	float: right;
}

.folder_btn_list div span {
	font-size: 18pt;
}

.edit_btn, .del_btn, .add_btn {
	display: inline-block;
	text-align: center;
	width: 35px;
	margin-left: 10px;
	padding: 5px 10px;
	border-radius: 20px;
	font-size: 13px;
	font-weight: bold;
	color: #2e3459;
	background-color: white;
	border: 2px solid #2e3459;
	box-shadow: rgba(0, 0, 0, 0.09) 0 6px 9px 0;
	cursor: pointer;
}
.edit_btn span {
	padding-left: 2px;
}
.add_btn:hover, .edit_btn:hover {
	border: 2px solid #2e3459;
	background-color: #2e3459;
	color: white;
}

.del_btn:hover {
	border: 2px solid #F1404B;
	background-color: #F1404B;
	color: white;
}

.more_btn {
	text-align: center;
	margin-top: 50px;
}

.more_btn input {
	padding: 10px 30px;
	border-radius: 20px;
	font-size: 13px;
	font-weight: bold;
	color: #2e3459;
	background-color: white;
	border: 2px solid #2e3459;
	box-shadow: rgba(0, 0, 0, 0.09) 0 6px 9px 0;
	cursor: pointer;
}

.edit_btn input {
	padding: 5px 10px;
	border-radius: 20px;
	font-size: 13px;
	font-weight: bold;
	color: white;
	background-color: #2e3459;
	border: 2px solid #2e3459;
	box-shadow: rgba(0, 0, 0, 0.09) 0 6px 9px 0;
	cursor: pointer;
}

.gallery {
	margin-top: 30px;
	padding: 30px 0 0 45px;
	height: 1200px;
}

.post, .folder {
	float: left;
	width: 340px;
	cursor: pointer;
	margin: 0 0 40px 40px;
	border: 1px solid #f1f1f1;
	font-size: 10pt;
	color: black;
}

.post {
	height: 390px;
}

.folder {
	height: 350px;
}

.folder_info {
	width: 294px;
	height: 100px;
	position: relative;
	display: inline-block;
	padding: 0 23px 0 23px;
}

.folder_thumb {
	text-align: center;
	height: 200px;
	display: block;
	position: relative;
}

.folder_thumb img {
	width: 200px;
	height: 200px;
}

.folder_info p:nth-child(2) {
	width: 294px;
	height: 50px;
}

.folder:hover, .post:hover {
	box-shadow: rgba(0, 0, 0, 0.09) 0 6px 9px 0;
}

.thumb {
	height: 210px;
	display: block;
	position: relative;
}

.thumb img {
	width: 292px;
	height: 170px;
	margin: 23px;
}

.post_info {
	height: 110px;
	position: relative;
	display: inline-block;
	padding: 0 23px 0 23px;
}

.post_info p:first-child {
	margin-top: 0;
}

.post_info strong {
	font-size: 12pt;
}

.post_profile {
	position: absolute;
	width: 317px;
	height: 50px;
	margin: 10px 0 0 23px;
}

.post_profile img {
	width: 42px;
	height: 42px;
}

.post_profile>span {
	position: absolute;
	line-height: 42px;
	margin-left: 8px;
}

.post_profile>div {
	float: right;
	margin-top: 5px;
}

.post_profile>div>span {
	float: right;
	margin-right: 23px;
}

.post_profile>div>div {
	margin-right: 23px;
}

.post_profile>div span {
	margin-top: 5px;
}

.post_profile>div>div .cnt {
	color: #F1404B;
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

.popup {
	display:none;
	/* display: inline-block; */
	width: 600px;
	height: 500px;
	background-color: #fcfcfc;
	box-shadow: rgba(0, 0, 0, 0.09) 0 6px 9px 0;
	position: fixed;
	top: calc(50% - 250px);
	left: calc(50% - 300px);
	z-index: 500;
	font-size: 12pt;
	border-radius: 10px;
	font-size: 0px;
	border: 0px;
}

.popup_contents_txt {
	font-size: 11pt;
	font-weight: bold;
	width: 540px;
	height: 390px;
	margin: 30px auto 30px auto;
}

.popup_contents_txt>div>span {
	margin-top: 12px;
}

.popup_contents_txt>div:first-child {
	font-size: 18pt;
	padding-bottom: 7px;
	border-bottom: 2px solid #f37321;
}

.radio_title {
	margin-top: 15px;
}

.folder_radio {
	text-align: center;
	margin: 15px 0;
}
.folder_radio_box {
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 20px;
	padding: 0 10px 5px 10px;
	margin: 0 20px;
}
.folder_radio img {
	width: 100px;
	height: 100px;
}
.folder_radio input[type=radio]:checked+label {
	color: #000;
}

.popup_contents_txt div:first-child  span {
	float: right;
	font-size: 10pt;
}

.pop_name {
	margin-top: 10px;
	margin-bottom: 20px;
	width: 527px;
}

.pop_memo {
	resize: none;
	margin-top: 10px;
	width: 530px;
}

.asterisk {
	color: red;
	font-weight: bold;
	margin-right: 5px;
	padding-top: 2px;
}

.btn_list a {
	text-decoration: none;
	display: inline-block;
	text-align: center;
	width: 270px;
	height: 30px;
	padding: 10px 15px 10px 15px;
	font-size: 12pt;
	color: #f37321;
	font-weight: bold;
	line-height: 30px;
}

.btn_list a:first-child {
	border-radius: 0 0 0 10px;
}

.btn_list a:last-child {
	border-radius: 0 0 10px 0;
}

.btn_list a:hover, .alert_btn_list a:hover {
	background-color: #f37321;
	color: white;
}

.alert_popup {
	display: none;
	/* display: inline-block */;
	width: 300px;
	height: 150px;
	background-color: #fcfcfc;
	box-shadow: rgba(0, 0, 0, 0.09) 0 6px 9px 0;
	position: fixed;
	top: calc(50% - 75px);
	left: calc(50% - 150px);
	z-index: 500;
	font-size: 16pt;
	border-radius: 10px;
	font-size: 0px;
	border: 0px;
}

.alert_popup_entity_txt {
	font-size: 12pt;
	font-weight: bold;
	text-align: center;
	line-height: 50px;
	width: 265px;
	height: 40px;
	margin: 30px auto 30px auto;
}

.alert_btn_list a {
	text-decoration: none;
	display: inline-block;
	text-align: center;
	width: 270px;
	height: 30px;
	padding: 10px 15px 10px 15px;
	font-size: 12pt;
	color: #f37321;
	font-weight: bold;
	line-height: 30px;
	border-radius: 0 0 10px 10px;
}

.bg {
	display: none;
	/* display: inline-block; */
	width: 100%;
	height: 3070px;
	position: absolute;
	top: 0px;
	left: 0px;
	background-color: #000000;
	z-index: 400;
	opacity: 0.2;
}
</style>
<script type="text/javascript" src="jquery-1.12.4.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	
	if($("BMK_NO").val() =="1"){
		$("#searchGbn").val("${param.searchGbn}");
	}
	 reloadList();
});

function reloadList() {
	var params = $("#actionForm").serialize();
	
	$.ajax({
		url:"MyPageBMKLists", 
		type: "post",
		dataType: "json",
		data : params,
		success: function(res){
			drawList(res.list);
			drawPaging(res.pb);
		}, 
		error: function (request, status, error) {
			console.log(error);
		}
	});
}
//목록 그리기 
/* function drawList(list) {
	var html = "";
	
	for(var d of list){
		html += "<tr bno=\"" + d.B_NO + "\">";
		html += "<td>" + d.B_NO + "</td>";
		html += "<td>" + d.B_TITLE;
		if(d.B_FILE != null){
			html += "<img src=\"resources/images/attFile.png\" alt=\"첨부파일\" />";
		}
		html += "</td>";
		html += "<td>" + d.B_WRITER + "</td>";
		html += "<td>" + d.B_DT + "</td>";
		html += "</tr>";
	}
	
	$(".list_wrap tbody").html(html); 
} */

function setDivHeight() {
	/* $('#container').css({'height':(windowHeight-topHeight)+'px'});
	
	var container = document.getElementByClass("container");
	var board_llist_wrap = document.getElementByClass("board_llist_wrap");
	var gallery = document.getElementByClass("gallery");
	
	container.style.height = $('#container').css('height') +  */
	
	$('#container').height($('#container').css('height') + 500);
	$('.board_llist_wrap').height($('.board_llist_wrap').css('height') + 500);
	$('.gallery').height($('.gallery').css('height') + 500);
	
}

</script>
</head>
<body>
	<div id="wrap">
		<!-- header부분 고정 -->
		<div id="header">
			<div class="banner">
				<div class="top">
					<div class="logo_area">
						<a href="#"><img alt="로고" src="logo.png" class="logo_photo"></a>
						<div class="site_name">우리들의 여행일지</div>
					</div>
					<div class="btns">
						<!-- 밑에 logins와 연동 -->
						<ul>
							<li><img alt="bell" src="bell.png" class="bell_icon">
								<div class="timeline">
									<table border="1">
										<colgroup>
											<col width="70px">
											<col width="331.6px">
										</colgroup>
										<tr>
											<th rowspan="2"><img alt="프로필" src="profile.png"></th>
											<th>[여행일지]오늘도....에 <span>홍길동님</span>이 댓글을 다셨습니다
											</th>
										</tr>
										<tr>
											<th>2시간전 (오후)9:17분</th>
										</tr>
										<tr>
											<th rowspan="2"><img alt="프로필" src="profile.png"></th>
											<th>[여행일지]이 오늘도.... 에 <span>해리포터님</span>이 댓글을 다셨습니다
											</th>
										</tr>
										<tr>
											<th>3시간전 (오후)8:54분</th>
										</tr>
										<tr>
											<th rowspan="2"><img alt="프로필" src="profile.png"></th>
											<th>[여행일지]오늘도....에 <span>말포이님</span>이 댓글을 다셨습니다
											</th>
										</tr>
										<tr>
											<th>3시간전 (오후)8:49분</th>
										</tr>
										<tr>
											<th rowspan="2"><img alt="프로필" src="profile.png"></th>
											<th><span>사우론님</span>이회원님을 팔로우 하셨습니다</th>
										</tr>
										<tr>
											<th>3시간전 (오후)8:45분</th>
										</tr>
										<tfoot>
											<tr>
												<th colspan="2">...더보기</th>
											</tr>
										</tfoot>
									</table>
								</div></li>
							<li><img alt="bookmark" src="bmk.png"></li>
							<li><img alt="프로필" src="profile.png">
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
					<li>여행게시판</li>
					<li>자유게시판</li>
					<li>여행작가</li>
					<li>고객센터</li>
					<li>내부관리자</li>
				</ul>
			</nav>
			<img alt="search" src="search.png" class="search_icon" /> <input
				type="text" class="search" placeholder="검색"> <select
				class="filter">
				<option value="0">통합검색</option>
				<option value="1">여행일지</option>
				<option value="2">자유게시판</option>
				<option value="3">닉네임</option>
			</select>
		</div>
		<div class="sub_profile">
			<div class="info">
				<img alt="profile" src="profile3.png" class="profile_img">
				<div>닉네임</div>
				<span>소개글</span>
			</div>
		</div>
		<div id="container">
			<div class="board_list_wrap">
				<div class="board_menu">
					<nav class="menu_nav">
						<ul id="left_group">
							<li><img alt="thumbnail" src="flag.png"><br />여행일지</li>
							<li><img alt="map" src="map.png"><br />&nbsp;&nbsp;100</li>
						</ul>
						<ul class="right_group">
							<li><img alt="bookmark" src="bmrk.png"><br />북마크
									100</li>
							<li><img alt="follower" src="follower.png"><br />팔로워
									100</li>
							<li><img alt="following" src="following.png"><br />팔로잉
									100</li>
						</ul>
					</nav>
				</div>
				<div id="path_info">
					<span> <img alt="메인페이지" src="home.png" class="home_icon">
					</span> &nbsp;&nbsp;>&nbsp;&nbsp; <span> 마이페이지 </span>
					&nbsp;&nbsp;>&nbsp;&nbsp; <span> 북마크 </span> &nbsp;>&nbsp;&nbsp;폴더1
				</div>
				<div class="folder_btn_list">
						<div class="add_btn">
							<span> &#43;</span> <br/>추  가
						</div>
						<div class="edit_btn">
							<span>  ⚙️</span> <br/>수  정
						</div>
						<div class="del_btn">
							<span> &#45;</span> <br/>삭  제
						</div>
				</div>
				<div class="gallery">
					<div class="folder">
						<input type = "checkbox" id = "c1" /><label for = "c1"></label>
						<span class="folder_thumb"><img alt="썸네일"
								src="backpack1.png"></span>
							<div class="folder_info">
								<p>
									<strong>폴더명</strong>
								</p>
								<p>
									웹 브라우저에서 사용자가 웹사이트의 URL를 등록하는 기능 또는 그렇게 등록한 URL의 목록을 가리킨다.
								</p>
							</div>
						</div>
					<div class="folder">
						<input type = "checkbox" id = "c2" /><label for = "c2"></label>
						<span class="folder_thumb"><img alt="썸네일"
								src="backpack2.png"></span>
							<div class="folder_info">
								<p>
									<strong>폴더명</strong>
								</p>
								<p>
									폴더 메모
								</p>
							</div>
					</div>
					<div class="folder">
						<input type = "checkbox" id = "c3" /><label for = "c3"></label>
						<span class="folder_thumb"><img alt="썸네일"
								src="backpack3.png"></span>
							<div class="folder_info">
								<p>
									<strong>폴더명</strong>
								</p>
								<p>
									웹 브라우저에서 사용자가 웹사이트의 URL를 등록하는 기능 또는 그렇게 등록한 URL의 목록을 가리킨다.
								</p>
							</div>
					</div>
					<div class="post">
						<span class="thumb"><img alt="썸네일"
								src="a4.jpg"></span>
							<div class="post_info">
								<p>
									<span>지역별 > 대구</span>
								</p>
								<p>
									<strong>고북수진 당일치기</strong>
								</p>
								<p>
									<em>#먹거리 #야경#먹거리 #야경#먹거리 #야경#먹거리 #야경#먹거리 #야경#야경#먹거리 #야경</em>
								</p>
							</div>
							<div class="post_profile">
								<img alt="작성자" src="profile3.png"> <span>닉네임</span>
								<div>
									<div>
										<span>조회수</span> <span class="cnt">100</span> <span>좋아요</span>
										<span class="cnt">100</span>
									</div>
									<span>2021-05-24</span>
								</div>

							</div>
					</div>
					<div class="post">
						<span class="thumb"><img alt="썸네일"
								src="a1.jpg"></span>
							<div class="post_info">
								<p>
									<span>지역별 > 대구</span>
								</p>
								<p>
									<strong>고북수진 당일치기</strong>
								</p>
								<p>
									<em>#먹거리 #야경#먹거리 #야경#먹거리 #야경#먹거리 #야경#먹거리 #야경#야경#먹거리 #야경</em>
								</p>
							</div>
							<div class="post_profile">
								<img alt="작성자" src="profile3.png"> <span>닉네임</span>
								<div>
									<div>
										<span>조회수</span> <span class="cnt">100</span> <span>좋아요</span>
										<span class="cnt">100</span>
									</div>
									<span>2021-05-24</span>
								</div>
							</div>
					</div>
					<div class="post">
						<span class="thumb"><img alt="썸네일"
								src="a2.jpg"></span>
							<div class="post_info">
								<p>
									<span>지역별 > 대구</span>
								</p>
								<p>
									<strong>고북수진 당일치기</strong>
								</p>
								<p>
									<em>#먹거리 #야경#먹거리 #야경#먹거리 #야경#먹거리 #야경#먹거리 #야경#야경#먹거리 #야경</em>
								</p>
							</div>
							<div class="post_profile">
								<img alt="작성자" src="profile3.png"> <span>닉네임</span>
								<div>
									<div>
										<span>조회수</span> <span class="cnt">100</span> <span>좋아요</span>
										<span class="cnt">100</span>
									</div>
									<span>2021-05-24</span>
								</div>
							</div>
					</div>
					<div class="post">
						<span class="thumb"><img alt="썸네일"
								src="a3.jpg"></span>
							<div class="post_info">
								<p>
									<span>지역별 > 대구</span>
								</p>
								<p>
									<strong>고북수진 당일치기</strong>
								</p>
								<p>
									<em>#먹거리 #야경#먹거리 #야경#먹거리 #야경#먹거리 #야경#먹거리 #야경#야경#먹거리 #야경</em>
								</p>
							</div>
							<div class="post_profile">
								<img alt="작성자" src="profile3.png"> <span>닉네임</span>
								<div>
									<div>
										<span>조회수</span> <span class="cnt">100</span> <span>좋아요</span>
										<span class="cnt">100</span>
									</div>
									<span>2021-05-24</span>
								</div>
							</div>
					</div>
					<!-- <div class="post">
						<span class="thumb"><img alt="썸네일"
								src="a4.jpg"></span>
							<div class="post_info">
								<p>
									<span>지역별 > 대구</span>
								</p>
								<p>
									<strong>고북수진 당일치기</strong>
								</p>
								<p>
									<em>#먹거리 #야경#먹거리 #야경#먹거리 #야경#먹거리 #야경#먹거리 #야경#야경#먹거리 #야경</em>
								</p>
							</div>
							<div class="post_profile">
								<img alt="작성자" src="profile3.png"> <span>닉네임</span>
								<div>
									<div>
										<span>조회수</span> <span class="cnt">100</span> <span>좋아요</span>
										<span class="cnt">100</span>
									</div>
									<span>2021-05-24</span>
								</div>
							</div>
					</div>
					<div class="post">
						<span class="thumb"><img alt="썸네일"
								src="a1.jpg"></span>
							<div class="post_info">
								<p>
									<span>지역별 > 대구</span>
								</p>
								<p>
									<strong>고북수진 당일치기</strong>
								</p>
								<p>
									<em>#먹거리 #야경#먹거리 #야경#먹거리 #야경#먹거리 #야경#먹거리 #야경#야경#먹거리 #야경</em>
								</p>
							</div>
							<div class="post_profile">
								<img alt="작성자" src="profile3.png"> <span>닉네임</span>
								<div>
									<div>
										<span>조회수</span> <span class="cnt">100</span> <span>좋아요</span>
										<span class="cnt">100</span>
									</div>
									<span>2021-05-24</span>
								</div>
							</div>
					</div>
					<div class="post">
						<span class="thumb"><img alt="썸네일"
								src="a2.jpg"></span>
							<div class="post_info">
								<p>
									<span>지역별 > 대구</span>
								</p>
								<p>
									<strong>고북수진 당일치기</strong>
								</p>
								<p>
									<em>#먹거리 #야경#먹거리 #야경#먹거리 #야경#먹거리 #야경#먹거리 #야경#야경#먹거리 #야경</em>
								</p>
							</div>
							<div class="post_profile">
								<img alt="작성자" src="profile3.png"> <span>닉네임</span>
								<div>
									<div>
										<span>조회수</span> <span class="cnt">100</span> <span>좋아요</span>
										<span class="cnt">100</span>
									</div>
									<span>2021-05-24</span>
								</div>
							</div>
					</div>
					<div class="post">
						<span class="thumb"><img alt="썸네일"
								src="a3.jpg"></span>
							<div class="post_info">
								<p>
									<span>지역별 > 대구</span>
								</p>
								<p>
									<strong>고북수진 당일치기</strong>
								</p>
								<p>
									<em>#먹거리 #야경#먹거리 #야경#먹거리 #야경#먹거리 #야경#먹거리 #야경#야경#먹거리 #야경</em>
								</p>
							</div>
							<div class="post_profile">
								<img alt="작성자" src="profile3.png"> <span>닉네임</span>
								<div>
									<div>
										<span>조회수</span> <span class="cnt">100</span> <span>좋아요</span>
										<span class="cnt">100</span>
									</div>
									<span>2021-05-24</span>
								</div>
							</div>
					</div>
					<div class="post">
						<span class="thumb"><img alt="썸네일"
								src="a4.jpg"></span>
							<div class="post_info">
								<p>
									<span>지역별 > 대구</span>
								</p>
								<p>
									<strong>고북수진 당일치기</strong>
								</p>
								<p>
									<em>#먹거리 #야경#먹거리 #야경#먹거리 #야경#먹거리 #야경#먹거리 #야경#야경#먹거리 #야경</em>
								</p>
							</div>
							<div class="post_profile">
								<img alt="작성자" src="profile3.png"> <span>닉네임</span>
								<div>
									<div>
										<span>조회수</span> <span class="cnt">100</span> <span>좋아요</span>
										<span class="cnt">100</span>
									</div>
									<span>2021-05-24</span>
								</div>
							</div>
					</div>
					<div class="post">
						<span class="thumb"><img alt="썸네일"
								src="a1.jpg"></span>
							<div class="post_info">
								<p>
									<span>지역별 > 대구</span>
								</p>
								<p>
									<strong>고북수진 당일치기</strong>
								</p>
								<p>
									<em>#먹거리 #야경#먹거리 #야경#먹거리 #야경#먹거리 #야경#먹거리 #야경#야경#먹거리 #야경</em>
								</p>
							</div>
							<div class="post_profile">
								<img alt="작성자" src="profile3.png"> <span>닉네임</span>
								<div>
									<div>
										<span>조회수</span> <span class="cnt">100</span> <span>좋아요</span>
										<span class="cnt">100</span>
									</div>
									<span>2021-05-24</span>
								</div>

							</div>
					</div>
					<div class="post">
						<span class="thumb"><img alt="썸네일"
								src="a2.jpg"></span>
							<div class="post_info">
								<p>
									<span>지역별 > 대구</span>
								</p>
								<p>
									<strong>고북수진 당일치기</strong>
								</p>
								<p>
									<em>#먹거리 #야경#먹거리 #야경#먹거리 #야경#먹거리 #야경#먹거리 #야경#야경#먹거리 #야경</em>
								</p>
							</div>
							<div class="post_profile">
								<img alt="작성자" src="profile3.png"> <span>닉네임</span>
								<div>
									<div>
										<span>조회수</span> <span class="cnt">100</span> <span>좋아요</span>
										<span class="cnt">100</span>
									</div>
									<span>2021-05-24</span>
								</div>
							</div>
					</div>
					<div class="post">
						<span class="thumb"><img alt="썸네일"
								src="a3.jpg"></span>
							<div class="post_info">
								<p>
									<span>지역별 > 대구</span>
								</p>
								<p>
									<strong>고북수진 당일치기</strong>
								</p>
								<p>
									<em>#먹거리 #야경#먹거리 #야경#먹거리 #야경#먹거리 #야경#먹거리 #야경#야경#먹거리 #야경</em>
								</p>
							</div>
							<div class="post_profile">
								<img alt="작성자" src="profile3.png"> <span>닉네임</span>
								<div>
									<div>
										<span>조회수</span> <span class="cnt">100</span> <span>좋아요</span>
										<span class="cnt">100</span>
									</div>
									<span>2021-05-24</span>
								</div>
							</div>
					</div> -->
				</div>
			</div>
			<div class="more_btn">
				<input type="button" value="더 보 기" />
			</div>
		</div>

	</div>

	<div id="footer">
		<p>
			POPJOURNEY<br /> GDJ-35기 LEE Eun-Soo, LEE In-Bok, CHOI Jeong-Min<br />
			Copyright© POPJOURNEY. All Rights Reserved.
		</p>
	</div>
	
	<div class="popup">
		<div class="popup_contents_txt">
			<div>
				폴더 추가<span>필수 입력 사항 </span><span class= "asterisk">&#42;</span>
			</div>
			<div class="radio_title">
				<span>폴더 선택</span> <span class= "asterisk">&#42;</span>
			</div>
			<div class="folder_radio">
				<div class="folder_radio_box">
					<input type="radio" id="folder_radio1" name="folder_img"><br/>
			    	<label for="folder_radio1"><img src="backpack1.png"> </label>
				</div>
				<div class="folder_radio_box">
					<input type="radio" id="folder_radio2" name="folder_img"><br/>
			    	<label for="folder_radio2"><img src="backpack2.png"></label>
				</div>
			    <div class="folder_radio_box">
				    <input type="radio" id="folder_radio3" name="folder_img"><br/>
				    <label for="folder_radio3"><img src="backpack3.png"></label>
			    </div>
			</div>
			<div>
				폴더 이름 <span class= "asterisk">&#42;</span><br /> <input type="text" class="pop_name" required/><br />
				폴더 메모<br /> <textarea class="pop_memo" rows="3" cols="73"  placeholder="폴더에 대해 간략히 설명해주십시오" ></textarea>
			</div>
		</div>
		<div class="btn_list">
			<span>추 가</span> <span>취 소</span>
		</div>
	</div>
	<div class="popup">
		<div class="popup_contents_txt">
			<div>
				폴더 수정<span>필수 입력 사항 </span><span class= "asterisk">&#42;</span>
			</div>
			<div class="radio_title">
				<span>폴더 선택</span> <span class= "asterisk">&#42;</span>
			</div>
			<div class="folder_radio">
				<div class="folder_radio_box">
					<input type="radio" id="folder_radio1" name="folder_img"><br/>
			    	<label for="folder_radio1"><img src="backpack1.png"> </label>
				</div>
				<div class="folder_radio_box">
					<input type="radio" id="folder_radio2" name="folder_img"><br/>
			    	<label for="folder_radio2"><img src="backpack2.png"></label>
				</div>
			    <div class="folder_radio_box">
				    <input type="radio" id="folder_radio3" name="folder_img"><br/>
				    <label for="folder_radio3"><img src="backpack3.png"></label>
			    </div>
			</div>
			<div>
				폴더 이름 <span class= "asterisk">&#42;</span><br /> <input type="text" class="pop_name"/><br />
				폴더 메모<br /> <textarea class="pop_memo" rows="3" cols="73"  placeholder="폴더에 대해 간략히 설명해주십시오" ></textarea>
			</div>
		</div>
		<div class="btn_list">
			<span>수 정</span><span>취 소</span>
		</div>
	</div>
	<div class="alert_popup">
		<div class="alert_popup_entity_txt">폴더를 하나만 선택하십시오</div>
		<div class="alert_btn_list">
			<span>확 인</span>
		</div>
	</div>
	<div class="alert_popup">
		<div class="alert_popup_entity_txt">폴더를 선택하십시오</div>
		<div class="alert_btn_list">
			<span>확 인</span>
		</div>
	</div>
	<div class="alert_popup">
		<div class="alert_popup_entity_txt">폴더 이름을 입력하십시오</div>
		<div class="alert_btn_list">
			<span>확 인</span>
		</div>
	</div>
	<div class="bg"></div>
</body>
</html>