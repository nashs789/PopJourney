<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>통합검색</title>
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
				background-color: #f9f9f9;
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
			#admin {
				display: none;
			}
			/* 여기까지 헤더 레이아웃 !!! */
			
			#container {
				display: block;
				width: 1280px;
				margin: 0 auto;
				background-color: #f9f9f9;
			}
			.search_area {
				display: block;
				width: 1240px;
				margin: 0px auto;
				padding: 20px;
			}
			.sub_search {
				display: block;
				margin: 40px auto 5px auto;
				width: 482px; /* 476 */
				height: 40px;
				font-size: 15pt;
				font-weight: bold;
			}
			.search_filter {
				position: relative;
				top: -2px;
				left: 0px;
				width: 100px;
				height: 40px;
			}
			.search_txt {
				position: relative;
				top: -2px;
				width: 200px;
				height: 28px;
				padding: 5px;
				font-size: 10pt;
				border: 1px solid black;
			}
			.search_btn {
				width: 90px;
				height: 40px;
				background-color: #FFFFFF;
				font-size: 11pt;
				font-weight: bold;
				color: #000000;
				cursor: pointer;
				border-radius: 20px;
				border: 2px solid #2E3459;
			}
			.search_btn:hover {
				background-color: #2e3459;
				color: #FFFFFF;
			}
			
			
			
			.line {
				width: 100%;
				height: 5px;
				margin: 30px auto 15px auto;
				border-bottom: 5px solid #fcba03;
			}
			.search_category {
				font-size: 18pt;
				font-weight: bold;
			}
			.search_category_cnt {
				font-size: 12pt;
				font-weight: 600;
				margin: 5px 0px 20px 0px;
			}
			
			/* 여기부터 여행게시판 css*/
			.gallery {
				padding: 30px 0 0 45px;
				height: 1270px;
			}
			.post {
				float: left;
				width: 340px;
				height: 390px;
				margin: 0 0 40px 40px;
				border: 1px solid #f1f1f1;
				font-size: 10pt;
				color: black;
				cursor: pointer;
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
			/* 여기까지 여행게시판 css*/
			
			
			.more_entity {
				font-size: 12pt;
				font-weight: bold;
				color: #FFFFFF;
				text-align: center;
				background-color: #2e3459;
				margin: 50px 0px 50px 0px;
				width: 100%;
				height: 30px;
				line-height: 30px;
				cursor: pointer;
			}
			.more_entity:hover {
				background-color: #294a37;
			}
			
			
			
		   table {
	         	border-collapse: collapse;
	       } 
	       caption {
	         	display: none;
	       }
	       .board_list {
	         	width: 100%;
	         	border-top: 2px solid #2e3459;
	         	margin-top: 30px;
	       }
	       .board_list tr {
	         	border-bottom: 1px solid #ccc;
	         	background-color: #FFFFFF;
	       }
	       .board_list th,
	       .board_list td{
	         	padding: 10px;
	         	font-size: 12pt;
	       }
	       .board_list td{
	         	text-align: center;
	       }        
	       .board_list tbody tr {
	       		background-color: #f9f9f9;
	       		cursor: pointer;
	       }
	       .board_list tbody tr:hover {
	       		background-color: #FFFFFF;
	       }
	       .board_list tbody tr td:nth-child(2) {
	          	font-weight:550;
	         	color: rgb(128, 0, 255);
	       }     
	       .board_list tbody tr td:nth-child(3) {
	         	text-align: left;
	       }   
	       .board_list tbody tr td:nth-child(3):hover {
	         	text-decoration: underline;
	       }
	       .board_list > tbody >.notice_board {
	          	font-weight: 550;
	          	background: #faf9f7;
	       } 
	       .board_list > tbody >.notice_board >td:nth-child(2) {
	          	color: red;
	       } 
	       .board_list > tbody >.notice_board >td>span {
	          	padding:5px 10px;
	          	border-radius:5px;
	          	background-color: #2e3459;
	          	color: white; 
	       }
	       .board_list_wrap .paging {
	         	margin-top: 30px; 
	         	font-size: 0;
	         	text-align: center;
	       }  
	       .board_list_wrap .paging a {
	         	display: inline-block;
	         	margin-left: 10px;
	         	padding: 5px 10px;
	         	border-radius: 5px;
	         	font-size: 12pt; 
	       }   
	       .board_list_wrap .paging a.paging_btn {
	         	background-color: none;
	         	color: #2e3459;
	         	letter-spacing:-5px;
	         	font-size: 15pt;
	         	font-weight: bold;
	       }
	       .board_list_wrap .paging a.num {        	
	         	border: 1px solid #2e3459;
	         	background-color: #2e3459;
	         	color: white;
	         	font-weight: bold;
	       }
	       .board_list_wrap .paging a:first-child {
	         	margin-left: 0;
	       } 
	       .board_list_wrap .paging a.num:hover {
	         	border-color:#fcba03;
	         	background-color: #fcba03;
	         	color: #2e3459;
	       }
	       .board_list_wrap .paging a.paging_btn:hover {
	         	color: #fcba03;
	       }
	       .board_list_wrap .paging a.num.on {
	         	border-color:#fcba03;
	         	background-color: #fcba03;
	         	color: #2e3459;
	       }
	       .board_title {
	       		text-align: left;
	       		text-decoration: none;
	       }
			
			
			.search_nic {
				width: 520px;
				margin: 0px auto;
			}
			.search_nic table {
				border-collapse: collapse;
			}
			.article {
				color: #000000;
				height: 40px;
				border-top: 2px solid #2e3459;
				border-bottom: 1px solid #ccc;
			}
			.article th {
				padding: 0px 17px;
				font-size: 12pt;
				font-weight: 600;
				background-color: #FFFFFF;
			}
			.click_article {
				cursor: pointer;
			}
			.click_article:hover {
				color: #fcba03;
			}
			.search_nic table > tbody > tr{
				border-bottom: 1px solid #ccc;
				height: 40px;
				text-align: center;
				background-color: #f9f9f9;
			}
			.search_nic table > tbody > tr > td {
				font-size: 10pt;
				font-weight: 300;
			}
			.nic {
				cursor: pointer;
			}
			.nic:hover {
				background-color: #FFFFFF;
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
		<script type="text/javascript"
				src="resources/script/jquery/jquery-1.12.4.min.js"></script>
		<script type="text/javascript">
			$(document).ready(function() {
				
				
				// 상단배너 -> 여행게시판 - 자유게시판 - 여행작가 - 고객센터 - 내부관리자 메뉴 이동
				$("#travelWriter").on("click", function() {
			  		location.href = "travelWriterRank";
			  	});
				$("#clientCenter").on("click", function() {
			  		location.href = "clientCenterQuestion";
			  	});
				$("#admin").on("click", function() {
			  		location.href = "memAdmin";
			  	});
				
				// 로그인 정보 유지
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
				
				$(".search_icon").on("click", function() {
					
					var params = $("#actionForm").serialize();
					
					$.ajax({
						url: "search",
						type: "post",
						dataType: "json",
						data: params,
						success: function(res) {
							
						},
						error: function(request, status, error) {
							console.log(error);
						}
					});
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
						<li>자유게시판</li>
						<li id="travelWriter">여행작가</li>
						<li id="clientCenter">고객센터</li>
						<li id="admin">내부관리자</li>
					</ul>
				</nav>
				<img alt="search" src="./resources/images/search.png" class="search_icon"/>
				<input type="text" class="search" placeholder="검색">
				<select class="filter">
					<option value="0" selected="selected">통합검색</option>
					<option value="1">여행게시판</option>
					<option value="2">해시태그</option>
					<option value="3">자유게시판</option>
					<option value="4">닉네임</option>
				</select>
			</div>
			
			<div id="container">
				<div class="search_area">
					<div class="sub_search">
						검색 :
						<select class="search_filter">
								<option value="0" selected="selected">통합검색</option>
								<option value="1">여행게시판</option>
								<option value="2">해시태그</option>
								<option value="3">자유게시판</option>
								<option value="4">닉네임</option>
						</select>
						<input class="search_txt" type="text" />
						<input class="search_btn" type="button" value="검색" />
					</div>
					<div class="line"></div>
					<div class="search_category">여행게시판</div>
					<div class="search_category_cnt">300개의 여행게시판이 검색되었습니다.</div>
					
					<!-- 여행게시판 검색결과 시작 -->
					<div class="gallery">
						<div class="post">
							<span class="thumb"><img alt="썸네일"
									src="./resources/images/a1.jpg"></span>
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
									<img alt="작성자" src="./resources/images/profile3.png"> <span>닉네임</span>
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
									src="./resources/images/a2.jpg"></span>
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
									<img alt="작성자" src="./resources/images/profile3.png"> <span>닉네임</span>
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
									src="./resources/images/a3.jpg"></span>
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
									<img alt="작성자" src="./resources/images/profile3.png"> <span>닉네임</span>
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
									src="./resources/images/a4.jpg"></span>
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
									<img alt="작성자" src="./resources/images/profile3.png"> <span>닉네임</span>
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
									src="./resources/images/a1.jpg"></span>
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
									<img alt="작성자" src="./resources/images/profile3.png"> <span>닉네임</span>
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
									src="./resources/images/a2.jpg"></span>
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
									<img alt="작성자" src="./resources/images/profile3.png"> <span>닉네임</span>
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
									src="./resources/images/a3.jpg"></span>
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
									<img alt="작성자" src="./resources/images/profile3.png"> <span>닉네임</span>
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
									src="./resources/images/a4.jpg"></span>
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
									<img alt="작성자" src="./resources/images/profile3.png"> <span>닉네임</span>
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
									src="./resources/images/a1.jpg"></span>
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
									<img alt="작성자" src="./resources/images/profile3.png"> <span>닉네임</span>
									<div>
										<div>
											<span>조회수</span> <span class="cnt">100</span> <span>좋아요</span>
											<span class="cnt">100</span>
										</div>
										<span>2021-05-24</span>
									</div>
	
								</div>
						</div>
					</div>
					
					
					<div class="more_entity">여행게시판 더보기</div>
					<!-- 여행게시판 검색결과 끝  -->
					
					<!-- 해시태그 검색결과 시작 -->		
					<div class="line"></div>		
					<div class="search_category">#여수</div>
					<div class="search_category_cnt">100개의 여행게시판이 검색되었습니다.</div>
					
					<div class="gallery">
						<div class="post">
							<span class="thumb"><img alt="썸네일"
									src="./resources/images/a1.jpg"></span>
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
								<img alt="작성자" src="./resources/images/profile3.png"> <span>닉네임</span>
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
									src="./resources/images/a2.jpg"></span>
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
								<img alt="작성자" src="./resources/images/profile3.png"> <span>닉네임</span>
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
									src="./resources/images/a3.jpg"></span>
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
								<img alt="작성자" src="./resources/images/profile3.png"> <span>닉네임</span>
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
									src="./resources/images/a4.jpg"></span>
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
								<img alt="작성자" src="./resources/images/profile3.png"> <span>닉네임</span>
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
									src="./resources/images/a1.jpg"></span>
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
								<img alt="작성자" src="./resources/images/profile3.png"> <span>닉네임</span>
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
									src="./resources/images/a2.jpg"></span>
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
								<img alt="작성자" src="./resources/images/profile3.png"> <span>닉네임</span>
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
									src="./resources/images/a3.jpg"></span>
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
								<img alt="작성자" src="./resources/images/profile3.png"> <span>닉네임</span>
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
									src="./resources/images/a4.jpg"></span>
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
								<img alt="작성자" src="./resources/images/profile3.png"> <span>닉네임</span>
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
									src="./resources/images/a1.jpg"></span>
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
								<img alt="작성자" src="./resources/images/profile3.png"> <span>닉네임</span>
								<div>
									<div>
										<span>조회수</span> <span class="cnt">100</span> <span>좋아요</span>
										<span class="cnt">100</span>
									</div>
									<span>2021-05-24</span>
								</div>
							</div>
						</div>
					</div>
					
						
					<div class="more_entity">#여수 더보기</div>				
					<!-- 해시태그 검색결과 끝 -->	
						
					<!-- 자유게시판 검색결과 시작 -->		
					<div class="line"></div>		
					<div class="search_category">자유게시판</div>
					<div class="search_category_cnt">200개의 자유게시글이 검색되었습니다.</div>
					
					<table class="board_list">
	            		<caption>게시판 목록</caption>
	            		<colgroup>
								<col width="106px" /> <!-- No -->
								<col width="124px" /> <!-- 카테고리 -->
								<col width="430px" /> <!-- 제목 -->
								<col width="124px" /> <!-- 등급 -->
								<col width="101px" /> <!-- 닉네임 -->
								<col width="161px" /> <!-- 작성일 -->
								<col width="92px" /> <!-- 조회 -->
								<col width="102px" /> <!-- 좋아요 -->
						</colgroup>
	            		<thead>
	            			<tr>
	            				<th>No</th>
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
	            			<tr class="board_data">
	            				<td>1</td>
	            				<td>여행꿀팁</td>
	            				<td class="board_title">제목</td>
	            				<td>여행작가</td>
	            				<td>abc</td>
	            				<td>2021-05-26</td>
	            				<td>145</td>
	            				<td>50</td>
	            			</tr>
	            			<tr class="board_data">
	            				<td>2</td>
	            				<td>여행꿀팁</td>
	            				<td class="board_title">제목</td>
	            				<td>여행작가</td>
	            				<td>abc</td>
	            				<td>2021-05-26</td>
	            				<td>145</td>
	            				<td>50</td>
	            			</tr>
	            			<tr class="board_data">
	            				<td>3</td>
	            				<td>여행꿀팁</td>
	            				<td class="board_title">제목</td>
	            				<td>여행작가</td>
	            				<td>abc</td>
	            				<td>2021-05-26</td>
	            				<td>145</td>
	            				<td>50</td>
	            			</tr>
	            			<tr class="board_data">
	            				<td>4</td>
	            				<td>여행꿀팁</td>
	            				<td class="board_title">제목</td>
	            				<td>여행작가</td>
	            				<td>abc</td>
	            				<td>2021-05-26</td>
	            				<td>145</td>
	            				<td>50</td>
	            			</tr>
	            			<tr class="board_data">
	            				<td>5</td>
	            				<td>여행꿀팁</td>
	            				<td class="board_title">제목</td>
	            				<td>여행작가</td>
	            				<td>abc</td>
	            				<td>2021-05-26</td>
	            				<td>145</td>
	            				<td>50</td>
	            			</tr>
	            			<tr class="board_data">
	            				<td>6</td>
	            				<td>여행꿀팁</td>
	            				<td class="board_title">제목</td>
	            				<td>여행작가</td>
	            				<td>abc</td>
	            				<td>2021-05-26</td>
	            				<td>145</td>
	            				<td>50</td>
	            			</tr>
	            			<tr class="board_data">
	            				<td>7</td>
	            				<td>여행꿀팁</td>
	            				<td class="board_title">제목</td>
	            				<td>여행작가</td>
	            				<td>abc</td>
	            				<td>2021-05-26</td>
	            				<td>145</td>
	            				<td>50</td>
	            			</tr>
	            			<tr class="board_data">
	            				<td>8</td>
	            				<td>여행꿀팁</td>
	            				<td class="board_title">제목</td>
	            				<td>여행작가</td>
	            				<td>abc</td>
	            				<td>2021-05-26</td>
	            				<td>145</td>
	            				<td>50</td>
	            			</tr>
	            			<tr class="board_data">
	            				<td>9</td>
	            				<td>여행꿀팁</td>
	            				<td class="board_title">제목</td>
	            				<td>여행작가</td>
	            				<td>abc</td>
	            				<td>2021-05-26</td>
	            				<td>145</td>
	            				<td>50</td>
	            			</tr>
	            			<tr class="board_data">
	            				<td>10</td>
	            				<td>여행꿀팁</td>
	            				<td class="board_title">제목</td>
	            				<td>여행작가</td>
	            				<td>abc</td>
	            				<td>2021-05-26</td>
	            				<td>145</td>
	            				<td>50</td>
	            			</tr>
	            		</tbody>
            		</table>
            		<div class="more_entity">자유게시판 더보기</div>					
					<!-- 자유게시판 검색결과 끝 -->		
					
					<!-- 닉네임 검색결과 시작 -->		
					<div class="line"></div>		
					<div class="search_category">닉네임</div>
					<div class="search_category_cnt">50개의 닉네임이 검색되었습니다.</div>
					
					
					
					<div class="search_nic">
						<table>
							<colgroup>
								<col width="120px" /> <!-- 닉네임 -->
								<col width="100px" /> <!-- 등급 -->
								<col width="120px" /> <!-- 여행게시판 -->
								<col width="100px" /> <!-- 좋아요 -->
								<col width="100px" /> <!-- 팔로워 -->
							</colgroup>
							<thead>
								<tr class="article">
									<th>닉네임</th>
									<th>등급</th>
									<th>여행게시판</th>
									<th>좋아요</th>
									<th>팔로워</th>
								</tr>
							</thead>
							<tbody>
								<tr class="nic">
									<td>닉네임</td>
									<td>100</td>
									<td>여행작가</td>
									<td>100</td>
									<td>20</td>
								</tr>
								<tr class="nic">
									<td>100</td>
									<td>닉네임</td>
									<td>여행작가</td>
									<td>100</td>
									<td>20</td>
								</tr>
								<tr class="nic">
									<td>100</td>
									<td>닉네임</td>
									<td>여행작가</td>
									<td>100</td>
									<td>20</td>
								</tr>
								<tr class="nic">
									<td>100</td>
									<td>닉네임</td>
									<td>여행작가</td>
									<td>100</td>
									<td>20</td>
								</tr>
								<tr class="nic">
									<td>100</td>
									<td>닉네임</td>
									<td>여행작가</td>
									<td>100</td>
									<td>20</td>
								</tr>
								<tr class="nic">
									<td>100</td>
									<td>닉네임</td>
									<td>여행작가</td>
									<td>100</td>
									<td>20</td>
								</tr>
								<tr class="nic">
									<td>100</td>
									<td>닉네임</td>
									<td>여행작가</td>
									<td>100</td>
									<td>20</td>
								</tr>
								<tr class="nic">
									<td>100</td>
									<td>닉네임</td>
									<td>여행작가</td>
									<td>100</td>
									<td>20</td>
								</tr>
								<tr class="nic">
									<td>100</td>
									<td>닉네임</td>
									<td>여행작가</td>
									<td>100</td>
									<td>20</td>
								</tr>
								<tr class="nic">
									<td>100</td>
									<td>닉네임</td>
									<td>여행작가</td>
									<td>100</td>
									<td>20</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="more_entity">닉네임 더보기</div>
					<!-- 닉네임 검색결과 끝 -->		
				</div> <!-- search area end -->
			</div>
			
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