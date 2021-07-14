<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>팔로워</title>
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

.menu ul li a{
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

.menu_nav ul li  {
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
	cursor: pointer;
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
}

.right_group {
	padding-left: 0;
	display: inline-block;
	width: 58%;
	height: 100%;
}

.right_group li:nth-child(2) img{
	background-color: #f37321;
}

.board_list_wrap {
	margin: 0;
	padding: 0;
	height: 100%;
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

#path_info {
	text-decoration: none;
	color: black;
}

.home_icon {
	position: relative;
	top: 3px;
	width: 20px;
	height: 20px;
}

.follow_list {
	margin-top: 30px;
	padding: 30px 0 0 45px;
	height: 2150px;
}

.user_area {
	float: left;
	width: 340px;
	height: 360px;
	margin: 0 0 40px 40px;
	border: 1px solid #f1f1f1;
	font-size: 10pt;
	color: black;
	text-align: center;
	padding-top: 25px;
	background-color: white;
	cursor: pointer;
}

.user_area img {
	border-radius: 100px;
	width: 120px;
	height: 120px;
}

.user_info {
	height: 123px;
}

.user_area>div>span {
	display: block;
	margin-top: 10px;
}

.user_area:hover {
	box-shadow: rgba(0, 0, 0, 0.09) 0 6px 9px 0;
}

.user_area p {
	padding: 0 30px;
	height: 62px;
	overflow-y: scroll;
	-ms-overflow-style: none;
}

.user_area p::-webkit-scrollbar {
	display: none !important;
}
.nic {
	font-size: 15pt;
	font-weight: bold;
}

.memo {
	color: gray;
	margin: 0 30px;
	padding-bottom: 10px;
	overflow: hidden;
	height: 10px;
}

hr {
	border: 1px solid black;
	width: 100px;
	margin: 0 auto;
	margin-top: 2px;
	border-top-width: 0px;
}

.follow_btn_area {
	width: 100%;
	height: 20px;
	padding-top: 30px;
	margin: auto;
}

.follow_btn_area input {
	padding: 10px 30px 10px 30px;
	border-radius: 50px;
	font-size: 12pt;
	font-weight: bold;
	color: #2e3459;
	background-color: white; border : 2px solid #2e3459;
	box-shadow: rgba(0, 0, 0, 0.09) 0 6px 9px 0;
	cursor: pointer;
	border: 2px solid #2e3459;
}

.follow_btn_area input:hover {
	background-color: #2e3459;
	color: white;
}

.more_btn {
	text-align: center;
	margin-top: 50px;
	padding-bottom: 50px;
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
		<div class="sub_profile">
			<div class="info">
				<img alt="profile" src="./resources/images/./resources/images/profile3.png" class="profile_img">
				<div>닉네임</div>
				<span>소개글</span>
			</div>
		</div>
		<div id="container">

			<div class="board_list_wrap">
				<div class="board_menu">
					<nav class="menu_nav">
						<ul id="left_group">
							<li><img alt="thumbnail" src="./resources/images/flag.png"><br />여행일지</li>
							<li><img alt="map" src="./resources/images/map.png"><br />&nbsp;&nbsp;100</li>
						</ul>
						<ul class="right_group">
							<li><img alt="bookmark" src="./resources/images/bmrk.png"><br />북마크
									100</li>
							<li><img alt="follower" src="./resources/images/follower.png"><br />팔로워
									100</li>
							<li><img alt="following" src="./resources/images/following.png"><br />팔로잉
									100</li>
						</ul>
					</nav>
				</div>
				<div id="path_info">
					<span> <img alt="메인페이지" src="./resources/images/home.png" class="home_icon">
					</span> &nbsp;&nbsp;>&nbsp;&nbsp; <span> 마이페이지 </span>
					&nbsp;>&nbsp;&nbsp;팔로워
				</div>
				<div class="follow_list">
					<div class="user_area">
						<span><img alt="profile" src="./resources/images/a1.jpg"></span>
						<div class="user_info">
							<span class="nic">닉네임</span> <span class="memo">YYYY-MM-DD</span><hr>
							<p>원대하고 그들은 피가 더운지라 실현에 대한 자신과 용기가 있다 그러므로 그들은 이상의 보배를 능히 품으며 그들의 이상은 아름답고 소담스러운 열매를 맺어 우리 인생을 풍부하게 하는 것이다 보라 청춘을 ! 그들의 몸이 얼마나</p>
						</div>
						<div class="follow_btn_area">
							<input type="button"
								value="여 행 일 지&nbsp;&nbsp;&nbsp;모 아 보 기 &nbsp;&nbsp;&nbsp;&#62;" />
						</div>
					</div>
					<div class="user_area">
						<span><img alt="profile" src="./resources/images/./resources/images/profile3.png"></span>
						<div class="user_info">
							<span class="nic">닉네임</span> <span class="memo">YYYY-MM-DD</span><hr>
							<p>소개글</p>
						</div>
						<div class="follow_btn_area">
							<input type="button"
								value="여 행 일 지&nbsp;&nbsp;&nbsp;모 아 보 기 &nbsp;&nbsp;&nbsp;&#62;" />
						</div>
					</div>
					<div class="user_area">
						<span><img alt="profile" src="./resources/images/./resources/images/profile3.png"></span>
						<div class="user_info">
							<span class="nic">닉네임</span> <span class="memo">YYYY-MM-DD</span><hr>
							<p>소개글</p>
						</div>
						<div class="follow_btn_area">
							<input type="button"
								value="여 행 일 지&nbsp;&nbsp;&nbsp;모 아 보 기 &nbsp;&nbsp;&nbsp;&#62;" />
						</div>
					</div>
					<div class="user_area">
						<span><img alt="profile" src="./resources/images/./resources/images/profile3.png"></span>
						<div class="user_info">
							<span class="nic">닉네임</span> <span class="memo">YYYY-MM-DD</span><hr>
							<p>소개글</p>
						</div>
						<div class="follow_btn_area">
							<input type="button"
								value="여 행 일 지&nbsp;&nbsp;&nbsp;모 아 보 기 &nbsp;&nbsp;&nbsp;&#62;" />
						</div>
					</div>
					<div class="user_area">
						<span><img alt="profile" src="./resources/images/./resources/images/profile3.png"></span>
						<div class="user_info">
							<span class="nic">닉네임</span> <span class="memo">YYYY-MM-DD</span><hr>
							<p>소개글</p>
						</div>
						<div class="follow_btn_area">
							<input type="button"
								value="여 행 일 지&nbsp;&nbsp;&nbsp;모 아 보 기 &nbsp;&nbsp;&nbsp;&#62;" />
						</div>
					</div>
					<div class="user_area">
						<span><img alt="profile" src="./resources/images/./resources/images/profile3.png"></span>
						<div class="user_info">
							<span class="nic">닉네임</span> <span class="memo">YYYY-MM-DD</span><hr>
							<p>소개글</p>
						</div>
						<div class="follow_btn_area">
							<input type="button"
								value="여 행 일 지&nbsp;&nbsp;&nbsp;모 아 보 기 &nbsp;&nbsp;&nbsp;&#62;" />
						</div>
					</div>
					<div class="user_area">
						<span><img alt="profile" src="./resources/images/./resources/images/profile3.png"></span>
						<div class="user_info">
							<span class="nic">닉네임</span> <span class="memo">YYYY-MM-DD</span><hr>
							<p>소개글</p>
						</div>
						<div class="follow_btn_area">
							<input type="button"
								value="여 행 일 지&nbsp;&nbsp;&nbsp;모 아 보 기 &nbsp;&nbsp;&nbsp;&#62;" />
						</div>
					</div>
					<div class="user_area">
						<span><img alt="profile" src="./resources/images/./resources/images/profile3.png"></span>
						<div class="user_info">
							<span class="nic">닉네임</span> <span class="memo">YYYY-MM-DD</span><hr>
							<p>소개글</p>
						</div>
						<div class="follow_btn_area">
							<input type="button"
								value="여 행 일 지&nbsp;&nbsp;&nbsp;모 아 보 기 &nbsp;&nbsp;&nbsp;&#62;" />
						</div>
					</div>
					<div class="user_area">
						<span><img alt="profile" src="./resources/images/./resources/images/profile3.png"></span>
						<div class="user_info">
							<span class="nic">닉네임</span> <span class="memo">YYYY-MM-DD</span><hr>
							<p>소개글</p>
						</div>
						<div class="follow_btn_area">
							<input type="button"
								value="여 행 일 지&nbsp;&nbsp;&nbsp;모 아 보 기 &nbsp;&nbsp;&nbsp;&#62;" />
						</div>
					</div>
					<div class="user_area">
						<span><img alt="profile" src="./resources/images/./resources/images/profile3.png"></span>
						<div class="user_info">
							<span class="nic">닉네임</span> <span class="memo">YYYY-MM-DD</span><hr>
							<p>소개글</p>
						</div>
						<div class="follow_btn_area">
							<input type="button"
								value="여 행 일 지&nbsp;&nbsp;&nbsp;모 아 보 기 &nbsp;&nbsp;&nbsp;&#62;" />
						</div>
					</div>
					<div class="user_area">
						<span><img alt="profile" src="./resources/images/./resources/images/profile3.png"></span>
						<div class="user_info">
							<span class="nic">닉네임</span> <span class="memo">YYYY-MM-DD</span><hr>
							<p>소개글</p>
						</div>
						<div class="follow_btn_area">
							<input type="button"
								value="여 행 일 지&nbsp;&nbsp;&nbsp;모 아 보 기 &nbsp;&nbsp;&nbsp;&#62;" />
						</div>
					</div>
					<div class="user_area">
						<span><img alt="profile" src="./resources/images/./resources/images/profile3.png"></span>
						<div class="user_info">
							<span class="nic">닉네임</span> <span class="memo">YYYY-MM-DD</span><hr>
							<p>소개글</p>
						</div>
						<div class="follow_btn_area">
							<input type="button"
								value="여 행 일 지&nbsp;&nbsp;&nbsp;모 아 보 기 &nbsp;&nbsp;&nbsp;&#62;" />
						</div>
					</div>
					<div class="user_area">
						<span><img alt="profile" src="./resources/images/./resources/images/profile3.png"></span>
						<div class="user_info">
							<span class="nic">닉네임</span> <span class="memo">YYYY-MM-DD</span><hr>
							<p>소개글</p>
						</div>
						<div class="follow_btn_area">
							<input type="button"
								value="여 행 일 지&nbsp;&nbsp;&nbsp;모 아 보 기 &nbsp;&nbsp;&nbsp;&#62;" />
						</div>
					</div>
					<div class="user_area">
						<span><img alt="profile" src="./resources/images/profile3.png"></span>
						<div class="user_info">
							<span class="nic">닉네임</span> <span class="memo">YYYY-MM-DD</span><hr>
							<p>소개글</p>
						</div>
						<div class="follow_btn_area">
							<input type="button"
								value="여 행 일 지&nbsp;&nbsp;&nbsp;모 아 보 기 &nbsp;&nbsp;&nbsp;&#62;" />
						</div>
					</div>
					<div class="user_area">
						<span><img alt="profile" src="./resources/images/profile3.png"></span>
						<div class="user_info">
							<span class="nic">닉네임</span> <span class="memo">YYYY-MM-DD</span><hr>
							<p>소개글</p>
						</div>
						<div class="follow_btn_area">
							<input type="button"
								value="여 행 일 지&nbsp;&nbsp;&nbsp;모 아 보 기 &nbsp;&nbsp;&nbsp;&#62;" />
						</div>
					</div>
				</div>
			</div>
			<div class="more_btn">
				<input type="button" value="더 보 기" />
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