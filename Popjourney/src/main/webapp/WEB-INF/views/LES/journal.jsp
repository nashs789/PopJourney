<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일지 상세보기</title>
<style type="text/css">
/* #fcba03 노랑
            #2e3459 남색
            #f37321 주황
            #2e3459 초록
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

input[type='text']:focus, input[type='password']:focus, select:focus,
	textarea:focus {
	outline-color: #fcba03;
}
/* 여기까지 헤더 레이아웃 !!! */
.container_wrap {
	width: 1280px;
	height: 100%;
	margin: 0 auto;
	overflow: hidden;
}

#container {
	display: inline-block;
	width: 1000px;
	height: 100%;
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

.title_area {
	width: 1280px;
	height: 130px;
	color: black;
	font-size: 18pt;
	margin: auto;
	margin-top: 30px;
	border-bottom: 2px solid #2e3459;
}

.title_area strong {
	padding-left: 30px;
}

.title_left span {
	font-size: 10pt;
}

.title_area span:nth-child(2n) {
	margin: 10px 15px 0 5px;
	color: #f37321;
}

.title_left, .title_right {
	display: inline-block;
}

.title_right {
	float: right;
	margin-top: 100px;
	font-weight: bold;
	margin-right: 10px;
	font-size: 12pt;
}

.title_right span {
	cursor: pointer;
}

.map_wrap {
	margin: auto;
	padding-top: 30px;
	width: 80%;
	height: 300px;
}

.map_wrap img {
	width: 100%;
	height: 300px;
}

.schedule {
	width: 80%;
	margin: 0 auto;
	height: 80px;
	background-color: #ffd666;
	border-radius: 20px;
	font-size: 12pt;
	font-weight: 900;
	margin-top: 30px;
}

.date_nav {
	height: 50px;
}

.date_nav span img {
	width: 20px;
	height: 20px;
	cursor: pointer;
}

.left_arrow {
	margin-left: 10px;
}

.date_nav span {
	top: 3px;
	position: relative;
}

.date_nav ul {
	height: 50px;
	text-align: center;
	padding: 0;
	margin: 0;
	display: inline-block;
}

.date_nav ul li {
	display: inline-block;
	height: 25px;
	list-style: none;
	color: #2e3459;
	line-height: 25px;
	text-decoration: none;
	padding-top: 13px;
	margin-top: 25px;
	margin-left: 30px;
	margin-right: 30px;
	background-color: white;
	border: 1px solid #fcba03;
	border-radius: 20px;
	padding: 3px 15px;
}

.date_nav ul li:active, .date_nav ul li.on {
	border: 1px solid #2e3459;
	background-color: #2e3459;
	color: white;
	box-shadow: rgba(0, 0, 0, 0.09) 0 6px 9px 0;
}

.content_area {
	width: 80%;
	height: 970px;
	margin: 0 auto;
}

.content_area span {
	float: right;
	font-size: 10pt;
	color: black;
	padding-right: 10px;
	margin-top: 10px;
}

.img_slide {
	width: 800px;
	height: 500px;
	margin-top: 30px;
	position: relative;
}

.img_slide>img {
	width: 100%;
	height: 100%;
}

.img_slide span img {
	width: 40px;
	height: 40px;
	cursor: pointer;
	border: 2px dotted #2e3459;
	border-radius: 100px;
}

.img_slide span img:hover {
	border: 2px dotted #f37321;
}

.img_slide span {
	top: 220px;
	display: inline-block;
	position: absolute;
}

.img_slide .left_arrow {
	margin-left: -75px;
}

.img_slide .right_arrow {
	margin-left: 28px;
}

.txt_area {
	width: 800px;
	height: 365px;
	color: black;
	font-size: 12pt;
}

.txt_area p {
	width: 800px;
	height: 367px;
	overflow-y: scroll;
    -ms-overflow-style: none;
}

.txt_area p::-webkit-scrollbar {
	display: none !important;
}

.category_area {
	width: 1280px;
	height: 50px;
	font-size: 12pt;
	border-bottom: 1px solid #2e3459;
}

.category_label {
	display: inline-block;
	width: 80px;
	height: 50px;
	font-weight: bold;
	padding-top: 8px;
	color: black;
}

.category_txt {
	display: inline-block;
	position: absolute;
	width: 1200px;
	height: 50px;
	padding-left: 40px;
	color: black;
	line-height: 50px;
}

.hash_area {
	width: 1280px;
	height: 150px;
}

.hash_txt ul li {
	list-style: none;
	float: left;
	border: 1px solid #fcba03;
	background-color: #ffd666;
	border-radius: 20px;
	padding: 8px;
	color: #2e3459;
	font-size: 12pt;
	font-weight: bold;
	margin-right: 30px;
	margin-bottom: 10px;
	text-decoration: none;
}

.hash_label {
	display: inline-block;
	width: 80px;
	height: 150px;
	font-size: 12pt;
	font-weight: bold;
	color: black;
	padding-top: 8px;
}

.hash_txt {
	display: inline-block;
	position: absolute;
	width: 1200px;
	height: 150px;
	padding-left: 10px;
	font-size: 10pt;
	color: black;
}

.sub_profile {
	width: 1260px;
	height: 300px;
	border-radius: 20px;
	border: 2px solid #2e3459;
}

.profile_info {
	width: 1280px;
	height: 150px;
	padding-top: 50px;
}

.profile_info>div {
	width: 50%;
	float: left;
}

.profile_info img {
	margin-left: 450px;
	width: 120px;
}

.info {
	width: 50%;
	position: relative;
	font-weight: bold;
	margin-top: 5px;
}

.info img {
	width: 25px;
	margin-left: 0;
}

.info span {
	font-size: 18pt;
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

.follow_btn_area {
	width: 1100px;
	height: 90px;
	text-align: center;
	padding-top: 30px;
	border-top: 1px solid #ccc;
	margin: auto;
}

.follow_btn_area input {
	padding: 10px 30px 10px 30px;
	border-radius: 50px;
	font-size: 12pt;
	font-weight: bold;
	color: #2e3459;
	background-color: white;
	border: 2px solid #2e3459;
	box-shadow: rgba(0, 0, 0, 0.09) 0 6px 9px 0;
	cursor: pointer;
	border: 2px solid #2e3459;
}

.follow_btn_area input:hover {
	background-color: #2e3459;
	color: white;
}

.post_bottom {
	width: 1280px;
	height: 350px;
	margin-top: 40px;
	font-size: 12pt;
	color: black;
}

.btn_list {
	display:none;
	width: 1280px;
	height: 70px;
	text-align: center;
}

.btn_list input {
	display: inline-block;
}

.edit_btn, .del_btn {
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

.reply_edit_btn {
	margin: 0;
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

.edit_btn {
	margin-right: 60px;
}

.edit_btn:hover, .reply_edit_btn:hover {
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

.reaction {
	width: 1280px;
	height: 100px;
	border-top: 1px solid #ccc;
	padding-top: 50px;
}

.reaction ul {
	text-align: center;
	padding: 0;
}

.reaction ul li {
	list-style: none;
	display: inline-block;
	color: #2e3459;
	font-size: 12pt;
	font-weight: bold;
	text-decoration: none;
	cursor: pointer;
}

.reaction ul li:hover img {
	background-color: #f37321;
}

.reaction ul li:nth-child(1) {
	margin-right: 60px;
}

.reaction img {
	height: 39px;
	background-color: #2e3459;
	border-radius: 100px;
	padding: 5px;
}

.sidebar {
	display: inline-block;
	overflow-y: scroll;
	-ms-overflow-style: none;
	position: absolute;
	width: 280px;
	height: 1348px;
	box-shadow: rgba(0, 0, 0, 0.09) 0 6px 6px;
}

.sidebar::-webkit-scrollbar {
	display: none !important;
}

.sidebar .journal_nav:nth-child(1) {
	background-color: #ffd666;
}

.journal_nav {
	width: 100%;
	display: inline-block;
	position: relative;
	height: 70px;
	border-bottom: 1px solid #ccc;
	cursor: pointer;
}

.idx {
	width: 30px;
	height: 50px;
	font-size: 10pt;
	color: black;
	margin-top: 10px;
	display: inline-block;
	position: relative;
	line-height: 50px;
	text-align: center;
}

.sidebar div span {
	width: 235px;
	height: 100%;
	position: absolute;
	margin-top: 10px;
	font-size: 10pt;
	color: black;
	display: inline-block;
}

.cmt_area {
	width: 1280px;
	height: 100%;
}

.cmt_top {
	width: 1280px;
	height: 30px;
	font-size: 12pt;
	font-weight: bold;
	color: black;
	border-bottom: 1px solid #ccc;
}

.cmt_top span:nth-child(2) {
	color: orange;
}

.cmt_bottom {
	width: 1280px;
	height: 150px;
}

.cmt_bottom textarea {
	width: 1260px;
	padding: 5px;
	resize: none;
}

.cmt_contents_right .cmt_bottom textarea, reply {
	width: 1140px;
	padding: 5px;
	resize: none;
	height: 60px;
}

.cmt_contents_right>span {
	cursor: auto;
}

.reply {
	height: 85px;
}

.cmt_bottom input {
	float: right;
	margin-top: 10px;
	margin-right: 30px;
}

.cmt_list {
	width: 100%;
	height: 100%;
	margin-top: 40px;
}

.cmt_list>div:last-child {
	margin-bottom: 30px;
}

.cmt_contents {
	width: 1260px;
	height: 130px;
	margin-top: 20px;
	border-bottom: 1px solid #ccc;
	padding-bottom: 10px;
}

.cmt_cmt_contents {
	width: 1220px;
	height: 130px;
	padding: 20px 0 0 40px;
	border-bottom: 1px solid #ccc;
	background-color: #f5f2f0;
}

.cmt_cmt_contents>div>div {
	width: 1150px;
}

.cmt_contents_left {
	display: inline-block;
	width: 50px;
	height: 150px;
	padding-left: 10px;
}

.cmt_contents_left img {
	width: 50px;
	height: 50px;
}

.cmt_contents_right {
	display: inline-block;
	position: absolute;
	width: 1190px;
	height: auto;
	overflow: hidden;
	padding: 0 10px;
	font-size: 10pt;
	color: black;
}

.cmt_txt {
	overflow:hidden;
	height:auto;
}


.cmt_contents_right span {
	height: auto;
	cursor: pointer;
	line-height: 30px;
}

.cmt_box span:nth-child(2n) {
	float: right;
	margin-right: 10px;
}

.cmt_contents_right span img {
	width: 20px;
	height: 20px;
}

.cmt_box span:hover, .title_right:hover {
	color: #f37321;
}

.cmt_date {
	float: right;
}

.cmt_cmt_date {
	float: right;
	margin-right: 50px;
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

.popup {
	display:none;
	width: 600px;
	height: 470px;
	background-color: #fcfcfc;
	box-shadow: rgba(0, 0, 0, 0.09) 0 6px 9px 0;
	position: fixed;
	top: calc(50% - 250px);
	left: calc(50% - 300px);
	z-index: 500;
	font-size: 12pt;
	border-radius: 10px;
	font-size: 0px;
	border: 0px;
}

.popup_contents_txt {
	font-size: 11pt;
	font-weight: bold;
	width: 540px;
	height: 390px;
	margin: 30px auto 0 auto;
}

.popup_contents_txt>div>span {
	margin-top: 12px;
}

.popup_contents_txt div:first-child span {
	float: right;
	font-size: 10pt;
}

.popup_contents_txt>div:first-child {
	font-size: 18pt;
	padding-bottom: 7px;
	border-bottom: 2px solid #f37321;
}

.popup_contents_txt>div:first-child {
	font-size: 18pt;
	padding-bottom: 7px;
	border-bottom: 2px solid #f37321;
}

.report_title {
	color: black;
	margin-top: 10px;
}

.report_title span {
	line-height: 15pt;
	font-size: 12pt;
	font-weight: bold;
	line-height: 20pt;
}

.report_title span:nth-child(2n-1) {
	color: #f37321;
}

.radio_title {
	margin-top: 30px;
}

.radio_title p {
	color: black;
	font-size: 10pt;
	font-weight: normal;
	margin-top: 5px;
	padding-left: 5px;
}

.report_radio {
	margin: 15px 0;
	background-color: #cccccc33;
	border-radius: 20px;
	padding: 15px 0;
}

.report_radio_box {
	padding: 0 10px 5px 10px;
	margin: 0 20px;
}

input[type='radio'], input[type='radio']:checked {
	appearance: none;
	width: 0.8rem;
	height: 0.8rem;
	border-radius: 100%;
	margin-right: 0.1rem;
}

input[type="radio"] {
	background-color: white;
	border: 2px solid #f37321;
}

input[type="radio"]:checked {
	background-color: #f37321;
}

.popup_contents_txt div:first-child  span {
	float: right;
	font-size: 10pt;
}

.pop_memo {
	resize: none;
	margin-top: 10px;
	width: 530px;
}

.popup_btn_list span {
	text-decoration: none;
	display: inline-block;
	text-align: center;
	width: 270px;
	height: 30px;
	padding: 10px 15px 10px 15px;
	font-size: 12pt;
	color: #f37321;
	font-weight: bold;
	line-height: 30px;
}

.popup_btn_list span:first-child {
	border-radius: 0 0 0 10px;
}

.popup_btn_list span:last-child {
	border-radius: 0 0 10px 0;
}

.popup_btn_list span:hover, .alert_btn_list span:hover, .alert_btn_list2 span:hover
	{
	background-color: #f37321;
	color: white;
}

.asterisk {
	color: red;
	font-weight: bold;
	margin-right: 5px;
	padding-top: 2px;
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
</style>
<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js" /></script>
<script type="text/javascript">
$(document).ready(function(){
	$(".report_btn").on("click", function(){
		popup();
	}); // report_btn click end

});

function popup() {
	var popup = document.getElementById("popup");
	var bg = document.getElementByClass("bg");
	
	console.log(popup.style.display);
	
	if(popup.style.display == "none") { 
		popup.style.display = ""; 
		bg.style.display = "";
	} else {
		popup.style.display = "none";
		bg.style.display = "none";
	}
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
						<a href="#"><img alt="로고" src="logo.png" class="logo_photo"></a>
						<div class="site_name">우리들의 여행일지</div>
					</div>
					<div class="btns">
						<!-- 밑에 logins와 연동 -->
						<ul>
							<li><img alt="bell" src="bell.png" class="bell_icon">
								<div class="timeline">
									<table border="1">
										<colgroup>
											<col width="70px">
											<col width="331.6px">
										</colgroup>
										<tr>
											<th rowspan="2"><img alt="프로필" src="profile.png"></th>
											<th>[여행일지]오늘도....에 <span>홍길동님</span>이 댓글을 다셨습니다
											</th>
										</tr>
										<tr>
											<th>2시간전 (오후)9:17분</th>
										</tr>
										<tr>
											<th rowspan="2"><img alt="프로필" src="profile.png"></th>
											<th>[여행일지]이 오늘도.... 에 <span>해리포터님</span>이 댓글을 다셨습니다
											</th>
										</tr>
										<tr>
											<th>3시간전 (오후)8:54분</th>
										</tr>
										<tr>
											<th rowspan="2"><img alt="프로필" src="profile.png"></th>
											<th>[여행일지]오늘도....에 <span>말포이님</span>이 댓글을 다셨습니다
											</th>
										</tr>
										<tr>
											<th>3시간전 (오후)8:49분</th>
										</tr>
										<tr>
											<th rowspan="2"><img alt="프로필" src="profile.png"></th>
											<th><span>사우론님</span>이회원님을 팔로우 하셨습니다</th>
										</tr>
										<tr>
											<th>3시간전 (오후)8:45분</th>
										</tr>
										<tfoot>
											<tr>
												<th colspan="2">...더보기</th>
											</tr>
										</tfoot>
									</table>
								</div></li>
							<li><img alt="bookmark" src="bmk.png"></li>
							<li><img alt="프로필" src="profile.png">
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
					<li>여행게시판</li>
					<li>자유게시판</li>
					<li>여행작가</li>
					<li>고객센터</li>
					<li>내부관리자</li>
				</ul>
			</nav>
			<img alt="search" src="search.png" class="search_icon" /> <input
				type="text" class="search" placeholder="검색"> <select
				class="filter">
				<option value="0">통합검색</option>
				<option value="1">여행일지</option>
				<option value="2">자유게시판</option>
				<option value="3">닉네임</option>
			</select>
		</div>
		<div id="path_info">
			<span><img alt="메인페이지" src="home.png" class="home_icon">
			</span> &nbsp;&nbsp;>&nbsp;&nbsp; <span>여행일지
			</span> &nbsp;>&nbsp;&nbsp;여행일지 제목
		</div>
		<div class="title_area">
			<div class="title_left">
				<strong>여행일지 제목</strong><br /> <br /> <br /> <span>작성일</span> <span>2021-05-24</span>
				<span>조회</span><span>56</span> <span>좋아요</span><span>31</span> <span>댓글</span><span>2</span>
			</div>
			<div class="title_right">
				<span class="report_btn">신고하기</span>
			</div>
		</div>
		<div class="container_wrap">
			<div id="container">
				<div class="schedule">
					<nav class="date_nav">
						<span class="left_arrow"><img alt="왼쪽" src="left_arrow.png"></span>
							<ul>
								<li>DAY 1</li>
								<li>DAY 2</li>
								<li>DAY 3</li>
								<li>DAY 4</li>
								<li>DAY 5</li>
							</ul>
						<span><img alt="오른쪽" src="right_arrow.png"></span>
					</nav>
				</div>
				<div class="map_wrap">
					<img alt="지도" src="path.png">
				</div>
				<div class="content_area">
					<div class="img_nav">
						<a>&#60;</a> <a>&#62;</a>
					</div>
					<span>1/19</span>
					<div class="img_slide">
						<span class="left_arrow"><img alt="왼쪽" src="left_arrow.png"></span>
							<img alt="사진" src="a1.jpg">
						<span class="right_arrow"><img alt="오른쪽" src="right_arrow.png"></span>
					</div>
					<div class="txt_area">
						<p>
							속에 든 칼이다 청춘의 끓는 피가 아니더면 인간이 얼마나 쓸쓸하랴? 얼음에 싸인 만물은 얼음이 있을 뿐이다<br />
							<br /> <br /> 꽃 피고 새 우는 봄날의 천지는 얼마나 기쁘며 얼마나 아름다우냐? 이것을 얼음 속에서
							불러 내는 것이 따뜻한 봄바람이다 <br /> 인생에 따뜻한 봄바람을 불어 보내는 것은 청춘의 끓는 피다 청춘의
							피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의<br /> <br />
							<br /> 만천하의 대중을 품에 안고 그들에게 밝은 길을 찾아 주며 그들을 행복스럽고 평화스러운 곳으로
							인도하겠다는 커다란 이상을 품었기 때문이다 <br /> <br /> <br /> 그러므로 그들은 길지 아니한
							목숨을 사는가 싶이 살았으며 그들의 그림자는 꽃 피고 새 우는 봄날의 천지는 얼마나 기쁘며 얼마나 아름다우냐? 이것을
							얼음 속에서 불러 내는 것이 따뜻한 봄바람이다 <br /> 인생에 따뜻한 봄바람을 불어 보내는 것은 청춘의 끓는
							피다 청춘의 피가 뜨거운지라 인간의 동산에는 사랑의 풀이 돋고 이상의 꽃이 피고 희망의 놀이 뜨고 열락의
						</p>
					</div>
				</div>
				<div class="category_area">
					<div class="category_label">카테고리</div>
					<div class="category_txt">버스여행</div>
				</div>
				<div class="hash_area">
					<div class="hash_label">해시태그</div>
					<div class="hash_txt">
						<ul>
							<li> #해시태그 1</li>
							<li> #해시태그 2</li>
							<li> #해시태그 3</li>
							<li> #해시태그 4</li>
							<li> #해시태그 5</li>
							<li> #해시태그 6</li>
							<li> #해시태그 7</li>
							<li> #해시태그 8</li>
							<li> #해시태그 9</li>
							<li> #해시태그 10</li>
							<li> #해시태그 11</li>
							<li> #해시태그 12</li>
						</ul>
					</div>
				</div>
				<div class="sub_profile">
					<div class="profile_info">
						<div>
							<img alt="profile" src="profile2.png" class="profile_img">
						</div>
						<div class="info">
							<span>닉네임</span>
							<div class="grade">
								<img alt="icon" src="grade.png"> <span>여행작가</span>
							</div>
							<div class="cnt">
								<span>총 게시글 100</span> <span>총 댓글 100</span>
							</div>
						</div>
					</div>
					<div class="follow_btn_area">
						<input type="button"
							value="여 행 일 지&nbsp;&nbsp;&nbsp;&nbsp;모 아 보 기 &nbsp;&nbsp;&nbsp;&nbsp;&#62;" />
					</div>
				</div>
			</div>
			<div class="sidebar">
				<div class="journal_nav">
					<div class="idx">1</div>
					<span>
						<p>한 줄 메모.....</p>
					</span>
				</div>
				<div class="journal_nav">
					<div class="idx">2</div>
					<span>
						<p>주며 그들을 행복스럽고 평화스러운 곳으로</p>
					</span>
				</div>
				<div class="journal_nav">
					<div class="idx">3</div>
					<span>
						<p>인도하겠다는 커다란 이상을 품었기 때문</p>
					</span>
				</div>
				<div class="journal_nav">
					<div class="idx">4</div>
					<span>
						<p>안고 그들에게 밝은 길을 찾아 주</p>
					</span>
				</div>
				<div class="journal_nav">
					<div class="idx">5</div>
					<span>
						<p>주며 그들을 행복스럽고 평화스러운 곳으로</p>
					</span>
				</div>
				<div class="journal_nav">
					<div class="idx">6</div>
					<span>
						<p>인도하겠다는 커다란 이상을 품었기 때문</p>
					</span>
				</div>
				<div class="journal_nav">
					<div class="idx">7</div>
					<span>
						<p>안고 그들에게 밝은 길을 찾아 주</p>
					</span>
				</div>
				<div class="journal_nav">
					<div class="idx">8</div>
					<span>
						<p>주며 그들을 행복스럽고 평화스러운 곳으로</p>
					</span>
				</div>
				<div class="journal_nav">
					<div class="idx">9</div>
					<span>
						<p>인도하겠다는 커다란 이상을 품었기 때문</p>
					</span>
				</div>
				<div class="journal_nav">
					<div class="idx">10</div>
					<span>
						<p>안고 그들에게 밝은 길을 찾아 주</p>
					</span>
				</div>
				<div class="journal_nav">
					<div class="idx">11</div>
					<span>
						<p>주며 그들을 행복스럽고 평화스러운 곳으로</p>
					</span>
				</div>
				<div class="journal_nav">
					<div class="idx">12</div>
					<span>
						<p>인도하겠다는 커다란 이상을 품었기 때문</p>
					</span>
				</div>
				<div class="journal_nav">
					<div class="idx">13</div>
					<span>
						<p>안고 그들에게 밝은 길을 찾아 주</p>
					</span>
				</div>
				<div class="journal_nav">
					<div class="idx">14</div>
					<span>
						<p>주며 그들을 행복스럽고 평화스러운 곳으로</p>
					</span>
				</div>
			</div>
			<div class="post_bottom">
				<div class="btn_list">
					<input type="button" class="edit_btn" value="수  정" /> <input
						type="button" class="del_btn" value="삭  제" />
				</div>
				<div class="post_page">
					<div class="post_label">이전글</div>
					<div class="post_label_title">이전 여행일지 제목</div>
				</div>
				<div class="post_page">
					<div class="post_label">다음글</div>
					<div class="post_label_title">다음 여행일지 제목</div>
				</div>
				<div class="reaction">
					<ul>
						<li><img alt="좋아요" src="like.png"><br />좋아요</li>
						<li><img alt="북마크" src="bmrk.png"><br />북마크</li>
					</ul>
				</div>
			</div>
			<div class="cmt_area">
				<div class="cmt_top">
					<span>댓글 </span><span>2</span><span> 개</span>
				</div>
				<div class="cmt_bottom">
					<textarea rows="8" cols="150" placeholder="댓글을 입력하십시오"></textarea>
					<input type="button" class="edit_btn" value="등  록" />
				</div>
				<div class="cmt_list">
					<div class="cmt_contents">
						<div class="cmt_contents_left">
							<img alt="프로필" src="profile2.png">
						</div>
						<div class="cmt_contents_right">
							<strong>닉네임</strong><span class="cmt_date">2021-05-25</span><br /> <span><img
								alt="등급" src="grade.png"> </span><span>여행작가</span>
							<div class="cmt_txt">
								<p>청춘을 ! 그들의 몸이 얼마나 튼튼하며 그들의 피부가 얼마나 생생하며 그들의 눈에 무엇이 타오르고
									있는가</p>
							</div>
							<div class="cmt_box">
								<span>답글</span>
								<span>삭제</span>
								<span class="report_btn">신고</span>
								<span>수정</span>
								 
							</div>
						</div>
					</div>
					<div class="cmt_contents">
						<div class="cmt_contents_left">
							<img alt="프로필" src="profile2.png">
						</div>
						<div class="cmt_contents_right">
							<strong>닉네임</strong><span class="cmt_date">2021-05-25</span><br /> <span><img
								alt="등급" src="grade.png"> </span><span>여행작가</span>
							<div class="cmt_txt">
								<p>청춘을 ! 그들의 몸이 얼마나 튼튼하며 그들의 피부가 얼마나 생생하며 그들의 눈에 무엇이 타오르고
									있는가</p>
							</div>
							<div class="cmt_box">
								<span>답글</span>
								<span>삭제</span>
								<span class="report_btn">신고</span>
								<span>수정</span>
							</div>
						</div>
					</div>
					<div class="cmt_cmt_contents">
						<div class="cmt_contents_left">
							<img alt="프로필" src="profile2.png">
						</div>
						<div class="cmt_contents_right">
							<strong>닉네임</strong><span class="cmt_cmt_date">2021-05-25</span><br /> <span><img
								alt="등급" src="grade.png"> </span><span>여행작가</span>
							<div class="cmt_txt">
								<p>청춘을 ! 그들의 몸이 얼마나 튼튼하며 그들의 피부가 얼마나 생생하며 그들의 눈에 무엇이 타오르고
									있는가</p>
							</div>
							<div class="cmt_box">
								<span>답글</span>
								<span>삭제</span>
								<span class="report_btn">신고</span>
								<span>수정</span>
							</div>
						</div>
					</div>
					<div class="cmt_cmt_contents">
						<div class="cmt_contents_right">
							<div class="cmt_bottom">
								<textarea class="reply"  rows="8" cols="150" placeholder="댓글을 입력하십시오"></textarea>
								<br/><input type="button" class="reply_edit_btn" value="등  록" />
							</div>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	</div>
	<div id="footer">
		<p>
			POPJOURNEY<br /> GDJ-35기 LEE Eun-Soo, LEE In-Bok, CHOI Jeong-Min<br />
			Copyright© POPJOURNEY. All Rights Reserved.
		</p>
	</div>
	<div class="popup">
		<div class="popup_contents_txt">
			<div>
				신고하기<span>필수 입력 사항 </span><span class= "asterisk">&#42;</span>
			</div>
			<div class= "report_title">
				<span>신고글</span> <span>글 제목(*댓글의 경우 '댓글'표기)</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>작성자</span> <span>닉네임</span>
			</div>
			<div class="radio_title">
				<span>신고 사유</span> <span class= "asterisk">&#42;</span>
				<p>여러 사유에 해당하는 경우, 대표적인 사유 1개를 선택하십시오.</p>
			</div>
			<div class="report_radio">
				<div class="report_radio_box">
					<input type="radio" id="report_radio1" name="report_reason"><label for="report_radio1">욕설 </label>
				</div>
				<div class="report_radio_box">
					<input type="radio" id="report_radio2" name="report_reason"><label for="report_radio2">비방글</label>
				</div>
			    <div class="report_radio_box">
				    <input type="radio" id="report_radio3" name="report_reason"><label for="report_radio3">부적절한 이유</label>
			    </div>
			</div>
			<div>
				상세 내용 <span class= "asterisk">&#42;</span><br /> <textarea class="pop_memo" rows="3" cols="73"  placeholder="자세하게 적어주십시오" ></textarea>
			</div>
		</div>
		<div class="popup_btn_list">
			<span>확 인</span> <span>취 소</span>
		</div>
	</div>
	<div class="bg"></div>
</body>
</html>