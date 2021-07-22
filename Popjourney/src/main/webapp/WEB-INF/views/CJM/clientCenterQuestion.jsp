<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>고객센터-자주 묻는 질문</title>
		<style type="text/css">
			/*  #fcba03 노랑
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
			    vertical-align: top;
			    width: 470px;
			    height: 70px;
			    text-align: right;
			    background-color: #FFFFFF;
			}
			.btns img {
				width: 40px;
				margin-right: 20px;
				margin-top: 15px;
				cursor: pointer;
			}
			.bell_icon {
				margin-left: 160px;
			}
			.logins {
				display: inline-block;
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
				color: #F37321;
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
			.login_btn:hover{
				background-color: #294a37;
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
				color: #F37321;
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
			input[type='text']:focus, input[type='password']:focus, input[type="date"], select:focus {
				outline-color: #fcba03;
			}
			
			#admin {
				display: none;
			}
			/* 여기까지 헤더 레이아웃 !!! */
			
			/* 컨테이너 레이아웃 */
			
			.popup {
			   display: inline-block; /* 클릭 시 inline-block */
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
			.popup_entity_txt {
			   font-size: 12pt;
			   font-weight: bold;
			   text-align: center;
			   line-height: 50px;
			   width: 265px;
			   height:40px;
			   margin: 30px auto 30px auto;
			}
			.btn_list span{
			   text-decoration: none;
			   display:inline-block;
			   text-align:center;
			   width: 270px;
			   height:30px;
			   padding: 10px 15px 10px 15px;
			   font-size: 12pt;
			   color: #f37321;
			   font-weight: bold;
			   line-height: 30px;
			   border-radius: 0 0 10px 10px;
			}
			.btn_list span:hover {
			   background-color: #f37321;
			   color: white;
			   cursor: pointer;
			}
			.bg { /* 클릭 시 inline-block */
				display: inline-block;
				width: 100%;
				height: 1403px;
				position: absolute;
				top: 0px;
				left: 0px;
				background-color: #000000;
				z-index: 400;
				opacity: 0.2;
			}
			
			#container {
				display: block;
				width: 1280px;
				margin: 0 auto;
				background-color: #FFFFFF;
			}
			
			
			
			.client_center_search {
				display: block;
				margin: 50px auto 0px auto;
				width: 100%;
				height: 120px;
				background-color: #fcba03;
				border-radius: 20px;
				border: 0px;
			}
			.client_center_name {
				display: inline-block;
				vertical-align: top;
				color: #FFFFFF;
				font-weight: bold;
				font-size: 30pt;
				width: 30%;
				height: 100%;
				margin-left: 50px;
			}
			.client_center_name div {
				width: 54%;
				margin: 0px auto;
				line-height: 120px;
			}
			.question_search {
				display: inline-block;
				vertical-align: top;
				width: 700px;
				height: 64px;
				margin-top: 30px;
			}
			.question_search input {
				width: 600px;
				height: 60px;
				line-height: 100px;
				font-size: 15pt;
				text-align: left;
				border-radius: 5px;
				border: 0px;
			}
			.question_search div {
				display: inline-block;
				vertical-align: top;
				width: 70px;
				height: 70px;
				margin: -3px 0px 0px 10px;
			}
			.question_search img {
				width: 70px;
				height: 70px;
				line-height: -30px;
				cursor: pointer;
			}
			
			.sidebar {
				display: block;
				width: 100%;
				height: 100px;
				background-color: #FFFFFF;
				border-bottom: 1px solid rgb(238, 238, 238);
			}
			.sidebar1 {
				color: #f37321;
			}
			.sidebar1, .sidebar2 {
				display: inline-block;
				vertical-align: top;
				font-size: 15pt;
				font-weight: bold;
				width: 200px;
				line-height: 100px;
				cursor: pointer;
				text-align: center;
				margin-left: 20px;
			}
			.sidebar1:hover, .sidebar2:hover {
				color: #f37321;
			}
			.sidebar3 {
				display: inline-block;
				vertical-align: top;
				font-size: 15pt;
				font-weight: bold;
				width: 250px;
				height: 100px;
				text-align: center;
				float: right;
			}
			.sidebar3 p {
				border-left: 1px solid rgb(238, 238, 238);
				color: #fcba03;
			}
			.question_sidebar {
				display: block;
				width: 100%;
				height: 160px;
				margin: 30px auto 0px auto;
				border-bottom: 1px solid rgb(238, 238, 238);
			}
			.question_sidebar ul {
			    list-style: none;
			    margin: 0px;
			    padding: 0px;
			}
			.question_sidebar ul li {
				margin: 0px 0px 0px 0px;
			    padding: 10px 20px;
			    border : 1px solid rgb(238, 238, 238);
			    float: left;
			    font-size: 15pt;
			    font-weight: bold;
			    cursor: pointer;
			    width: 278px;
			    height: 78px;
			    text-align: center;
			    background-color: rgb(250, 250, 250);
			    line-height: 75px;
			}
			
			.question_area {
				display: block;
				width: 100%;
				padding: 0px;
			}
			.question_area ul {
				padding: 0px;
			}
			.question {
				font-size: 14pt;
				padding: 25px 34px;
				cursor: pointer;
				border-bottom: 1px solid rgb(238, 238, 238);
			}
			.question img {
				float: right;
				width: 24px;
				height: 24px;
			}
			.answer {
				display: none;
				font-size: 14pt;
				padding: 25px 34px;
				background-color: rgb(250, 250, 250);
			}
			.qna {
				text-align: center;
				color: #fcba03;
				margin-right: 10px;
				font-weight: bold;
			}
			.more {
				display: block;
				height: 20px;
				font-size: 14pt;
				color: #fcba03;
				text-align: center;
				line-height: 20px;
				padding: 16px;
				border-bottom: 1px solid rgb(238, 238, 238);
				cursor: pointer;
				margin-bottom: 50px;
			}
			.more img {
				width: 16px;
				height: 16px;
			}
			
			/* 컨테이너 레이아웃 끝 */
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
		<script type="text/javascript"
				src="resources/script/jquery/jquery-1.12.4.min.js"></script>
		<script type="text/javascript">
			
			$(document).ready(function() {
				
				$(".logo_photo").on("click", function() {
					location.href = "main";
				});
				
				// 상단배너 -> 여행게시판 - 자유게시판 - 여행작가 - 고객센터 - 내부관리자 메뉴 이동
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
				
				
				// 고객센터 (자주묻는질문, 문의사항) 이동
				$("#question").on("click", function() {
					location.href = "clientCenterQuestion";
				});
				$("#matter").on("click", function() {
					location.href = "clientCenterMatter";
				});
				
				//로그인 정보 유지
				if("${sMEM_NO}" != "") {
					$(".logins").css("display", "none");
					$(".btns").css("display", "inline-block");
					if($("#memNo").val() == 1) {
						$("#admin").show();
					}
					
				} else {
					$(".logins").css("display", "inline-block");
					$(".btns").css("display", "none");
				}
				
				
				if($("#sidebarGbn").val() == "") {
					var params = $("#actionForm").serialize();
					
					$.ajax({
						
						url: "clientCenterFAQCnt",
						type: "post",
						dataType: "json",
						data: params,
						success: function(res) {
							if(res.msg == "success") {
								$("#FAQCnt").val(res.FAQCnt);
								$("#firstCnt").val(res.firstCnt);
								$("#lastCnt").val(res.lastCnt);
								$("#addCnt").val(res.addCnt);
								$(".more").click();
							} else {
								txt = "오류가 발생했습니다.";
								commonPopup(txt);
							}
						},
						error: function(request, status, error) {
							console.log(error);
						}
					});
					
					$(".more").on("click", function() {
						var params = $("#actionForm").serialize();
						
						$.ajax({
							url: "clientCenterFAQList",
							type: "post",
							dataType: "json",
							data: params,
							success: function(res) {
									$("#firstCnt").val(res.firstCnt);
									$("#lastCnt").val(res.lastCnt);
									drawFAQList(res.list);
									if($("#FAQCnt").val() < 11 || $("#FAQCnt").val() < $("#firstCnt").val()) {
										$(".more").hide();
										$(".qna_list").css("margin-bottom", "50px");
									}
									$(function(){
										$(".question_area .question").click(function(){
											$(".answer").slideUp();
											
											if(!$(this).next().is(":visible")) {
												$(this).next().slideDown();
											}
										})
									});
							},
							error: function(request, status, error) {
								console.log(error);
							}
						});
					});
				} 
				
				/* $("#sidebarGbn1").on("click", function() {
					$("#sidebarGbn").val($("#sidebarGbn1").val());
					$(".qna_list").html("");
					$("#firstCnt").val(1);
					$("#lastCnt").val(10);
					$("#searchTxt").val("");
					console.log("123");
					var params = $("#actionForm").serialize();
					
					$.ajax({
						
						url: "clientCenterFAQCnt",
						type: "post",
						dataType: "json",
						data: params,
						success: function(res) {
							if(res.msg == "success") {
								$("#FAQCnt").val(res.FAQCnt);
								$("#firstCnt").val(res.firstCnt);
								$("#lastCnt").val(res.lastCnt);
								$("#addCnt").val(res.addCnt);
								$(".more").click();
							} else {
								txt = "오류가 발생했습니다.";
								commonPopup(txt);
							}
						},
						error: function(request, status, error) {
							console.log(error);
						}
					});
					console.log("222");
					$(".more").on("click", function() {
						$("#firstCnt").val(1);
						$("#lastCnt").val(10);
						$("#searchTxt").val("");
						var params = $("#actionForm").serialize();
						
						$.ajax({
							url: "clientCenterFAQList",
							type: "post",
							dataType: "json",
							data: params,
							success: function(res) {
									$("#firstCnt").val(res.firstCnt);
									$("#lastCnt").val(res.lastCnt);
									drawFAQList(res.list);
									if($("#FAQCnt").val() < 11 || $("#FAQCnt").val() < $("#firstCnt").val()) {
										$(".more").hide();
										$(".qna_list").css("margin-bottom", "50px");
									}
									$(function(){
										$(".question_area .question").click(function(){
											$(".answer").slideUp();
											
											if(!$(this).next().is(":visible")) {
												$(this).next().slideDown();
											}
										})
									});
							},
							error: function(request, status, error) {
								console.log(error);
							}
						});
					});
					console.log("333");
					
				}); // sidebarGbn1 click end */
				
				/* // 사이드바(회원서비스, 여행/자유게시판, 등급/랭킹, 신고) 클릭 시 리스트 다시 그리기
				$("#sidebarGbn1").on("click", function() {
					$("#sidebarGbn").val($("#sidebarGbn1").val());
				}); */
				
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
				
			}); // document ready end..
			
			function commonPopup(txt) {
				var html = "";
				                                                          
				html += "<div class=\"popup\">"
		   		html += "<div class=\"popup_entity_txt\">" + txt + "</div>"
		        html += "<div class=\"btn_list\">"
			    html += "<span id=\"ok\">OK</span>"
			    html += "</div>"
				html += "</div>"
				html += "<div class=\"bg\"></div>"
				
				$("body").prepend(html);
				
				$("#ok").on("click", function() {
					$(".popup").remove();
					$(".bg").remove();
				});
			}
			
			/* function reloadList() {
				var params = $("#actionForm").serialize();
				
				$.ajax({
					url: "clientCenterQuestions",
					type: "post",
					dataType: "json",
					data: params,
					success: function(res) {
						drawList(res.list);
						$(function(){
							$(".question_area .question").click(function(){
								$(".answer").slideUp();
								
								if(!$(this).next().is(":visible")) {
									$(this).next().slideDown();
								}
							})
						});
					},
					error: function(request, status, error) {
						console.log(request);
						console.log(status);
						console.log(error);
					}
				});
			} */
			
			
			var html = "";
			function drawFAQList(list) {
				
				for(d of list) {
					html += "<li class=\"qna_data\">"
					html += "<div class=\"question\">"
					html += "<span class=\"qna\">Q</span>"
					html += "<span class=\"entity\">[" + d.FAQ_EVENT_NAME + "] " + d.QUESTION + "</span>"
					html += "<img alt=\"답변\" src=\"./resources/images/under.png\">"
					html += "</div>"
					html += "<div class=\"answer\">"
					html += "<span class=\"qna\">A</span>"
					html += "<span class=\"entity\">" + d.ANSWER + "</span>"
					html += "</div>"
					html += "</li>"
				}
				
				$(".qna_list").html(html);
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
							<a href="#"><img alt="로고" src="./resources/images/logo.png" class="logo_photo"></a>
							<div class="site_name">우리들의 여행일지</div>
						</div>
						<div class="btns"> <!-- 밑에 logins와 연동 -->
							<img alt="bell" src="./resources/images/bell.png" class="bell_icon">
							<img alt="bookmark" src="./resources/images/bmk.png">
							<img alt="프로필" src="./resources/images/profile.png">
						</div>
						<div class="logins">
							<div class="sub_login1">
								<input type="button" class="login_btn" value="로그인" />
								<input type="password" class="login" placeholder="PW" />
								<input type="text" class="login" placeholder="ID" />
							</div>
							<div class="sub_login2">
								<span>회원가입</span>
								<span>ID/PW 찾기</span>
							</div>
						</div>
					</div>
					<!-- 호버시 메뉴 생성 -->
				</div>
				<nav class="menu">
					<ul>
						<li>여행게시판</li>
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
			<div id="container">
				<form action="#" id="actionForm" method="post">
					<input type="hidden" id="memNo" name="memNo" value="${sMEM_NO}" />
					<input type="hidden" id="FAQCnt" name="FAQCnt" />
					<input type="hidden" id="firstCnt" name="firstCnt" />
					<input type="hidden" id="lastCnt" name="lastCnt" />
					<input type="hidden" id="addCnt" name="addCnt" />
					<input type="hidden" id="sidebarGbn" name="sidebarGbn" value="" />
				<div class="client_center_search">
					<div class="client_center_name">
						<div>고객센터</div>					
					</div>
					<div class="question_search">
						<input type="text" id="searchTxt" name="searchTxt" value="${param.searchTxt}" placeholder="자주 묻는 질문 검색" />
						<div><img alt="검색" src="./resources/images/search.png"></div>
					</div>
				</div>
				</form>
				<div class="sidebar">
					<div class="sidebar1" id="question">자주 묻는 질문</div><div class="sidebar2" id="matter">문의사항</div>
					<div class="sidebar3">
						<p>
							고객센터 1577-8253<br/>
							365일, 24시간 운영
						</p>
					</div>
				</div>
				<div class="question_sidebar">
					<ul>
						<li id="sidebarGbn1" value="1">회원서비스</li>
						<li id="sidebarGbn2" value="2">여행/자유게시판</li>
						<li id="sidebarGbn3" value="3">등급/랭킹</li>
						<li id="sidebarGbn4" value="4">신고</li>
					</ul>
				</div>
				<div class="question_area">
					<ul class="qna_list"></ul>
					<div class="more">
						더보기 <img alt="더보기" src="./resources/images/under_y.png">
					</div>
				</div>
			</div> <!-- container end -->
			<div id="footer">
				<p>
					POPJOURNEY<br/>
					GDJ-35기 LEE Eun-Soo, LEE In-Bok, CHOI Jeong-Min<br/>
					Copyright© POPJOURNEY. All Rights Reserved.
				</p>
			</div>			
		</div>
	</body>
</html>