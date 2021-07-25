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
#postAll span img {
	background-color: #f37321;
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
.make_path_info {
	display: inline-block;
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
.order_list ul li:first-child {
	color: #f37321;
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

.board_list tbody tr td:nth-child(3){
	text-align: left;
	cursor: pointer;
}
.board_list tbody tr td:nth-child(5) {
	cursor: pointer;
}
.board_list tbody tr td:nth-child(3):hover,
.board_list tbody tr td:nth-child(5):hover  {
	text-decoration: underline;
}


.notice_board {
	font-weight: 550;
	background: #faf9f7;
}

.board_list>tbody>.notice_board>td:nth-child(2) {
	color: #F1404B;
}

.board_list td>span {
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
	height: 200px;
	padding-top: 50px;
	text-align: center;
}

.paging_wrap div {
    display: block;
    padding: 5px;
    margin-left: 3px;
    margin-right: 3px;
    cursor: pointer;
    text-align: center;
    color: #2e3459;
    font-size: 12pt;
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
.paging_wrap span:active, .paging_wrap .on  {
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

.paging_wrap {
	width: 100%;
	height: 200px;
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
</style>
<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	if("${sMEM_NO}" != "") { // 로그인 상태
		$(".btns").css("display","inline-block");
		$(".sub_profile").css("display","block");
		$(".logins, .sub_area").css("display","none");
	} else { // 비 로그인 상태
		$(".logins, .sub_area").css("display","inline-block");
		$(".btns, .sub_profile").css("display","none");
	}
	
	$(".login_btn").on("click", function () {
		if($.trim($("#inputID").val())==""){
			alert("아이디를 입력해 주세요.");
			$("#inputID").focus();
		} else if ($.trim($("#inputPW").val())=="") {
			alert("비밀번호를 입력해 주세요.");
			$("#inputPW").focus();
		} else {
			var params = $("#loginForm").serialize();
			$.ajax({
				url:"logins", 
				type: "post", 
				dataType: "json", 
				data : params, 
				success: function(res){
						location.reload();
				}, 
				error: function (request, status, error) {
					console.log(error);
				}
			});
		}
	});//login_btn end
	
	$("#categoryNo").val(0);
	$("#gradeNo").val(0);
	if("${param.selectFilter}" != ""){
		$("#selectFilter").val("${param.selectFilter}");
	} 
	reloadList();
	makePathInfo();
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
		if("${sMEM_NO}" == "") { // 비로그인 상태
			alert("로그인이 필요한 서비스입니다.");
		} else {
			location.href = "postWrite";
		}
  		
  	});
	
	$("#searchBtn").on("click", function () {
		$("#page").val(1);
		$("#searchOldTxt").val($("#searchTxt").val());
		reloadList();
		makePathInfo();
	});
	
	$(".paging").on("click", "span", function () {
		$("#page").val($(this).attr("name"));
		$("#searchTxt").val($("#searchOldTxt").val());
		reloadList();
		makePathInfo();
	});	
	
	$(".board_list").on("click", "td", function(){
		if($(this).attr("class") == "title")
		{
			$("#postNo").val($(this).attr($(this).attr("class")));
			$("#postForm").submit();
		}
	}); //board_list click td end
	
	$(".board_list").on("click", "td", function(){
		if($(this).attr("class") == "user")
		{
			$("#userNo").val($(this).attr($(this).attr("class")));
			$("#userForm").submit();
		}
	}); //board_list click td end
	
	$(".order_list").on("click", "li", function () {
		$(".categoryNo").css("color","#2e3459");
		$(".gradeNo").children("img").css("background-color","#2e3459");
		$("#postAll").children("span").children("img").css("background-color","#f37321");
		console.log($(this).attr($(this).attr("class")));
		$("#gradeNo").val(0);
		$("#categoryNo").val($(this).attr($(this).attr("class")));
		if($("#categoryNo").val() == 1){ //공지사항
			noticeList();
			$(this).css("color","#f37321");
			$(".gradeNo").children("img").css("cursor","auto");
		} else {
			$(this).css("color","#f37321");
			$(".gradeNo").children("img").css("cursor","pointer");
			reloadList();
		}
	}); //order_list li  end
	$(".left_nav").on("click", "span", function(){ //작성자 여행등급 필터
		$(".gradeNo").children("img").css("background-color","#2e3459");
		console.log($(this).attr($(this).attr("class")));
		$("#gradeNo").val($(this).attr($(this).attr("class")));
		if($("#categoryNo").val() != 1){ //전체보기, 여행꿀팁, Q&A, 잡담
			console.log($(this).children());
			$(this).children("img").css("background-color","#f37321");
			reloadList();
		} else {
			$("#postAll").children("span").children("img").css("background-color","#f37321");
		}
	}); //left_nav span click end
	 
	$(".right_nav").on("click", "span", function(){ //내가 쓴 글, 댓글쓴 글, 글쓰기
		console.log($(this).attr($(this).attr("class")));
		$(".gradeNo").children("img").css("background-color","#2e3459");
		$(this).children("img").css("background-color","#f37321");
		$("#gradeNo").val($(this).attr($(this).attr("class")));
		if("${sMEM_NO}" == "") { // 비로그인 상태
			alert("로그인이 필요한 서비스입니다.");
			$(".gradeNo").children("img").css("background-color","#2e3459");
		} else {
			reloadList();
		}
		console.log("눌렸나?"+ $("#gradeNo").val());
		
	}); //right_nav span click end
}); //document ready end

// 카테고리별, 작성자별(등급, 내가 쓴 글)
function reloadList() {
	var params = $("#boardForm").serialize();
	console.log(params);
	$.ajax({
		url:"communityLists", 
		type: "post",
		dataType: "json",
		data : params,
		success: function(res){
			drawList(res.list);
			makePage(res.pb);
			makePathInfo();
		}, 
		error: function (request, status, error) {
			console.log(error);
		}
	});
}
//공지사항
function noticeList() {
	var params = $("#boardForm").serialize();
	
	console.log(params);
	$.ajax({
		url:"communityNLists", 
		type: "post",
		dataType: "json",
		data : params,
		success: function(res){
			drawList(res.list);
			makePage(res.pb);
			makePathInfo();
			$("#gradeNo").val(9);
		}, 
		error: function (request, status, error) {
			console.log(error);
		}
	});
}
// 댓글 쓴 글
function cmtWriteList() {
	var params = $("#boardForm").serialize();
	
	console.log(params);
	$.ajax({
		url:"communityCMTLists", 
		type: "post",
		dataType: "json",
		data : params,
		success: function(res){
			drawList(res.list);
			makePage(res.pb);
			makePathInfo();
		}, 
		error: function (request, status, error) {
			console.log(error);
		}
	});
}
function drawList(list) {
	var html = "";
	console.log(list);
	for(var d of list){
		html += "<tr>";
		
		switch(d.CATEGORY_NO)
		{
			case 1:
				html += "<td><span>공지</span></td>";
				html +=	"<td class=\"td_n\">공지사항 </td>";
				break;
			case 2:
				html += "<td>" + d.POST_NO + "</td>";
				html +=	"<td class=\"td_t\">여행꿀팁 </td>";
				break;
			case 3:
				html += "<td>" + d.POST_NO + "</td>";
				html +=	"<td class=\"td_q\"> Q & A </td>";
				break;
			case 4:
				html += "<td>" + d.POST_NO + "</td>";
				html +=	"<td class=\"td_c\">잡&nbsp;&nbsp;&nbsp;담 </td>";
				break;
			default:
				console.log(d.CATEGORY_NO);
		}
		html += "<td class=\"title\" title=\"" + d.POST_NO + "\">" + d.TITLE +"</td>";
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
		html += "<td class=\"user\" user=\"" + d.MEM_NO + "\">" + d.NIC + "</td>";
		html += "<td>" + d.BOARD_DATE + "</td>";
		html += "<td>" + d.HIT + "</td>";
		html += "<td>" + d.LIKE_CNT + "</td>";
		html += "</tr>";
	}
	
	$(".board_list tbody").html(html); 
}

function makePathInfo()
{
	var html = "";
	
	if($("#categoryNo").val() == "0") {
		html += "&nbsp;&nbsp;>&nbsp;&nbsp;"; 
		html += "<span> 전체보기 &nbsp\;&nbsp\; </span>";
	} else if ($("#categoryNo").val() == "1"){
		html += "&nbsp;&nbsp;>&nbsp;&nbsp;"; 
		html += "<span> 공지사항 &nbsp\;&nbsp\; </span>";
	} else if ($("#categoryNo").val() == "2"){
		html += "&nbsp;&nbsp;>&nbsp;&nbsp;"; 
		html += "<span> 여행꿀팁 &nbsp\;&nbsp\; </span>";
	} else if ($("#categoryNo").val() == "3"){
		html += "&nbsp;&nbsp;>&nbsp;&nbsp;"; 
		html += "<span> Q & A &nbsp\;&nbsp\; </span>";
	} else {
		html += "&nbsp;&nbsp;>&nbsp;&nbsp;"; 
		html += "<span> 잡&nbsp\;&nbsp\;담 &nbsp\;&nbsp\; </span>";
	}
	
	if($("#gradeNo").val() == "0") {
		html += ">&nbsp;&nbsp;전체보기";
	} else if ($("#gradeNo").val() == "1") {
		html += ">&nbsp;&nbsp;여행꾼";
	} else if ($("#gradeNo").val() == "2") {
		html += ">&nbsp;&nbsp;여행작가";
	}  else if ($("#gradeNo").val() == "3") {
		html += ">&nbsp;&nbsp;내가 쓴 글";
	}  else { 
		html += ">&nbsp;&nbsp;댓글 쓴 글";
	}
	
	$(".make_path_info").html(html);
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
	
	$(".paging").html(html);
}
</script>
</head>
<body>
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
			<div class="make_path_info">
				 &nbsp;&nbsp;>&nbsp;&nbsp;
			</div>
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
					<li class="categoryNo" categoryNo="0">전체보기</li>
					<li class="categoryNo" categoryNo="1">공지사항</li>
					<li class="categoryNo" categoryNo="2">여행꿀팁</li>
					<li class="categoryNo" categoryNo="3">Q & A</li>
					<li class="categoryNo" categoryNo="4">잡&nbsp;&nbsp;&nbsp;담</li>
				</ul>
			</nav>
		</div>
			<div class="board_list_wrap">
				<div class="board_menu">
					<nav class="left_nav">
						<ul>
							<li id="postAll"><span class="gradeNo" gradeNo="0"><img alt="bookmark" src="./resources/images/all.png"></span><br />전체보기</li>
							<li id="postGrade2"><span class="gradeNo" gradeNo="2"><img alt="bookmark" src="./resources/images/writer.png"></span><br />여행작가</li>
							<li id="postGrade1"><span class="gradeNo" gradeNo="1"><img alt="작성자" src="./resources/images/user2.png"></span><br />여행꾼</li>
						</ul>
					</nav>
					<nav class="right_nav">
						<ul>
							<li><span class="gradeNo" gradeNo="3"><img alt="bookmark" src="./resources/images/doc.png"></span><br />내가 쓴 글</li>
							<li><span class="gradeNo" gradeNo="4"><img alt="bookmark" src="./resources/images/comment.png"></span><br />댓글 쓴 글</li>
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
					<form action="#" id="boardForm">
						<img alt="search" src="./resources/images/search.png" class="search_icon" id="searchBtn"/>
							<input type="hidden" id="page" name="page" value="${page}"/>
							<input type="hidden" id="nfirstPage" name="nfirstPage" value="1"/> <!-- n이 붙은건 공지 페이지 -->
							<input type="hidden" id="nlastPage" name="nlastPage" value="5"/>
							<input type="hidden" id="categoryNo" name="categoryNo" value=""/>
							<input type="hidden" id="gradeNo" name="gradeNo" value=""/>
							<input type="hidden" id="MEM_NO" name="MEM_NO" value="${sMEM_NO}"/>
							<input type="hidden" id="memGradeNo" name="memGradeNo" value="${sGRADE_NO}"/>
				<input type="text" class="search" name="searchTxt" placeholder="검색" value="${param.searchTxt}"> 
						<select class="filter" id="selectFilter" name="selectFilter">
							<option value="0">통합검색</option>
							<option value="1">제목</option>
							<option value="2">닉네임</option>
						</select>
						</form>
		
					</div>
				</div> <!-- PAGING_WRAP END -->
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