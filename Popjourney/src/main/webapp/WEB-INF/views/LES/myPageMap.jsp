<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>지도</title>
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

input[type='text']:focus, input[type='password']:focus, select:focus {
	outline-color: #fcba03;
}
/* 여기까지 헤더 레이아웃 !!! */
#container {
	display: block;
	width: 1280px;
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
.menu_nav ul li img, .menu_nav ul li.on img {
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

.board_list_wrap {
	margin: 0;
	padding: 0;
	height: 100%;
	font-weight: 500;
	text-align: center;
}

a {
	text-decoration: none;
	color: inherit;
}

.board_list {
	border-top: 2px solid #2e3459;
}
#path_info {
	width: calc(100% -20px);
	height: 35px;
	font-size: 10pt;
	padding-top: 10px;
	padding-left: 20px;
	text-align: left;
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

.map_wrap {
	padding-top: 30px;
	width: 100%;
	height: 700px;
}

.map_wrap img {
	width: 100%;
	height: 700px;
}

.map_pin {
	position: absolute;
	top: 900px;
	left: 300px;
	width: 200px;
	height: 140px;
	margin: 22px 25px 0 25px;
	border-radius: 10px;
	box-shadow: rgb(0 0 0/ 9%) 0 6px 9px 0;
	color: #2e3459;
	border: 2px solid #f37321;
}

.map_pin img {
	width: 200px;
	height: 140px;
	border-radius: 10px;
}

.pin_cnt {
	position: relative;
	top: -150px;
	left: 182px;
	background-color: #f37321;
	color: white;
	border-radius: 100px;
	font-size: 12pt;
	width: 25px;
	text-align: center;
	font-weight: bold;
	padding: 8px 5px 8px 5px;
}

.tri {
	position: relative;
	top: -35px;
	left: 93px;
	width: 0px;
	height: 0px;
	border-top: 10px solid #f37321;
	border-right: 10px solid transparent;
	border-left: 10px solid transparent;
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
#mapOn{
	background-color: #f37321;
}
.location-image a img {
  width: 100%; /* need to overwrite inline dimensions */
  height: 200px;
}
h2 {
  margin-bottom: .5em;
  margin-left: 150px;
}
.grid-container {
  width: 1000px;
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
  grid-gap: 1em;
  margin: 0px auto 50px auto;
}
.child-page-listing{
	font-size: 14pt;
}

/* hover styles */
.location-listing {
  position: relative;
}

.location-image {
  line-height: 0;
  overflow: hidden;
}

.location-image img {
  filter: blur(0px);
  transition: filter 0.3s ease-in;
  transform: scale(1.1);
}
.location-title {
  font-size: 1.5em;
  font-weight: bold;
  text-decoration: none;
  z-index: 1;
  position: absolute;
  height: 100%;
  width: 100%;
  top: 0;
  left: 0;
  opacity: 0;
  transition: opacity .5s;
  background: rgba(90,0,10,0.4);
  color: white;
  
  /* position the text in t’ middle*/
  display: flex;
  align-items: center;
  justify-content: center;
}

.location-listing:hover .location-title {
  opacity: 1;
}

.location-listing:hover .location-image img {
  filter: blur(2px);
}


/* for touch screen devices */
@media (hover: none) { 
  .location-title {
    opacity: 1;
  }
  .location-image img {
    filter: blur(2px);
  }
}
</style>
<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	var path = "";
	
	if("${sPHOTO_PATH}" != "")
	{
		path = "resources/upload/" + "${sPHOTO_PATH}";
		
		$("#profilePhoto").attr("src", path);
	}
	else
	{
		path = "./resources/images/profile.png";

		$("#profilePhoto").attr("src", path);
	}
	
	if("${sGRADE_NO}" == "0")
	{
		$("#admin").show();
	}
	
	var html = "";  
	
	html += "<img alt=\"profile\" src=\"resources/upload/${sPHOTO_PATH}\"class=\"profile_img\">";
	html += "<div>${sNIC}</div>";
	html += "<span>${sINTRO}</span>"; 
	
	$(".info").html(html);
	
	$("article").on("click",function(){
		$("#regionNo").val($(this).attr("id").substring(1));
		$("#detailForm").submit();
	}); //article click end
});//document ready end

</script>
</head>
<body>
<form action="myPageMapDetail" id="detailForm" method="post">
	<input type="hidden" id="MEM_NO" name="MEM_NO" value=${sMEM_NO }>
	<input type="hidden" id="regionNo" name="regionNo">
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
							<li><img alt="bell" src="./resources/images/bell.png" class="./resources/images/bell_icon">
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
				<img alt="profile" src="./resources/images/profile3.png" class="profile_img">
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
							<li><img alt="map" id="mapOn" src="./resources/images/map.png"><br />&nbsp;&nbsp;${sJOURNAL }</li>
						</ul>
						<ul class="right_group">
							<li><img alt="bookmark" src="./resources/images/bmrk.png"><br />북마크
									${sBMK }</li>
							<li><img alt="follower" src="./resources/images/follower.png"><br />팔로워
									${sFOLLOWER }</li>
							<li><img alt="following" src="./resources/images/following.png"><br />팔로잉
									${sFOLLOWING }</li>
						</ul>
					</nav>
				</div>
				<div id="path_info">
					<span> <img alt="메인페이지" src="./resources/images/home.png" class="home_icon">
					</span> &nbsp;&nbsp;>&nbsp;&nbsp; <span> 마이페이지 </span>
					&nbsp;&nbsp;>&nbsp;&nbsp; <span> 여행일지 </span> &nbsp;>&nbsp;&nbsp;지도
				</div>
			</div>
			<div class="child-page-listing">
			  <h2>지역별 사진첩</h2>
			  <div class="grid-container">
			    <article id="r0" class="location-listing">
			      <a class="location-title">SEOUL(서울)</a>
			      <div class="location-image">
			        <a ><img src="./resources/images/seoul.jpg"></a>
			      </div>
			    </article>
			
			    <article id="r1" class="location-listing">
			      <a class="location-title" >BUSAN(부산)</a>
			      <div class="location-image">
			        <a ><img src="./resources/images/busan.jpg">  </a>
			      </div>
			    </article>
			
			    <article id="r2" class="location-listing">
			      <a class="location-title" >DAEGU(대구)</a>
			      <div class="location-image"> 
			             <a ><img  src="./resources/images/daegu.jpg">  </a>
			      </div>
			    </article>
			
			    <article id="r3" class="location-listing">
			      <a class="location-title" >INCHEON(인천)</a>
			      <div class="location-image">
			        <a ><img  src="./resources/images/incheon.jpg">  </a>
			      </div>
			    </article>
			
			    <article id="r4" class="location-listing">
			    	<a class="location-title" >GWANGJU(광주)</a>
			      <div class="location-image">
			        <a ><img src="./resources/images/gwangju.jpg"></a>
			      </div>
			    </article>
			
			    <article id="r5" class="location-listing">
			      <a class="location-title" >DAEJEON(대전)</a>
			      <div class="location-image">
			        <a ><img src="./resources/images/daejeon.jpg">          
			          </a>
			      </div>
			    </article>
			    <article id="r6" class="location-listing">
			
			      <a class="location-title" >ULSAN(울산)</a>
			      <div class="location-image">
			        <a ><img src="./resources/images/ulsan.jpg">    </a>
			      </div>
			    </article>
			
			    <article id="r7" class="location-listing">
			      <a class="location-title" >SEJONG(세종)</a>
			      <div class="location-image">
			        <a ><img src="./resources/images/sejong.jpg">  </a>
			      </div>
			    </article>
			
			    <article id="r8" class="location-listing">
			      <a class="location-title" >GYEONGGI-DO(경기도)</a>
			      <div class="location-image">
			        <a ><img src="./resources/images/gyeonggi.jpg">  </a>
			      </div>
			    </article>
			    <article id="r9" class="location-listing">
			
			      <a class="location-title" >GANGWON-DO(강원도)</a>
			      <div class="location-image">
			        <a ><img src="./resources/images/gangwon.jpg"> </a>
			      </div>
			    </article>
			
			    <article id="r10" class="location-listing">
			      <a class="location-title" >CHUNGBUK-DO(충청북도)</a>
			      <div class="location-image">
			        <a ><img src="./resources/images/chungbuk.jpg"></a>
			      </div>
			    </article>
			
			    <article id="r11" class="location-listing">
			      <a class="location-title" >CHUNGNAM-DO(충청남도)</a>
			      <div class="location-image">
			        <a ><img src="./resources/images/chungnam.jpg"></a>
			      </div>
			    </article>
			    
			    <article id="r12" class="location-listing">
			      <a class="location-title" >JEONBUK-DO(전라북도)</a>
			      <div class="location-image">
			        <a ><img src="./resources/images/jeonbuk.jpg"></a>
			      </div>
			    </article>
			
			    <article id="r13" class="location-listing">
			      <a class="location-title" >JEONNAM-DO(전라남도)</a>
			      <div class="location-image">
			        <a ><img src="./resources/images/jeonnam.jpg">  </a>
			      </div>
			    </article>
			
			    <article id="r14" class="location-listing">
			      <a class="location-title" >GYEONGSANGBUK-DO(경상북도)</a>
			      <div class="location-image">
			        <a ><img src="./resources/images/gyeongsangbuk.jpg"></a>
			      </div>
			    </article>
			
			    <article id="r15" class="location-listing">
			      <a class="location-title" >GYEONGSANGNAM-DO(경상남도)</a>
			      <div class="location-image">
			        <a><img src="./resources/images/gyeongsangnam.jpg"></a>
			      </div>
			    </article>
			
			    <article id="r16" class="location-listing">
			      <a class="location-title" >JEJU-DO(제주도)</a>
			      <div class="location-image">
			        <a ><img src="./resources/images/jeju.jpg"></a>
			      </div>
			    </article>
			  </div>
			  <!-- end grid container -->
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