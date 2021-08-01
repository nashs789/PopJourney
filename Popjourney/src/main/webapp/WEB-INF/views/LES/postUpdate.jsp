<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글 수정</title>
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
	height: 60px;
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

.category_area {
	display: inline-block;
	position: absolute;
	width: 230px;
	height: 80px;
	padding-left: 24px;
	margin: 0px 0 0 428px;
}

.category_area span {
	font-size: 10pt;
	float: left;
	margin-top: 30px;
}

.category_filter {
	float: left;
	margin: 20px;
	width: 100px;
	height: 35px;
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

#editBtn, .del_btn {
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

#editBtn {
	margin-right: 60px;
}

#editBtn:hover {
	border: 2px solid #294a37;
	background-color: #294a37;
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

.alert_popup {
	display: none;
	width: 400px;
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
	width: 350px;
	height: 40px;
	margin: 30px auto 30px auto;
}

.alert_btn_list2 span {
	text-decoration: none;
	display: inline-block;
	text-align: center;
	width: 170px;
	height: 30px;
	padding: 10px 15px 10px 15px;
	font-size: 12pt;
	color: #f37321;
	font-weight: bold;
	line-height: 30px;
	border-radius: 0 0 10px 10px;
}

.bg {
	position: fixed;
    display: none;
    width: 100%;
    height: 100%;
    top: 0px;
    background-color: #000000;
    z-index: 400;
    opacity: 0.2;
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
$(document).ready(function(){
	if("${sMEM_NO}" != "") { // 로그인 상태
		$(".btns").css("display","inline-block");
		$(".logins").css("display","none");
	} else { // 비 로그인 상태
		$(".logins").css("display","inline-block");
		$(".btns").css("display","none");
	}
	if("${sMEM_NO}" != "1"){
		$("#admin").css("display","none");
	} 
	//상단메뉴 (여행게시판, 자유게시판, 여행작가,고객센터, 내부관리자) 페이지 이동
	$(".logo_photo").on("click", function() {
		alert("변경사항이 저장되지 않습니다.");
  		location.href = "main";
  	});
	$("#journalBoard").on("click", function() {
  		location.href = "journalBoard";
  		console.log("눌려?");
  	});
	$("#community").on("click", function() {
  		location.href = "community";
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
	if("editPostNo" != null){
		//$("input[name=postTitle]").attr("value", ${data.TITLE});	
		//$("#postCon").val(CKEDITOR.instances['postCon'].getData());
	}
	CKEDITOR.replace("postCon", {
		resize_enabled : false,
		language : "ko",
		enterMode : "2",
		width : "1280",
		height : "500"
		
	});
	
	$("#writeForm").on("keypress", "input", function (event) {
		if(event.keyCode ==13) {
			return false;
		}
	});
	if("${data.CATEGORY_NO}" == "1") { 
		$("#categorySelect").val("1").prop("selected", true); 		
	} else if ("${data.CATEGORY_NO}" == "2") { 
		$("#categorySelect").val("2").prop("selected", true); 		
	} else if ("${data.CATEGORY_NO}" == "3") { 
		$("#categorySelect").val("3").prop("selected", true); 		
	} else { 
		$("#categorySelect").val("4").prop("selected", true); 		
	} 
	$("#editBtn").on("click", function () {
<<<<<<< HEAD
=======
		CKEDITOR.instances['postCon'].setData(${data.CONTENTS});
>>>>>>> branch 'main' of https://github.com/nashs789/PopJourney.git
		$("#postCon").val(CKEDITOR.instances['postCon'].getData());
		if($.trim($("#postTitle").val()) == "") {
			alert("제목을 입력해 주세요.");
			$("#postTitle").focus();
			return false; // ajaxForm 실행 불가
		} else if ($.trim($("#postCon").val()) == "") {
			alert("내용을 입력해 주세요.");
			$("#postCon").focus();
			return false;
		}
			var params = $("#writeForm").serialize();

			$.ajax({
				url:"postUpdates", 
				type: "post",
				dataType: "json",
				data : params,
				success: function(res){
					if(res.msg == "success"){
						$("#writeForm").attr("action", "post");
						$("#writeForm").submit();
					} else if (res.msg =="failed") {
						alert("작성에 실패하였습니다.")
					} else {
						alert("작성중 문제가 발생하였습니다.")
					}
				}, 
				error : function (request, status, error) {
					console.log(error);
				}
			});		 
}); //editBtn click end

	$("#delBtn").on("click", function () {
		$("#postCon").val('');
		CKEDITOR.instances['postCon'].setData('');
		console.log($("#postCon").val());
		alert("글을 삭제합니다. // 팝업창 : 예, 아니오 로 만들기");
	});
	
	// 메인검색창 넘어가는 부분(동기)
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
	
	
	
});//document.ready end
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
			</span> &nbsp;&nbsp;>&nbsp;&nbsp; <span> 자유게시판 </span>
			&nbsp;>&nbsp;&nbsp;게시글 수정
		</div>
		<form action="#" id="writeForm" method="post">
			<input type="hidden" id="MEM_NO" name="MEM_NO" value="${sMEM_NO}"/>
			<input type="hidden" id="loginUserNo" name="loginUserNo" value="${sMEM_NO}"/>
			<input type="hidden" id="editPostNo" name="editPostNo" value="${param.postNo}"/>
			<input type="hidden" id="postNo" name="postNo" value="${param.postNo}"/>
			<input type="hidden" id="newPostNo" name="newPostNo" value="1"/>
			<div class="title_area">
				<input type="text" class="input_title" id="postTitle" name="postTitle" value="${data.TITLE}" placeholder="게시글 제목" size="50" maxlength="30" autofocus required/>
				<div class="category_area">
					<span class="asterisk">&#42;</span><span>카테고리</span> 
					<select class="category_select" id="categorySelect" name="categorySelect">
						<c:choose>
						<c:when test="${sGRADE_NO eq 0}">
						<option value="1">공지사항</option>
						</c:when>
						</c:choose>
						<option value="2">여행꿀팁</option>
						<option value="3">Q&A</option>
						<option value="4">잡담</option>
					</select>
				</div>
			</div>
			<div class="container_wrap">
				<div class="txt_area">
					<textarea rows="30" cols="150" placeholder="내용을 입력하시오" id="postCon" name="postCon">${data.CONTENTS}</textarea>
				</div>
				<div class="post_bottom">
					<div class="btn_list">
						<input type="button" id="editBtn" class="add_btn" value="수  정" /> 
						<input type="reset" id="delBtn" class="del_btn" value="삭  제" />
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
	<div class="alert_popup">
		<div class="alert_popup_entity_txt">작성 중인 내용을 전부 삭제하시겠습니까?</div>
		<div class="alert_btn_list2">
			<span>확 인</span><span>취 소</span>
		</div>
	</div>
	<div class="bg"></div>
</body>
</html>