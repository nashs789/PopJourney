<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>문의사항 작성</title>
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
	display: inline-table;
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
#notification{
 	 display:none;
     width: 600px;
     box-shadow: 0px 0px 1px 1px #444444;
     position: absolute;
     right: 10px;
     z-index: 300;
     font-size: 10pt;
}
.read{
    background-color: #d1d1e0;
	height: 50px;
	border-bottom: 1px solid black;
}
.notRead{
	background-color: #a3a3c2;
	height: 50px;
	border-bottom: 1px solid black;
}
#notification table{
	border-collapse: collapse;
}

#notification table tr th:first-child{
	text-align: center;
}

#notification tr th{
	text-align: left;
}

#notification tr th img{
	height: 50px;
	width: 50px;
	text-align: center;
	cursor: pointer;
    margin-top: 5px;
    border-radius: 50%;
}

#notification tfoot tr{
	background-color: #48486a;
	color: white;
}
   
#notification tfoot tr th{
	text-align: center;
	cursor: pointer;
}

#notification tfoot tr th:hover{
	background-color: #a4a4c1;
}

#notification table tr th span{
	text-decoration: underline;
	cursor: pointer;
}

#notification table tr th span:hover{
	color: blue;
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
.banner {
	width: 100%;
	height: 70px;
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

input[type='text']:focus, input[type='password']:focus, select:focus, textarea:focus {
	outline-color: #fcba03;
}
/* 여기까지 헤더 레이아웃 !!! */
.container_wrap {
	width: 1280px;
	height: 700px;
	margin: 0 auto;
}

#container {
	display: inline-block;
	width: 1000px;
	height: 1348px;
}

a {
	text-decoration: none;
	color: inherit;
}

#path_info {
	width: calc(100% -20px);
	height: 35px;
	font-size: 10pt;
	padding-top: 10px;
	padding-left: 20px;
}

#path_info a {
	text-decoration: none;
	color: black;
}

.home_icon {
	position: relative;
	top: 3px;
	width: 20px;
	height: 20px;
}

.title_area {
	width: 1255px;
	height: 80px;
	color: black;
	font-size: 18pt;
	margin: auto;
	margin-top: 30px;
	padding-left: 28px;
	border-bottom: 2px solid #2e3459;
}
#postTitle {
	background-color: #f9f9f9;
}
.category_select {
	margin: 30px 0 0 10px;
}
.input_title {
	font-size: 18pt;
	color: #2e3459;
	border: none;
	padding: 5px 0 5px;
	background-color: #f9f9f9;
}


.asterisk {
	color: red;
	font-weight: bold;
	margin-right: 5px;
	padding-top: 2px;
}

.txt_area {
	width: 1280px;
	height: 600px;
	margin: 0 auto;
	color: black;
	font-size: 12pt;
}

.txt_area img {
	width: 1280px;
	height: 70px;
}

.txt_area textarea {
	width: 1270px;
	height: 480px;
	padding: 5px;
	margin-top: 10px;
	resize: none;
}

.btn_list {
	width: 1280px;
	height: 70px;
	text-align: center;
	font-size: 12pt;
	color: black;
	margin-top: 30px;
}

.btn_list input {
	display: inline-block;
}

#addBtn, .del_btn {
	padding: 5px 10px;
	border-radius: 20px;
	font-size: 13px;
	font-weight: bold;
	color: #2e3459;
	background-color: white;
	border: 2px solid #2e3459;
	box-shadow: rgba(0, 0, 0, 0.09) 0 6px 9px 0;
	cursor: pointer;
	width: 76px;
}

#addBtn {
	margin-right: 60px;
}

#addBtn:hover {
	border: 2px solid #2e3459;
	background-color: #2e3459;
	color: white;
}

.del_btn:hover {
	border: 2px solid #F1404B;
	background-color: #F1404B;
	color: white;
}

.post_page {
	width: 1280px;
	height: 50px;
	display: inline-block;
	line-height: 50px;
	border-top: 1px solid #ccc;
	cursor: pointer;
}

.post_label {
	width: 300px;
	text-align: center;
	font-size: 10pt;
	position: absolute;
}

.post_label_title {
	width: 70%;
	position: relative;
	margin-left: 580px;
	font-weight: bold;
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
#cke_40 {
	display: none;
} 
		</style>
		<script type="text/javascript"
				src="resources/script/jquery/jquery-1.12.4.min.js"></script>
		<script type="text/javascript"
				src="resources/script/ckeditor/ckeditor.js"></script>
		<script type="text/javascript">
			$(document).ready(function() {
				CKEDITOR.replace("matterContents", {
					resize_enabled : false,
					language : "ko",
					enterMode : "2",
					width : "1280",
					height : "500"
				});
				
				$("#backBtn").on("click", function() {
					$("#goForm").submit();
				});
				
				$("#addForm").on("keypress", "input", function(event) {
					if(event.keyCode == 13) {
						return false;
					}
				});
				
				$("#addBtn").on("click", function() {
					$("#matterContents").val(CKEDITOR.instances['matterContents'].getData());
					
					if($.trim($("#matterTitle").val()) == "") {
						alert("제목을 입력해 주세요.");
						$("#matterTitle").focus();
					} else if($.trim($("#matterContents").val()) == "") {
						alert("내용을 입력해 주세요.");
						$("#matterContents").focus();
					} else {
						var params = $("#addForm").serialize();
						
						$.ajax({
							url: "clientCenterMatterWrites",
							type: "post",
							dataType: "json",
							data: params,
							success: function(res) {
								if(res.msg == "success") {
									location.href = "clientCenterMatter";
									//$("#writeMemNo").val(res.writeMemNo);
								} else if(res.msg == "failed") {
									alert("작성에 실패하였습니다.");
								} else {
									alert("작성중 문제가 발생하였습니다.");
								}
							},
							error: function(request, status, error) {
								console.log(error);
							}
						});
					}
					
				});
				
				 // 메인검색창 넘어가는 부분
				$(".search_icon").on("click", function() {
					if($("#mainSearchFilter").val() == 0) {
						$("#goSearch").attr("action", "search");
						$("#goSearch").submit();
					} else if($("#mainSearchFilter").val() == 1) {
						$("#goSearch").attr("action", "searchTravelDiary");
						$("#goSearch").submit();
					} else if($("#mainSearchFilter").val() == 2) {
						$("#goSearch").attr("action", "searchHashtag");
						$("#goSearch").submit();
					} else if($("#mainSearchFilter").val() == 3) {
						$("#goSearch").attr("action", "searchCommunity");
						$("#goSearch").submit();
					} else {
						$("#goSearch").attr("action", "searchNic");
						$("#goSearch").submit();
					}
				});
				
			}); // document ready end..
			
		</script>
	</head>
	<body>
		  <form action="#" id="memForm">
	<input type="hidden" id="MEM_NO" name="MEM_NO" value="${sMEM_NO }"/>
	<input type="hidden" id="page" name="page" value="1"/>
	<input type="hidden" id="GBN" name="GBN" value="1"/>
	<input type="hidden" id="firstPage" name="firstPage" value="1"/>
</form>
<form action="#" id="notificationForm">
	<input type="hidden" id="NOTF_NO" name="NOTF_NO" value=""/>
</form>
<form action="journal" id="journalForm" method="post">
	<input type="hidden" id="journalNo" name="journalNo" value=""/>
</form>
<form action="post" id="postForm" method="post">
	<input type="hidden" id="postNo" name="postNo" value=""/>
	<input type="hidden" id="newPostNo" name="newPostNo" value="1"/>
</form>
<form action="userPage" id="userForm" method="post">
	<input type="hidden" id="userNo" name="userNo" value=""/>
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
						<li><img alt="bell" src="./resources/images/bell.png" id="notificationPhoto">
							<div id="cnt"></div>
							<div id="notification">
								<table border="1">
									<colgroup>
										<col width="100px">
										<col width="350px">
										<col width="150px">
									</colgroup>
									<tbody>	

									</tbody>

									<tfoot>
										<tr>
											<th colspan="3" id="notificationMore">...더보기</th>
										</tr>
									</tfoot>
								</table>
							</div></li>
							<li><img alt="bookmark" src="./resources/images/bmk.png" id="bookmarkPhoto"></li>
							<li><img alt="프로필" src="./resources/images/profile.png" id="profilePhoto">
								<ul id="profileSlidedown">
									<li id="myPage">마이 페이지</li>
									<li id="timeline">타임라인</li>
									<li id="editProfile">프로필 수정</li>
									<li id="editInfo">회원정보 수정</li>
									<li id="logoutBtn">로그아웃</li>
								</ul>
							</li>
						</ul>
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
			<form action="#" id="goSearch" method="post" >
				<img alt="search" src="./resources/images/search.png" class="search_icon"/>
				<input type="text" class="search" id="mainSearchTxt" name="mainSearchTxt" value="${param.mainSearchTxt}" placeholder="검색">
				<select class="filter" id="mainSearchFilter" name="mainSearchFilter" >
					<option value="0" selected="selected">통합검색</option>
					<option value="1">여행일지</option>
					<option value="2">해시태그</option>
					<option value="3">자유게시판</option>
					<option value="4">닉네임</option>
				</select>
			</form>
		</div>
		<div id="path_info">
			<span> <img alt="메인페이지" src="./resources/images/home.png" class="home_icon">
			</span> &nbsp;&nbsp;>&nbsp;&nbsp; <span> 문의사항 </span>
			&nbsp;>&nbsp;&nbsp;문의 작성
		</div>
		<form action="clientCenterMatter" id="goForm" method="post">
				<input type="hidden" name="page" value="${param.page}" />
				<input type="hidden" name="searchFilter" value="${param.searchFilter}" />
				<input type="hidden" name="searchTxt" value="${param.searchTxt}" />
				<input type="hidden" id="writeMemNo" name="writeMemNo" />
		</form>
		<form action="#" id="addForm" method="post">
			<input type="hidden" id="memNo" name="memNo" value="${param.memNo}" />
			<input type="hidden" id="postNo" name="postNo" value="${param.postNo}"/>
			<input type="hidden" id="loginUserNo" name="loginUserNo" value="${sMEM_NO}"/>
			<input type="hidden" id="newPostNo" name="newPostNo" value="${postNo}"/>
			<div class="title_area">
				<div>작성자 : ${sNIC}</div>
				<input type="text" class="input_title" id="matterTitle" name="matterTitle" placeholder="문의 제목" size="50" maxlength="30" autofocus required/>
			</div>
			<div class="container_wrap">
				<div class="txt_area">
					<textarea rows="30" cols="150" placeholder="내용을 입력하시오" id="matterContents" name="matterContents"></textarea>
				</div>
				<div class="post_bottom">
					<div class="btn_list">
						<input type="button" id="addBtn" class="add_btn"  value="등  록" /> 
						<input type="button" id="backBtn" class="del_btn" value="뒤로가기" />
					</div>
				</div>
			</div>
		</form>
	</div>
	<div id="footer">
		<p>
			POPJOURNEY<br /> GDJ-35기 LEE Eun-Soo, LEE In-Bok, CHOI Jeong-Min<br />
			Copyright© POPJOURNEY. All Rights Reserved.
		</p>
	</div>
	</body>
</html>