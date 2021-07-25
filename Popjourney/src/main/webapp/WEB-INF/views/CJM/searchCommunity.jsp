<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>통합검색-자유게시판</title>
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
				border-bottom: 2px solid #2e3459;
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
			
		   table {
	         	border-collapse: collapse;
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
	       .board_list {
	         	width: 100%;
	         	border-top: 1px solid #2e3459;
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
	       .board_title {
	       		text-decoration: none;
	       }
	       a {
	       		text-decoration: none;
	       }
	       .click_article {
				cursor: pointer;
			}
			.click_article:hover {
				color: #fcba03;
			}
			
			
	       .paging { 
	            font-size: 0;
	            text-align: center;
	            margin: 40px 0px 60px 0px;
	        }  
	        .paging div {
	            display: inline-block;
	            margin-left: 10px;
	            padding: 5px 10px;
	            border-radius: 20px;
	            font-size: 12pt; 
	            font-weight: bold;
	            text-decoration: none;
	        }   
	        .paging_btn {
	            background-color: none;
	            color: #2e3459;
	            letter-spacing:-5px;
	            font-size: 12pt;
	        }
	        .paging div.num {           
	            color: #2e3459;
	        }
	        .paging div:first-child {
	            margin-left: 0;
	        } 
	        .paging div.num:hover,
	        .paging div.num.on,
	        .paging div.paging_btn:hover  {
	            color: #F1404B;
	            text-decoration: underline;
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
		<script type="text/javascript"
				src="resources/script/jquery/jquery-1.12.4.min.js"></script>
		<script type="text/javascript">
			$(document).ready(function() {
				
				reloadList();
				
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
				
				// 셀렉터 옵션 유지
				if("${param.mainSearchFilter}" != "") {
					$("#mainSearchFilter").val("${param.mainSearchFilter}");
				}
				
				// 페이징 처리
				$(".paging").on("click", "div", function() {
					$($("#page").val($(this).attr("page")));
					$("#searchTxt").val($("#searchTxt").val());
					$("#allCkbox").prop("checked", false);
					reloadList();
				});
				
				// 검색처리
				$(".search_btn").on("click", function() {
					if($("#mainSearchFilter").val() == 0) {
						$("#actionForm").attr("action", "search");
						$("#actionForm").submit();
					} else if($("#mainSearchFilter").val() == 1) {
						$("#actionForm").attr("action", "searchTravelDiary");
						$("#actionForm").submit();
					} else if($("#mainSearchFilter").val() == 2) {
						$("#actionForm").attr("action", "searchHashtag");
						$("#actionForm").submit();
					} else if($("#mainSearchFilter").val() == 3) {
						$("#page").val(1);
						$("#mainSearchOldTxt").val($("#mainSearchTxt").val());
						reloadList();
					} else {
						$("#actionForm").attr("action", "searchNic");
						$("#actionForm").submit();
					}
				});
			}); // document ready end..
			
			function reloadList() {
				var params = $("#actionForm").serialize();
				
				$.ajax({
					url: "searchCommunitys",
					type: "post",
					dataType: "json",
					data: params,
					success: function(res) {
						boardCnt(res.boardCnt);
						drawList(res.list);
						drawPaging(res.pb);
					},
					error: function(request, status, error) {
						console.log(error);
					}
				}); // ajax end..
			} // reloadList() end..
			function boardCnt(boardCnt) {
				console.log(boardCnt);
				if(boardCnt > 0) {
					$(".paging").show();
				} else if(boardCnt == 0) {
					$(".paging").hide();
				}
				$("#boardCnt").html("");
				var html = "";
				html = boardCnt + "개의 자유게시판이 검색되었습니다.";
				$("#boardCnt").html(html);
			}
			function drawList(list) {
				$("#boardGallery").html("");
				var html = "";
				
				for(d of list) {
					html += "<tr class=\"board_data\" postNo=\"" + d.POST_NO + "\">";
	    			html += "<td>" + d.POST_NO + "</td>";
	    			if(d.CATEGORY_NO == 2) {
	    				html += "<td class=\"td_t\">" + d.CATEGORY_NAME + "</td>";
	    			} else if(d.CATEGORY_NO == 3) {
	    				html += "<td class=\"td_q\">" + d.CATEGORY_NAME + "</td>";
	    			} else if(d.CATEGORY_NO == 4){
	    				html += "<td class=\"td_c\">" + d.CATEGORY_NAME + "</td>";
	    			}
	    			html += "<td class=\"board_title\">" + d.TITLE + "</td>";
	    			html += "<td>" + d.GRADE_NAME + "</td>";
	    			html += "<td>" + d.NIC + "</td>";
	    			html += "<td>" + d.BOARD_DATE + "</td>";
	    			html += "<td>" + d.HIT + "</td>";
	    			html += "<td>" + d.POST_LIKE_CNT + "</td>";
	    			html += "</tr>";
				}
				
				$("#boardGallery").html(html);
			}
			function drawPaging(pb) {
				var html = "";
				
				html += "<div class=\"paging_btn\" page=\"1\"><<</div>";
				
				if($("#page").val() == "1") {
					html += "<div class=\"paging_btn\" page=\"1\"><</div>";
				} else {
					html += "<div class=\"paging_btn\" page=\"" + ($("#page").val() - 1) + "\"><</div>";
				}
				
				for(var i = pb.startPcount ; i <= pb.endPcount ; i++) {
					if($("#page").val() == i) {
						html += "<div class=\"num on\" page=\"" + i + "\">" + i + "</div>";
					} else {
						html += "<div class=\"num\" page=\"" + i + "\">" + i + "</div>";
					}
				}
				
				if($("#page").val() == pb.maxPcount) {
					html += "<div class=\"paging_btn\" page=\"" + pb.maxPcount + "\">></div>";
				} else {
					html += "<div class=\"paging_btn\" page=\"" + ($("#page").val() * 1 + 1) + "\">></div>";
				}
				
				html += "<div class=\"paging_btn\" page=\"" + pb.maxPcount + "\">>></div>";
				
				$(".paging").html(html);
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
				<!-- <img alt="search" src="./resources/images/search.png" class="search_icon"/>
				<input type="text" class="search" placeholder="검색">
				<select class="filter">
					<option value="0" selected="selected">통합검색</option>
					<option value="1">여행일지</option>
					<option value="2">해시태그</option>
					<option value="3">자유게시판</option>
					<option value="4">닉네임</option>
				</select> -->
			</div>
			
			<div id="container">
				<form action="#" id="hidden" method="post">
					<input type="hidden" id="sTxt" value="${param.mainSearchTxt}" />
					<input type="hidden" id="sFilter" value="${param.mainSearchFilter}" />
				</form>
				<div class="search_area">
				<form action="#" id="actionForm" method="post">
					<input type="hidden" id="page" name="page" value="${page}" />
					<input type="hidden" id="mainSearchOldTxt" value="${param.mainSearchTxt}" />
					<input type="hidden" id="postNo" name="postNo" />
					<div class="sub_search">
						검색 :
						<select class="search_filter" id="mainSearchFilter" name="mainSearchFilter">
								<option value="0" selected="selected">통합검색</option>
								<option value="1">여행일지</option>
								<option value="2">해시태그</option>
								<option value="3">자유게시판</option>
								<option value="4">닉네임</option>
						</select>
						<input class="search_txt" type="text" id="mainSearchTxt" name="mainSearchTxt" value="${param.mainSearchTxt}" />
						<input class="search_btn" type="button" value="검색" />
					</div>
				</form>
					
					<!-- 자유게시판 검색결과 시작 -->		
					<div class="line"></div>		
					<div class="search_category">자유게시판</div>
					<div class="search_category_cnt" id="boardCnt">${boardCnt}개의 자유게시글이 검색되었습니다.</div>
					
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
	            				<th class="click_article">No</th>
	            				<th class="click_article">카테고리</th>
	            				<th>제목</th>
	            				<th class="click_article">등급</th>
	            				<th>닉네임</th>
	            				<th class="click_article">작성일</th>
	            				<th class="click_article">조회</th>
	            				<th class="click_article">좋아요</th>
	            			</tr>
	            		</thead>
	            		<tbody id="boardGallery"></tbody>
            		</table>
					<!-- 자유게시판 검색결과 끝 -->
					<div class="paging"></div>		
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