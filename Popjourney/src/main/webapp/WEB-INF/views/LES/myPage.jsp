
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
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
#bookmarkPhoto, #notificationPhoto {
   width: 40px;
   margin-right: 20px;
   margin-top: 15px;
   cursor: pointer;
}
#notificationPhoto{
   width: 40px;
   margin-right: 20px;
   margin-top: 15px;
   cursor: pointer;
   position: relative;
}
#notificationTxt{
	line-height: 17px;
	width: 20px;
	height: 20px;
	background-color: red;
	position: absolute;
	top: 10px;
	right: 190px;
	border-radius: 50%;
	color: white;
}
#profilePhoto{
   width: 40px;
   margin-right: 20px;
   margin-top: 15px;
   cursor: pointer;
   border-radius: 50%;
}
#notificationPhoto {
   margin-left: 200px;
}
.banner {
	width: 100%;
	height: 70px;
}
#profileSlidedown{
	display: none;
   	box-shadow: rgba(0, 0, 0, 0.09) 0 6px 9px 0;
   	border: 2px solid #fcba03;
   	background-color: white;
   	position: absolute;
   	padding: 0px;
   	right: 8px;
   	width: 122px;
   	margin-top: 10px;
   	z-index: 300;
}
#profileSlidedown li {
   	display: inline-block;
   	border: 1px solid rgb(250,250,250);
   	font-size: 12pt;
   	width: 120px;
   	text-align: center;
   	cursor: pointer;
}
#profileSlidedown li:hover {
	background-color: #f37321;
}
#myPage{
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
	cursor: pointer;
}

#left_menu {
	display: inline-block;
	position: relative;
	height: 100%;
	padding: 0 0 0 50px;
}

#left_menu li {
	margin: 0px;
}

#left_menu img {
	margin-left: 0;
	margin-right: 0;
}

.right_menu {
	padding-left: 0;
	display: inline-block;
	width: 58%;
	height: 100%;
}
#left_menu li:nth-child(1) img{
	background-color: #f37321;
}
.board_list_wrap {
	margin: 0;
	padding: 0;
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

.gallery {
	padding: 30px 0 0 45px;
}

.post {
	float: left;
	width: 340px;
	height: 390px;
	margin: 0 0 40px 40px;
	border: 1px solid #f1f1f1;
	font-size: 10pt;
	color: black;
}

.post:hover {
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
	visibility: hidden;
	width: 42px;
	height: 42px;
}

.post_profile>span {
	visibility: hidden;
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

.paging_wrap {
	width: 100%;
	height: 100px;
	padding-top: 50px;
	font-size: 18pt;
	text-align: center;
	display: inline-block;
}
.paging_wrap span{
	margin-left: 15px;
	cursor: pointer;
}
.on{
	font-weight: bold;
	color: red;
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
.journal, .thumb{
	cursor:pointer;
}
#admin{
	display: none;	
}
</style>
<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
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

	
 	params = $("#memForm").serialize();
	
	$.ajax({
		url: "myPageJournals",
		data: params,
		dataType: "json",
		type: "post",
		success: function(result){
			if(result.msg == "success")
			{
				makeGallery(result.myPage);
				makePage(result.pb);
			}
			else
			{
				alert("오류 발생");
			}
		},//success end
		error: function(error){
			console.log(error);
		}//error end
	}); //ajax end 
	
	$(".paging_wrap").on("click", "span", function() {
		$("#page").val($(this).attr("name"));
		
		var params = $("#memForm").serialize();
		
		$.ajax({
			url: "myPageJournals",
			data: params,
			dataType: "json",
			type: "post",
			success: function(result){
				if(result.msg == "success")
				{
					makeGallery(result.myPage);
					makePage(result.pb);
					$("html").scrollTop(300);
				}
				else
				{
					alert("오류 발생");
				}
			},//success end
			error: function(error){
				console.log(error);
			}//error end
		}); //ajax end 
	}); //paging_wrap click end
	
	$("#profilePhoto").on("click", function(){
		$("#notification").css("display", "none");
		if($("#profileSlidedown").css("display") == "block")
		{
			$("#profileSlidedown").css("display", "none");
		}
		else
		{
			$("#profileSlidedown").css("display", "block");
		}
	}); //profilePhoto click end
	
	$(".gallery").on("click", "span, strong", function(){
		console.log($(this).attr($(this).attr("class")));
	}); //post click span end
	
	$("#follower").on("click", function(){
		location.href = "myPageFollower";
	}); //follower click end
	
	$("#following").on("click", function(){
		location.href = "myPageFollowing";
	}); //following click end

}); //document ready end
function makeGallery(myPage)
{
	var html = "";
	
	for(data of myPage)
	{ 
		html += "   <div class=\"post\">";
		html += "   <span class=\"thumb\" thumb=\"" + data.JOURNAL_NO + "\"><img alt=\"썸네일\" src=\"resources/upload/" + data.PHOTO_PATH + "\"></span>";
		html += "   	<div class=\"post_info\">";
		html += "   		<p>";
		html += "   			<span>" + data.CATEGORY + " > " + data.SUB_CATEGORY + "(" + data.REGION + ") </span>";
		html += "   		</p>";
		html += "   		<p>";
		html += "   			<strong class=\"journal\" journal=\"" + data.JOURNAL_NO + "\">" + data.TITLE + "</strong>";
		html += "   		</p>";
		html += "   		<p>";
		html += "   			<em>";
		if(data.PATH != null)
		{
			var hashTag = data.PATH;
			var arr =[];
			arr = hashTag.split(",");
			
			if(arr.length != 0)
			{
				for(var i = 0; i < arr.length; i++)
				{
					 html += "#" + arr[i]+ " "; 
				}
			}
		}
		html += "</em>"; 
		html += "   		</p>";
		html += "   	</div>";
		html += "   	<div class=\"post_profile\">";
		html += "   		<div>";
		html += "   			<div>";
		html += "   				<span>조회수</span> <span class=\"cnt\">" + data.HIT + "</span> <span>좋아요</sp";
		html += "   				<span class=\"cnt\">" + data.LIKE_CNT + "</span>";
		html += "   			</div>";
		html += "   			<span>" + data.JOURNAL_DATE + "</span>";
		html += "   		</div>";
		html += "   	</div>";
		html += "   </div>";
	}
	$(".gallery").html(html);
}
function makePage(pb)
{
	var html = "<span name=\"1\"><<</span>";
	
	if($("#page").val() == "1") {
		html += "<span name=\"1\"><</span>";
	} else {
		html += "<span name=\"" + ($("#page").val() - 1) + "\">&lt;</span>";
	}
	
	for(var i = pb.startPcount ; i <= pb.endPcount ; i++) {
		if($("#page").val() == i) {
			html += "<span class=\"on\" name=\"" + i + "\">" + i + "</span>";
		} else {
			html += "<span name=\"" + i + "\">" + i + "</span>";
		}
	}
	
	if($("#page").val() == pb.maxPcount) {
		html += "<span name=\"" + pb.maxPcount + "\">></span>";
	} else {
		html += "<span name=\"" + ($("#page").val() * 1 + 1) + "\">></span>";
	}
	
	html += "<span name=\"" + pb.maxPcount + "\">>></span>";
	
	$(".paging_wrap").html(html);
}
</script>
</head>
<body>
<form action="#" id="memForm">
	<input type="hidden" id="MEM_NO" name="MEM_NO" value="${sMEM_NO}"/>
	<input type="hidden" id="page" name="page" value="${page}"/>
</form>
	<div id="wrap">
		<div id="header">
			<div class="banner">
				<div class="top">
					<div class="logo_area">
						<a href="main"><img alt="로고" src="./resources/images/logo.png" class="logo_photo"></a>
						<div class="site_name">우리들의 여행일지</div>
					</div>
					<div class="btns">
						<ul>
							<li><img alt="bell" src="./resources/images/bell.png" class="bell_icon" id="notificationPhoto">
							
							</li>
							<li><img alt="bookmark" src="./resources/images/bmk.png" id="bookmarkPhoto"></li>
							<li><img alt="프로필" src="" id="profilePhoto">
								<ul id="profileSlidedown">
									<li id="myPage">마이 페이지</li>
									<li id="timeline">타임라인</li>
									<li id="editProfile">프로필 수정</li>
									<li id="editInfo">회원정보 수정</li>
									<li id="logoutBtn">로그아웃</li>
								</ul></li>
						</ul>
					</div> <!-- btns end -->
				</div>
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
				
			</div>
		</div>
		<div id="container">
			<div class="board_list_wrap">
				<div class="board_menu">
					<nav class="menu_nav">
						<ul id="left_menu">
							<li><img alt="thumbnail" id="myPageImg" src="./resources/images/flag.png"><br />여행일지</li>
							<li><img alt="map" id="map" src="./resources/images/map.png"><br />&nbsp;&nbsp;100</li>
						</ul>
						<ul class="right_menu">
							<li><img alt="bookmark" id="bookmark" src="./resources/images/bmrk.png"><br />북마크
									100</li>
							<li><img alt="follower" id="follower" src="./resources/images/follower.png"><br />팔로워
									100</li>
							<li><img alt="following" id="following" src="./resources/images/following.png"><br />팔로잉
									100</li>
						</ul>
					</nav>
				</div> <!-- board_menu end -->
				<div id="path_info">
					<span> <img alt="메인페이지" src="./resources/images/home.png" class="home_icon">
					</span> &nbsp;&nbsp;>&nbsp;&nbsp; <span> 마이페이지 </span>
					&nbsp;&nbsp;>&nbsp;&nbsp; <span> 여행일지 </span>
					&nbsp;>&nbsp;&nbsp;썸네일
				</div> <!-- path_info end -->
				<div class="gallery">
					
				</div><!-- gallery end -->
				<div class="paging_wrap">
				
				</div> <!-- paging_wrap end -->
			</div> <!-- board_list_wrap end -->
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