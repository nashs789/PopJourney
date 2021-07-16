<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>여행작가</title>
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
			.rank_area {
				display: block;
				width: 650px;
				margin: 0px auto;
				padding: 20px;
			}
			.nic_search {
				display: block;
				width: 375px;
				height: 40px;
				font-size: 15pt;
				font-weight: bold;
				margin: 40px 0px 10px 280px;
			}
			.nic_txt {
				position: relative;
				top: -2px;
				width: 200px;
				height: 28px;
				padding: 5px;
				font-size: 10pt;
				border: 1px solid black;
			}
			.nic_btn {
				width: 90px;
				height: 40px;
				background-color: #2e3459;
				font-size: 12pt;
				font-weight: bold;
				color: #FFFFFF;
				cursor: pointer;
				border-radius: 5px;
			}
			.nic_btn:hover {
				background-color: #294a37;
			}
			table {
				border-collapse: collapse;
			}
			thead tr {
				background-color: #FFFFFF;
				color: #000000;
				height: 40px;
				border-top: 2px solid #2e3459;
				border-bottom: 1px solid #ccc;
				text-align: center;
			}
			thead tr th {
				padding: 0px 5px;
				font-size: 10pt;
				font-weight: bold;
				text-align: center;
			}
			tbody tr{
				border-bottom: 1px solid #ccc;
				height: 40px;
				text-align: center;
			}
			tbody tr td {
				font-size: 10pt;
				font-weight: 300;
			}
			.travel_writer_rank {
				display: block;
				width: 650px;
				text-align: center;
			}
			.rank_photo {
				width: 32px;
			}
			.article {
				font-size: 13pt;
			}
			.click_article {
				cursor: pointer;
			}
			.click_article:hover {
				color: #fcba03;
			}
			.nic {
				cursor: pointer;
			}
			.nic:hover {
				color: #fcba03;
			}
			
			.paging_wrap {
            	width: 100%;
            	height: 100px;
            	padding-top: 50px;
	        }
	        .paging { 
	            font-size: 0;
	            text-align: center;
	            margin: 40px 0px 60px 0px;
	        }  
	        .paging a {
	            display: inline-block;
	            margin-left: 10px;
	            padding: 5px 10px;
	            border-radius: 20px;
	            font-size: 12pt; 
	            font-weight: bold;
	            text-decoration: none;
	        }   
	        .paging a.paging_btn {
	            background-color: none;
	            color: #2e3459;
	            letter-spacing:-5px;
	            font-size: 12pt;
	        }
	        .paging a.num {           
	            color: #2e3459;
	        }
	        .paging a:first-child {
	            margin-left: 0;
	        } 
	        .paging a.num:hover,
	        .paging a.num.on,
	        .paging a.paging_btn:hover  {
	            color: #F1404B;
	            text-decoration: underline;
	        }
			.travel_writer_score h4, .travel_writer_score h6 {
				font-size: 10pt;
				font-weight: 600;
				width: 400px;		
				margin: 10px 0px 10px 0px;	
			}
			/* 여기까지 container */
			
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
				
				$("#travelWriter").on("click", function() {
			  		location.href = "travelWriterRank";
			  	});
				$("#clientCenter").on("click", function() {
			  		location.href = "clientCenterQuestion";
			  	});
				$("#admin").on("click", function() {
			  		location.href = "memAdmin";
			  	});
				
				
				
				
				
			}); // document ready end..
			
			function reloadList() {
				var params = $("#actionForm").serialize();
				
				$.ajax({
					url: "travelWriterRanks",
					type: "post",
					dataType: "json",
					data: params,
					success: function(res) {
						drawList(res.list);
						drawPaging(res.pb);
					},
					error: function(request, status, error) {
						console.log(request);
						console.log(status);
						console.log(error);
					}
				});
			}
			
			function drawList(list) {
				var html = "";
				
				for(d of list) {
					if(d.LEAVE_DATE == "-") {
						html += "<tr mno=\"" + d.MEM_NO + "\" class=\"not_leave\">";
					} else {
						html += "<tr mno=\"" + d.MEM_NO + "\" class=\"leave\">";
					}				
					html += "<td><input type=\"checkbox\" class=\"ckbox\" name=\"ckJournalNo\" value=\"" + d.MEM_NO + "\"/></td>";
					html += "<td id=\"mNo\">" + d.MEM_NO + "</td>";
					html += "<td>" + d.ID + "</td>";
					html += "<td>" + d.NIC + "</td>";
					html += "<td>" + d.NAME + "</td>";
					html += "<td>" + d.SEX + "</td>";
					html += "<td>" + d.AGE + "</td>";
					html += "<td>" + d.EMAIL + "</td>";
					html += "<td>" + d.PHONE + "</td>";
					html += "<td>" + d.GRADE_NAME + "</td>";
					html += "<td>" + d.JOIN_DATE + "</td>";
					html += "<td>" + d.LEAVE_DATE + "</td>";
					html += "<td></td>"; // 게시글수
					html += "<td></td>"; // 좋아요수
					html += "<td></td>"; // 팔로워수
					html += "<td></td>"; // 누적신고수
					html += "<td>" + d.ACC_CNT + "</td>";
					html += "<td></td>"; // 등업신청유무
					html += "<td><input type=\"button\" class=\"grade_btn\" value=\"등급설정\" readonly=\"readonly\"/></td>";
					html += "</tr>";
				}
				
				$("#list_wrap tbody").html(html);
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
						<li>여행일지</li>
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
					<option value="1">여행일지</option>
					<option value="2">해시태그</option>
					<option value="3">자유게시판</option>
					<option value="4">닉네임</option>
				</select>
			</div>
			<div id="container">
				<!-- 여기서 부터 랭킹 -->
				<div class="rank_area">
					<div class="nic_search">
						검색 :
						<input class="nic_txt" type="text" placeholder="닉네임을 입력하세요."/>
						<input class="nic_btn" type="button" value="검색" />
					</div>
					<div class="travel_writer_rank">
						<table>
							<colgroup>
								<col width="80px" /> <!-- 랭킹 -->
								<col width="120px" /> <!-- 닉네임 -->
								<col width="100px" /> <!-- 여행일지 -->
								<col width="100px" /> <!-- 좋아요 -->
								<col width="100px" /> <!-- 팔로워 -->
								<col width="150px" /> <!-- 여행작가 점수 -->
							</colgroup>
							<thead>
								<tr class="article">
									<th class="click_article">랭킹</th>
									<th>닉네임</th>
									<th class="click_article">여행일지</th>
									<th class="click_article">좋아요</th>
									<th class="click_article">팔로워</th>
									<th class="click_article">여행작가 점수</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td><img alt="crown" src="./resources/images/Crown.png" class="rank_photo"></td>
									<td class="nic">닉네임</td>
									<td>999</td>
									<td>999</td>
									<td>999</td>
									<td>9999</td>
								</tr>
								<tr>
									<td><img alt="medalsilver" src="./resources/images/medalsilver.png" width="32px"></td>
									<td class="nic">닉네임</td>
									<td>999</td>
									<td>999</td>
									<td>999</td>
									<td>9999</td>
								</tr>
								<tr>
									<td><img alt="medalbronze" src="./resources/images/medalbronze.png" width="32px"></td>
									<td class="nic">닉네임</td>
									<td>999</td>
									<td>999</td>
									<td>999</td>
									<td>9999</td>
								</tr>
								<tr>
									<td>4</td>
									<td class="nic">닉네임</td>
									<td>999</td>
									<td>999</td>
									<td>999</td>
									<td>9999</td>
								</tr>
								<tr>
									<td>5</td>
									<td class="nic">닉네임</td>
									<td>999</td>
									<td>999</td>
									<td>999</td>
									<td>9999</td>
								</tr>
								<tr>
									<td>6</td>
									<td class="nic">닉네임</td>
									<td>999</td>
									<td>999</td>
									<td>999</td>
									<td>9999</td>
								</tr>
								<tr>
									<td>7</td>
									<td class="nic">닉네임</td>
									<td>999</td>
									<td>999</td>
									<td>999</td>
									<td>9999</td>
								</tr>
								<tr>
									<td>8</td>
									<td class="nic">닉네임</td>
									<td>999</td>
									<td>999</td>
									<td>999</td>
									<td>9999</td>
								</tr>
								<tr>
									<td>9</td>
									<td class="nic">닉네임</td>
									<td>999</td>
									<td>999</td>
									<td>999</td>
									<td>9999</td>
								</tr>
								<tr>
									<td>10</td>
									<td class="nic">닉네임</td>
									<td>999</td>
									<td>999</td>
									<td>999</td>
									<td>9999</td>
								</tr>
								<tr>
									<td>11</td>
									<td class="nic">닉네임</td>
									<td>999</td>
									<td>999</td>
									<td>999</td>
									<td>9999</td>
								</tr>
								<tr>
									<td>12</td>
									<td class="nic">닉네임</td>
									<td>999</td>
									<td>999</td>
									<td>999</td>
									<td>9999</td>
								</tr>
								<tr>
									<td>13</td>
									<td class="nic">닉네임</td>
									<td>999</td>
									<td>999</td>
									<td>999</td>
									<td>9999</td>
								</tr>
								<tr>
									<td>14</td>
									<td class="nic">닉네임</td>
									<td>999</td>
									<td>999</td>
									<td>999</td>
									<td>9999</td>
								</tr>
								<tr>
									<td>15</td>
									<td class="nic">닉네임</td>
									<td>999</td>
									<td>999</td>
									<td>999</td>
									<td>9999</td>
								</tr>
								<tr>
									<td>16</td>
									<td class="nic">닉네임</td>
									<td>999</td>
									<td>999</td>
									<td>999</td>
									<td>9999</td>
								</tr>
								<tr>
									<td>17</td>
									<td class="nic">닉네임</td>
									<td>999</td>
									<td>999</td>
									<td>999</td>
									<td>9999</td>
								</tr>
								<tr>
									<td>18</td>
									<td class="nic">닉네임</td>
									<td>999</td>
									<td>999</td>
									<td>999</td>
									<td>9999</td>
								</tr>
								<tr>
									<td>19</td>
									<td class="nic">닉네임</td>
									<td>999</td>
									<td>999</td>
									<td>999</td>
									<td>9999</td>
								</tr>
								<tr>
									<td>20</td>
									<td class="nic">닉네임</td>
									<td>999</td>
									<td>999</td>
									<td>999</td>
									<td>9999</td>
								</tr>
							</tbody>
						</table>
					</div>
					<div class="travel_writer_score">
						<h4>※ 여행작가 점수 산정 방법</h4>
						<h6>·여행일지 작성 : 5점 ·좋아요 : 1점 ·팔로워 :1점</h6>
					</div>
					<div class="paging"></div>
				</div>
			</div>
			<!-- 여기까지 랭킹 갖고온거 -->
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