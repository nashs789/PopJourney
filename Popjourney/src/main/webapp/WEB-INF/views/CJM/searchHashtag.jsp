<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>통합검색-해시태그</title>
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
				min-width: 1280px;
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
				background-color: #FFFFFF;
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
				background-color: #2e3459;
				font-size: 11pt;
				font-weight: bold;
				color: #FFFFFF;
				cursor: pointer;
				border-radius: 5px;
			}
			.search_btn:hover {
				background-color: #294a37;
			}
			.pop_search {
				display: block;
				font-size: 12pt;
				font-weight: 600;
				width: 480px;
				margin: 0px auto;
			}
			.pop_search span {
				cursor: pointer;
			}
			.pop_search span:hover {
				color: #fcba03;
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
			
			
			
			
			.travel_diary {
				display: block;
				width: calc(100% - 30px);
				margin-bottom: 20px;
				background-color: #fdfdfd;
				padding: 15px;
			}
			.travel_diary_thumbnail {
				display: inline-block;
				vertical-align: top;
				width: 300px;
				height: 250px;
				margin-right: 50px;
			}
			.travel_diary_thumbnail_photo {
				display: block;
				width: 300px;
				height: 220px;
				text-align: center;
			}
			.thumbnail_photo {
				cursor: pointer;
				margin: 0px auto;
				max-width: 300px;
				max-height: 220px;
			}
			.travel_diary_thumbnail_title {
				display: block;
				width: 300px;
				height: 30px;
				font-size: 12pt;
				font-weight: bold;
				text-align: center;
				line-height: 40px;
				cursor: pointer;
			}
			.travel_diary_thumbnail_title:hover {
				color: #fcba03;
			}
			.travel_diary_profile {
				display: inline-block;
				vertical-align: top;
				width: 250px;
				height: 250px;
				margin-right: 50px;
			}
			.travel_diary_profile_1 {
				display: block;
				width: 250px;
				height: 60px;
				margin-bottom: 30px;
			}
			.user_photo {
				width: 60px;
				height: 60px;
				cursor: pointer;
			}
			.user_nic {
				display: inline-block;
				vertical-align: top;
				font-size: 15pt;
				font-weight: bold;
				width: 170px;
				height: 60px;
				line-height: 60px;
				margin-left: 20px;
				cursor: pointer;				
			}
			.user_nic:hover {
				color: #fcba03;
			}
			.travel_diary_profile_2 {
				display: block;
				width: 230px;
				height: 160px;
				font-size: 12pt;
				font-weight: 600;
			}
			.travel_diary_profile_2_entity {
				margin: 5px 0px 5px 0px;
			}
			.hash {
				cursor: pointer;
				margin: 0px;
			}
			.hash:hover {
				color: #fcba03;
			}
			.travel_diary_entity {
				display: inline-block;
				vertical-align: top;
				width: 560px;
				height: 250px;
				font-size: 12pt;
				white-space: nowrap;
				overflow: hidden;
				text-overflow: ellipsis;
			}
			.travel_diary_entity p {
				margin: 5px 0px 5px 0px;
			}
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
			
			
			.paging {
	         	margin: 50px auto 50px auto; 
	         	text-align: center;
	        }  
	        .paging a {
	         	display: inline-block;
	         	margin-left: 10px;
	         	padding: 5px 10px;
	         	border-radius: 5px;
	         	font-size: 12pt; 
	        }   
	        .paging a.paging_btn {
	         	background-color: none;
	         	color: #2e3459;
	         	letter-spacing:-5px;
	         	font-size: 15pt;
	         	font-weight: bold;
	         	text-decoration: none;
	        }
	        .paging a.num {        	
	         	border: 1px solid #2e3459;
	         	background-color: #2e3459;
	         	color: white;
	         	font-weight: bold;
	         	text-decoration: none;
	        }
	        .paging a:first-child {
	         	margin-left: 0;
	        } 
	        .paging a.num:hover {
	         	border-color:#fcba03;
	         	background-color: #fcba03;
	         	color: #2e3459;
	        }
	        .paging a.paging_btn:hover {
	         	color: #fcba03;
	        }
	        .paging a.num.on {
	         	border-color:#fcba03;
	         	background-color: #fcba03;
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
			#footer p {
				margin: 0px auto;
				padding-top: 20px;
				padding-left: 250px;
				width: 600px;
				height: 80px;
			}
		</style>
	</head>
	<body>
		<div id="wrap">
			<!-- header부분 고정 -->
			<div id="header">
				<div class="banner">
					<div class="top">
						<div class="logo_area">
							<a href="#"><img alt="로고" src="./img/logo.png" class="logo_photo"></a>
							<div class="site_name">우리들의 여행일지</div>
						</div>
						<div class="btns"> <!-- 밑에 logins와 연동 -->
							<img alt="bell" src="./img/bell.png" class="bell_icon">
							<img alt="bookmark" src="./img/bmk.png">
							<img alt="프로필" src="./img/profile.png">
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
						<li>여행일지</li>
						<li>자유게시판</li>
						<li>여행작가</li>
						<li>내부관리자</li>
					</ul>
				</nav>
				<img alt="search" src="./img/search.png" class="search_icon"/>
				<input type="text" class="search" placeholder="검색">
				<select class="filter">
					<option value="0" selected="selected">통합검색</option>
					<option value="1">여행일지</option>
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
								<option value="1">여행일지</option>
								<option value="2">해시태그</option>
								<option value="3">자유게시판</option>
								<option value="4">닉네임</option>
						</select>
						<input class="search_txt" type="text" />
						<input class="search_btn" type="button" value="검색" />
					</div>
					<div class="pop_search">
						인기검색어 : <span>국내여행</span>, <span>한적한 곳</span>, <span>기차여행</span>, <span>도보여행</span>, <span>자전거여행</span>
					</div>
					<div class="line"></div>
					<div class="search_category">#여수</div>
					<div class="search_category_cnt">100개의 여행일지가 검색되었습니다.</div>
					
					<!-- 여행일지 검색결과 시작 -->
					<div class="travel_diary"> 
						<div class="travel_diary_thumbnail">
							<div class="travel_diary_thumbnail_photo">
								<img alt="photo" src="./img/thumb.jpg" class="thumbnail_photo"/>
							</div>
							<div class="travel_diary_thumbnail_title">바다여행</div>
						</div>					
						<div class="travel_diary_profile">
							<div class="travel_diary_profile_1">
								<img alt="user" src="./img/user.png" class="user_photo" />
								<span class="user_nic">닉네임</span>
							</div>
							<div class="travel_diary_profile_2">
								<p class="travel_diary_profile_2_entity">2021-04-29</p>
								<p class="travel_diary_profile_2_entity">여행작가</p>
								<p class="travel_diary_profile_2_entity">조회수 : 200</p>
								<p class="travel_diary_profile_2_entity">좋아요 : 33개</p>
								<p class="travel_diary_profile_2_entity">댓글 : 5개</p>
								<p class="travel_diary_profile_2_entity"><span class="hash">#여수</span> <span class="hash">#여행작가</span></p>
							</div>
						</div>					
						<div class="travel_diary_entity">
							<p>
								글의 내용이 들어갈 자리 입니다.<br/>
								글의 내용은 이렇습니다.<br/>
								여행일지 웹페이지 여행일지 웹페이지 여행일지 웹페이지<br/>
								여행작가와 일반사용자가 있습니다.<br/><br/>
								글의 내용이 들어갈 자리 입니다.<br/>
								글의 내용은 이렇습니다. 글의 내용은 이렇습니다.<br/>
								여행일지 웹페이지<br/>
								여행작가와 일반사용자가 있습니다.<br/><br/>
								여행일지 웹페이지여행일지 웹페이지여행일지 웹페이지여행일웹페이지여행일dsads
							</p>
						</div>					
					</div>  
							
					<div class="travel_diary">
						<div class="travel_diary_thumbnail">
							<div class="travel_diary_thumbnail_photo">
								<img alt="photo" src="./img/thumb2.jpg" class="thumbnail_photo"/>
							</div>
							<div class="travel_diary_thumbnail_title">남산타워 코스 추천</div>
						</div>					
						<div class="travel_diary_profile">
							<div class="travel_diary_profile_1">
								<img alt="user" src="./img/user.png" class="user_photo" />
								<span class="user_nic">닉네임</span>
							</div>
							<div class="travel_diary_profile_2">
								<p class="travel_diary_profile_2_entity">2021-04-29</p>
								<p class="travel_diary_profile_2_entity">여행작가</p>
								<p class="travel_diary_profile_2_entity">조회수 : 200</p>
								<p class="travel_diary_profile_2_entity">좋아요 : 33개</p>
								<p class="travel_diary_profile_2_entity">댓글 : 5개</p>
								<p class="travel_diary_profile_2_entity"><span class="hash">#여수</span> <span class="hash">#여행작가</span></p>
							</div>
						</div>					
						<div class="travel_diary_entity">
							<p>
								글의 내용이 들어갈 자리 입니다.<br/>
								글의 내용은 이렇습니다.<br/>
								여행일지 웹페이지 여행일지 웹페이지 여행일지 웹페이지<br/>
								여행작가와 일반사용자가 있습니다.<br/><br/>
								글의 내용이 들어갈 자리 입니다.<br/>
								글의 내용은 이렇습니다. 글의 내용은 이렇습니다.<br/>
								여행일지 웹페이지<br/>
								여행작가와 일반사용자가 있습니다.<br/><br/>
								여행일지 웹페이지<br/>
							</p>
						</div>					
					</div>	
					
					<div class="travel_diary">
						<div class="travel_diary_thumbnail">
							<div class="travel_diary_thumbnail_photo">
								<img alt="photo" src="./img/thumb3.jpg" class="thumbnail_photo"/>
							</div>
							<div class="travel_diary_thumbnail_title">응봉산 팔각정 데이트</div>
						</div>					
						<div class="travel_diary_profile">
							<div class="travel_diary_profile_1">
								<img alt="user" src="./img/user.png" class="user_photo" />
								<span class="user_nic">닉네임</span>
							</div>
							<div class="travel_diary_profile_2">
								<p class="travel_diary_profile_2_entity">2021-04-29</p>
								<p class="travel_diary_profile_2_entity">여행작가</p>
								<p class="travel_diary_profile_2_entity">조회수 : 200</p>
								<p class="travel_diary_profile_2_entity">좋아요 : 33개</p>
								<p class="travel_diary_profile_2_entity">댓글 : 5개</p>
								<p class="travel_diary_profile_2_entity"><span class="hash">#여수</span> <span class="hash">#여행작가</span></p>
							</div>
						</div>					
						<div class="travel_diary_entity">
							<p>
								글의 내용이 들어갈 자리 입니다.<br/>
								글의 내용은 이렇습니다.<br/>
								여행일지 웹페이지 여행일지 웹페이지 여행일지 웹페이지<br/>
								여행작가와 일반사용자가 있습니다.<br/><br/>
								글의 내용이 들어갈 자리 입니다.<br/>
								글의 내용은 이렇습니다. 글의 내용은 이렇습니다.<br/>
								여행일지 웹페이지<br/>
								여행작가와 일반사용자가 있습니다.<br/><br/>
								여행일지 웹페이지<br/>
							</p>
						</div>					
					</div>	
					<div class="travel_diary"> 
						<div class="travel_diary_thumbnail">
							<div class="travel_diary_thumbnail_photo">
								<img alt="photo" src="./img/thumb.jpg" class="thumbnail_photo"/>
							</div>
							<div class="travel_diary_thumbnail_title">바다여행</div>
						</div>					
						<div class="travel_diary_profile">
							<div class="travel_diary_profile_1">
								<img alt="user" src="./img/user.png" class="user_photo" />
								<span class="user_nic">닉네임</span>
							</div>
							<div class="travel_diary_profile_2">
								<p class="travel_diary_profile_2_entity">2021-04-29</p>
								<p class="travel_diary_profile_2_entity">여행작가</p>
								<p class="travel_diary_profile_2_entity">조회수 : 200</p>
								<p class="travel_diary_profile_2_entity">좋아요 : 33개</p>
								<p class="travel_diary_profile_2_entity">댓글 : 5개</p>
								<p class="travel_diary_profile_2_entity"><span class="hash">#여수</span> <span class="hash">#여행작가</span></p>
							</div>
						</div>					
						<div class="travel_diary_entity">
							<p>
								글의 내용이 들어갈 자리 입니다.<br/>
								글의 내용은 이렇습니다.<br/>
								여행일지 웹페이지 여행일지 웹페이지 여행일지 웹페이지<br/>
								여행작가와 일반사용자가 있습니다.<br/><br/>
								글의 내용이 들어갈 자리 입니다.<br/>
								글의 내용은 이렇습니다. 글의 내용은 이렇습니다.<br/>
								여행일지 웹페이지<br/>
								여행작가와 일반사용자가 있습니다.<br/><br/>
								여행일지 웹페이지여행일지 웹페이지여행일지 웹페이지여행일웹페이지여행일dsads
							</p>
						</div>					
					</div>	
					<div class="travel_diary">
						<div class="travel_diary_thumbnail">
							<div class="travel_diary_thumbnail_photo">
								<img alt="photo" src="./img/thumb3.jpg" class="thumbnail_photo"/>
							</div>
							<div class="travel_diary_thumbnail_title">응봉산 팔각정 데이트</div>
						</div>					
						<div class="travel_diary_profile">
							<div class="travel_diary_profile_1">
								<img alt="user" src="./img/user.png" class="user_photo" />
								<span class="user_nic">닉네임</span>
							</div>
							<div class="travel_diary_profile_2">
								<p class="travel_diary_profile_2_entity">2021-04-29</p>
								<p class="travel_diary_profile_2_entity">여행작가</p>
								<p class="travel_diary_profile_2_entity">조회수 : 200</p>
								<p class="travel_diary_profile_2_entity">좋아요 : 33개</p>
								<p class="travel_diary_profile_2_entity">댓글 : 5개</p>
								<p class="travel_diary_profile_2_entity"><span class="hash">#여수</span> <span class="hash">#여행작가</span></p>
							</div>
						</div>					
						<div class="travel_diary_entity">
							<p>
								글의 내용이 들어갈 자리 입니다.<br/>
								글의 내용은 이렇습니다.<br/>
								여행일지 웹페이지 여행일지 웹페이지 여행일지 웹페이지<br/>
								여행작가와 일반사용자가 있습니다.<br/><br/>
								글의 내용이 들어갈 자리 입니다.<br/>
								글의 내용은 이렇습니다. 글의 내용은 이렇습니다.<br/>
								여행일지 웹페이지<br/>
								여행작가와 일반사용자가 있습니다.<br/><br/>
								여행일지 웹페이지<br/>
							</p>
						</div>
					</div>	
					<!-- 여행일지 검색결과 끝  -->
					<div class="paging">
	            		<a href="#" class=paging_btn><<</a>
	            		<a href="#" class=paging_btn><</a>
	            		<a href="#" class="num on">1</a>
	            		<a href="#" class="num">2</a>
	            		<a href="#" class="num">3</a>
	            		<a href="#" class="num">4</a>
	            		<a href="#" class="num">5</a>
	            		<a href="#" class=paging_btn>></a>
	            		<a href="#" class=paging_btn>>></a>
	            	</div>
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