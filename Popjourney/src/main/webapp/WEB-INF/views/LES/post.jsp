<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>게시글 상세보기</title>
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
	background-color: #f9f9f9;
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
	position: relative; vertical-align : top;
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
   height: 40px;
   width: 40px;
   margin-right: 20px;
   margin-top: 15px;
   cursor: pointer;
   border-radius: 50%;
}
#notificationPhoto {
   margin-left: 200px;
}
#cancelImg{
	margin-top: 10px;
	width: 30px;
	margin-left: 135px;
	cursor: pointer;
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
	height: 100%;
	margin: 0 auto;
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
	height: 35px;
	font-size: 10pt;
	padding-top: 10px;
	padding-left: 20px;
}


.home_icon {
	position: relative;
	top: 3px;
	width: 20px;
	height: 20px;
}

.title_area {
	width: 1280px;
	height: 110px;
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
	margin-top: 75px;
	font-weight: bold;
	margin-right: 10px;
	font-size: 12pt;
}

.report_btn {
	cursor: pointer;
}

.text_area {
	width: 1280px;
	height: 100%;
	margin: 0 auto;
	color: black;
	font-size: 12pt;
	padding: 20px;
}
p {
	padding-right: 40px;
}
.category_area {
	width: 1280px;
	height: 50px;
	line-height: 50px;
	font-size: 12pt;
	border-radius: 10px;
	background-color: #ffd666;
	margin-bottom: 10px;
}

.category_label {
	display: inline-block;
	width: 80px;
	height: 50px;
	font-weight: bold;
	padding-left: 10px;
	color: black;
	border-right: 1px solid #fcba03;
}

.category_txt {
	display: inline-block;
	position: absolute;
	width: 1200px;
	height: 50px;
	padding-left: 40px;
	color: black;
}

.sub_profile {
	width: 1280px;
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
	border-radius: 50%;
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
	height: 100%;
	margin-top: 30px;
	font-size: 12pt;
	color: black;
}

.btn_list {
	display: block;
	width: 1280px;
	height: 70px;
	text-align: center;
}

.btn_list input {
	display: inline-block;
}

.edit_btn, .del_btn, .reset_btn{
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
#cmtEditBtn, #cmtCancelBtn, #replyEditBtn {
	display: none;
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

.del_btn:hover, .reset_btn:hover{
	border: 2px solid #F1404B;
	background-color: #F1404B;
	color: white;
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


.reaction img {
	height: 39px;
	background-color: #2e3459;
	border-radius: 100px;
	padding: 5px;
}

.cmt_area {
	width: 1280px;
	height: 100%;
	margin-top: 50px;
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
	border-radius: 50%;
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
	display:inline-block;
	width: 600px;
	height: 515px;
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
	height: 435px;
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
	cursor: pointer;
}

input[type="radio"] {
	background-color: white;
	border: 2px solid #f37321;
}

input[type="radio"] + label {
	cursor: pointer;
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
	cursor: pointer;
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
    display: inline-block; 
    width: 100%;
    height: 100%;
    top: 0px;
    background-color: #000000;
    z-index: 400;
    opacity: 0.2;
}
.popup1 {
   display: inline-block;
   width: 300px;
   height: 150px;
   background-color: #fcfcfc;
   box-shadow: rgba(0, 0, 0, 0.09) 0 6px 9px 0;
   position: fixed;
   top: calc(50% - 75px); 
   left: calc(50% - 150px); 
   z-index: 500;
   border-radius: 10px;
   font-size: 0px;
   border: 0px;
}
.popup1_entity_txt {
   font-size: 12pt;
   font-weight: bold;
   text-align: center;
   line-height: 50px;
   width: 265px;
   height:40px;
   margin: 30px auto 30px auto;
}
#yesBtn, .submit_btn, .close_btn{
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
   cursor: pointer;
}
#yesBtn:hover, .submit_btn:hover, .close_btn:hover {
   background-color: #f37321;
   color: white;
}
.btn1_list a{
   text-decoration: none;
   display:inline-block;
   text-align:center;
   width: 120px;
   height:30px;
   padding: 10px 15px 10px 15px;
   font-size: 12pt;
   color: #f37321;
   font-weight: bold;
   line-height: 30px;
}
.btn1_list a:first-child {
   border-radius: 0 0 0 10px; 
}
.btn1_list a:last-child {
   border-radius: 0 0 10px 0; 
}
.btn1_list a:hover {
   background-color: #f37321;
   color: white;
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
.add_cmt_cmt {
	cursor: pointer;
}
.report_btn {
	cursor: pointer;
}
.cmt_edit_btn {
	cursor: pointer;
}
.cmt_delete_btn {
	cursor: pointer;
}
.cmt_cmt_edit_btn {
	cursor: pointer;
}
.cmt_cmt_delete_btn {
	cursor: pointer;
}

</style>
<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	reloadList();
	
	if("${sMEM_NO}" == "${data.MEM_NO}") {
		$(".btns").css("display","inline-block");
		$(".logins").css("display","none");
		$(".btn_list").css("display","inline-block");
	} 
	if("${sMEM_NO}" == ""){
		$(".reaction").css("display","none");
	}
	if("${sMEM_NO}" != "1"){
		$("#admin").css("display","none");
	} 
	
	if("${sMEM_NO}" != "")
	{
		$(".logins").css("display", "none");
		$(".btns").css("display", "inline-block");
		//로그인 상태에 따라서 우측 상단 제어
		
		var path = ""; //사진경로 담아줄 변수
		
		if("${sPHOTO_PATH}" != "")
		{
			path = "resources/upload/" + "${sPHOTO_PATH}";
			
			$("#profilePhoto").attr("src", path);
		}
		else
		{
			path = "./resources/images/profile.png";

			$("#profilePhoto").attr("src", path);
		}//if ~ else end
		//프로필 사진이 DB에 있는경우 저장된 사진으로, 없는 경우 기본 사진으로
		
		if("${sGRADE_NO}" == "0")
		{
			$("#admin").show();
		}//등급에 따라서 내부 관리자 보이기
		
		var params = $("#memForm").serialize();
		
		$.ajax({
			url: "notifications",
			data: params,
			dataType: "json",
			type: "post",
			success:function(result)
			{
				if(result.msg == "success")
				{
					makeNotification(result.notification);
				}
				else
				{
					popupText = "오류가 발생했습니다.";
					commonPopup(popupText);
				}
			}, //success end
			error: function(request, status, error) {
				console.log(error);
			} // error end
		}); //ajax end 
	}//if end -> 로그인 상태여부에 따른 처리
	
	var params = $("#tempForm").serialize();
	
	$.ajax({
		url: "checkPoints",
		data: params,
		dataType: "json",
		type: "post",
		success:function(result)
		{
			if(result.msg == "success")
			{
				var html = "";
				
				html += "<span>총 게시글  " + result.data.JOURNAL_CNT + "</span> <span>팔로워 " + result.data.FOLLOWER_CNT + "</span>";
				
				$(".cnt").html(html);
			}
			else
			{
				popupText = "오류가 발생했습니다.";
				commonPopup(popupText);
			}
		}, //success end
		error: function(request, status, error) {
			console.log(error);
		} // error end
	}); //ajax end 
	
	likeLoad();
	//상단메뉴 (여행게시판, 자유게시판, 여행작가,고객센터, 내부관리자) 페이지 이동
	$(".logo_photo").on("click", function() {
  		location.href = "main";
  	});
	$("#journalBoard").on("click", function() {
  		location.href = "journalBoard";
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
	$(".report_btn").on("click", function(){
		if("${sMEM_NO}" == "")
		{
			alert("로그인이 필요한 기능입니다.");
			return false;
		}
			
		reportPopup();
	}); 
	
	$(".container_wrap").on("click", ".report_btn", function(){
		if("${sMEM_NO}" == "")
		{
			alert("로그인이 필요한 기능입니다.");
			return false;
		}
			
		reportPopup();
	});

	$(".follow_btn_area").on("click", "input[type='button']", function(){
		if("${sMEM_NO}" != "${data.MEM_NO}") {
			$("#userNo").val($(this).attr($(this).attr("class")));
			$("#userForm").submit();
		} else {
			location.href = "myPage";
		}
	});
	
	$(".login_btn").on("click", function(){  //로그인 버튼 클릭
		if($.trim($("#inputID").val()) == "")
		{
			popupText = "아이디를 입력하세요.";
			commonPopup(popupText);
		}
		else if($.trim($("#inputPW").val()) == "")
		{
			popupText = "비밀번호를 입력하세요.";
			commonPopup(popupText);
		}
		else
		{
			var params = $("#loginForm").serialize();
			
			$.ajax({
				url: "logins",
				data: params,
				dataType: "json",
				type: "post",
				success:function(result)
				{
					if(result.msg == "failed")
					{
						popupText = "ID와 PW가 일치하지 않습니다.";
						commonPopup(popupText);
						$("#inputID").val("");
						$("#inputPW").val("");
					}
					else
					{
						location.reload();
					}
				}, //success end
				error: function(request, status, error) {
					console.log(error);
				} // error end
			}); //ajax end 
		}// if ~ else end
	}); //loginBtn click end
	$(".bnt_lists").on("click","#editBtn", function () {
		$("#goForm").attr("action","postUpdate");
		$("#goForm").submit();
	});
	//게시글 삭제
	$(".bnt_lists").on("click", ".del_btn", function () {
		if(confirm("삭제하시겠습니까?")){
			var params = $("#goForm").serialize();
			
			$.ajax({
				url:"postDeletes", 
				type: "post",
				dataType: "json",
				data : params,
				success: function(res){
					if(res.msg == "success"){
						location.href = "community";
					} else if (res.msg =="failed") {
						alert("삭제에 실패하였습니다.")
					} else {
						alert("삭제중 문제가 발생하였습니다.")
					}
				}, 
				error: function (request, status, error) {
					console.log(error);
				}
			});
		}
	});
	//좋아요 버튼
	$(".reaction").on("click","img", function(){
		var like = $(this).attr("like");
		var params = $("#likeForm").serialize();

		if(like == 0){ //좋아요 x : 좋아요 기능
			$.ajax({
				url:"postLikes", 
				type: "post",
				dataType: "json",
				data : params,
				success: function(res){
					if(res.msg == "success")
					{					
						likeReload();
					}
				}, //success end
				error: function (request, status, error) {
					console.log(error);
				}//error end
			});//ajax end
		} else if(like == 1) { //좋아요 o : 좋아요 취소기능
			$.ajax({
				url:"postLikeCancles", 
				type: "post",
				dataType: "json",
				data : params,
				success: function(res){
					if(res.msg == "success")
					{
						likeReload();
					}
				}, //success end
				error: function (request, status, error) {
					console.log(error);
				}//error end
			});//ajax end
		}
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
	
	$("#notification tbody").on("click", "span, tr, img", function(){
		if($(this).attr("class") == "notRead")
		{
			$("#NOTF_NO").val($(this).attr($(this).attr("class")));
	
		    var params = $("#notificationForm").serialize();
			
			$.ajax({
				url: "reads",
				data: params,
				dataType: "json",
				type: "post",
				success:function(result)
				{
				}, //success end
				error: function(request, status, error) {
					console.log(error);
				} // error end
			}); //ajax end  
		} //if end 알람 팝업에서 아이디, 글 제목, 프로필 사진 눌렸을 경우에 읽음표시
		
		if($(this).attr("class") == "user")
		{
			$("#userNo").val($(this).attr($(this).attr("class")));
			$("#userForm").submit();
		}
		else if($(this).attr("class") == "journal")
		{
			$("#journalNo").val($(this).attr($(this).attr("class")));
			$("#journalForm").submit();
		}
		else if($(this).attr("class") == "post")
		{
			$("#postNo").val($(this).attr($(this).attr("class")));
			$("#postForm1").submit();
		}//if ~ else end 클릭된 것에 따라서 해당 프로필 or 글로 이동
	}); //notification tbody span tr click end
	
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
	//프로필 사진 클릭 시 하위메뉴 나왔다 사라졌다 & 알람 팝업은 안보이도록
	
	$("#notificationPhoto").on("click", function(){
		$("#profileSlidedown").css("display", "none");
		if($("#notification").css("display") == "block")
		{
			$("#notification").css("display", "none");
		}
		else
		{
			$("#notification").css("display", "inline-block");
		}
	}); //notificationPhoto click end
	
	$("#myPage").on("click", function(){
  		location.href = "myPage";
	}); //find click endmyPage
  	
  	$("#timeline").on("click", function(){
  		location.href = "timeline";
  	}); //timeline click end
  	
  	$("#editProfile").on("click", function(){
  		location.href = "editProfile";
  	}); //editProfile click end
  	
	$("#editInfo").on("click", function(){
		location.href = "editInfo";
  	}); //editInfo click end
  	
	$("#join").on("click", function(){  //회원가입 버튼 클릭
		location.href="terms";
	}); // join click end
	
	$("#find").on("click", function(){
		findBtnPopup();
	}); //find click end
	
	$("#notificationMore").on("click", function(){
		location.href="notification";
	}); //notificationMore click end
	
	$("#bookmarkPhoto").on("click", function(){
		location.href = "myPageBMK";
	}); //bookmarkPhoto click end
  	
  	$("#logoutBtn").on("click", function(){
		$.ajax({
			url: "logouts",
			type: "post",
			dataType: "json",
			success: function(result) {
				location.reload();
			}, //success end
			error: function(request, status, error) {
				console.log(error);
			} //error end
		}); //ajax end
  	}); //logoutBtn click end
  	
  	
 	// 페이징 처리
	$(".paging").on("click", "div", function() {
		$($("#pages").val($(this).attr("pages")));
		reloadList();
	});
  	
	// 댓글작성
	$("#addBtn").on("click", function() {
		if($("#loginUserNo").val() == "") {
			alert("로그인 후 이용 바랍니다.");
			$("#cmtContents").val("");
		} else {
			if($.trim($("#cmtContents").val()) == "") {
				alert("내용을 넣어주세요.");
				$("#cmtContents").focus();
			} else {
				$("#getCmtContents").val($("#cmtContents").val());
				var params = $("#goForm").serialize();
				
				$.ajax({
					url: "postCmtAdds",
					type: "post",
					dataType: "json",
					data: params,
					success: function(res) {
						$("#cmtList").val("");
						$("#cmtContents").val("");
						reloadList();
					},
					error: function(request, status, error) {
						console.log(error);
					}
				});
			}
		}
	});
	
	// 자유게시판 작성자 번호 가져오기
	$("#postWriteMemNo").val($(".title_area").attr("postMno"));
	
	//댓글 수정 클릭 시
	$("#cmtList").on("click", ".cmt_edit_btn", function() {
		$("#cmtEditContents").remove();
		$("#cmtCmtContents").remove();
		$("#cmtNo").val($(this).parent().parent().parent().parent().attr("cmtno"));
		var cmtNo = $("#cmtNo").val();
		var html = "";
		
		html += "<div class=\"cmt_cmt_contents\" id=\"cmtEditContents\">";
		html += "	<div class=\"cmt_contents_right\">";
		html += "		<div class=\"cmt_bottom\">";
		html += "			<textarea id=\"editCmt\" class=\"reply\"  rows=\"8\" cols=\"150\" placeholder=\"댓글을 입력하십시오\"></textarea>";
		html += "			<br/><input type=\"button\" class=\"reply_edit_btn\" id=\"editBtn\" value=\"수  정\" />";
		html += "		</div>";
		html += "	</div>";
		html += "</div>";
	
		$(".cmt_content_list[cmtno=" + cmtNo + "]").append(html);
		
	});
	// 댓글 수정 후 수정버튼 클릭 시
	$("#cmtList").on("click", "#editBtn", function() {
		if($.trim($("#editCmt").val()) == "") {
			alert("내용을 넣어주세요.");
			$("#editCmt").focus();
		} else {
			$("#getCmtContents").val($("#editCmt").val());
			var params = $("#goForm").serialize();
			
			$.ajax({
				url: "postCmtEdits",
				type: "post",
				dataType: "json",
				data: params,
				success: function(res) {
					$("#cmtEditContents").remove();
					reloadList();
				},
				error: function(request, status, error) {
					console.log(error);
				}
			});
		}
	});
	//대댓글 수정 클릭 시
	$("#cmtList").on("click", ".cmt_cmt_edit_btn", function() {
		$("#cmtEditContents").remove();
		$("#cmtCmtContents").remove();
		$("#cmtNo").val($(this).parent().parent().parent().parent().attr("cmtcmtnos"));
		var cmtNo = $("#cmtNo").val();
		var html = "";
		
		html += "<div class=\"cmt_cmt_contents\" id=\"cmtEditContents\">";
		html += "	<div class=\"cmt_contents_right\">";
		html += "		<div class=\"cmt_bottom\">";
		html += "			<textarea id=\"editCmt\" class=\"reply\"  rows=\"8\" cols=\"150\" placeholder=\"댓글을 입력하십시오\"></textarea>";
		html += "			<br/><input type=\"button\" class=\"reply_edit_btn\" id=\"editBtn\" value=\"수  정\" />";
		html += "		</div>";
		html += "	</div>";
		html += "</div>";
	
		$(".cmt_cmt_contents_list[cmtcmtnos=" + cmtNo + "]").append(html);
		
	});
	// 대댓글 수정 후 수정버튼 클릭 시
	$("#cmtList").on("click", "#editBtn", function() {
		if($.trim($("#editCmt").val()) == "") {
			alert("내용을 넣어주세요.");
			$("#editCmt").focus();
		} else {
			$("#getCmtContents").val($("#editCmt").val());
			var params = $("#goForm").serialize();
			
			$.ajax({
				url: "postCmtEdits",
				type: "post",
				dataType: "json",
				data: params,
				success: function(res) {
					$("#cmtEditContents").remove();
					reloadList();
				},
				error: function(request, status, error) {
					console.log(error);
				}
			});
		}
	});
	//댓글 답글 클릭 시
	$("#cmtList").on("click", ".add_cmt_cmt", function() {
		if($("#memNo").val() != "") {
			// 여행게시판 댓글 작성자 번호 가져오기
			$("#cmtWriteMemNo").val($(this).parent().parent().parent().attr("cmtmemno"));

			$("#cmtEditContents").remove();
			$("#cmtCmtContents").remove();
			$("#cmtNo").val($(this).parent().parent().parent().parent().attr("cmtno"));
			var cmtNo = $("#cmtNo").val();
			var html = "";
			
			html += "<div class=\"cmt_cmt_contents\" id=\"cmtCmtContents\">";
			html += "	<div class=\"cmt_contents_right\">";
			html += "		<div class=\"cmt_bottom\">";
			html += "			<textarea id=\"addCmt\" class=\"reply\"  rows=\"8\" cols=\"150\" placeholder=\"댓글을 입력하십시오\"></textarea>";
			html += "			<br/><input type=\"button\" class=\"reply_edit_btn\" id=\"cmtAddBtn\" value=\"등  록\" />";
			html += "		</div>";
			html += "	</div>";
			html += "</div>";
		
			$(".cmt_content_list[cmtno=" + cmtNo + "]").append(html);
		} else {
			alert("로그인 후 이용해 주시기 바랍니다.");
		}
		
	});
	// 댓글 답글 클릭 후 등록 버튼 클릭 시
	$("#cmtList").on("click", "#cmtAddBtn", function() {
		if($.trim($("#addCmt").val()) == "") {
			alert("내용을 넣어주세요.");
			$("#addCmt").focus();
		} else {
			$("#getCmtContents").val($("#addCmt").val());
			var params = $("#goForm").serialize();
			
			$.ajax({
				url: "postCmtCmtAdds",
				type: "post",
				dataType: "json",
				data: params,
				success: function(res) {
					$("#cmtCmtContents").remove();
					reloadList();
				},
				error: function(request, status, error) {
					console.log(error);
				}
			});
		}
	});
	// 댓글 삭제버튼 클릭 시
	$("#cmtList").on("click", ".cmt_delete_btn", function() {
		$("#cmtWriteMemNo").val($(this).parent().parent().parent().parent().attr("cmtno"));
		$("#cmtNo").val($(this).parent().parent().parent().parent().attr("cmtno"));
		
		if(confirm("삭제하시겠습니까?")) {
			
			var params = $("#goForm").serialize();
			
			$.ajax({
				url: "postCmtDeletes",
				type: "post",
				dataType: "json",
				data: params,
				success: function(res) {
					if(res.msg == "success") {
						reloadList();
					} else if(res.msg == "failed") {
						alert("삭제에 실패하였습니다.");
					} else {
						alert("삭제중 문제가 발생하였습니다.");
					}
				},
				error: function(request, status, error) {
					console.log(error);
				}
			});
		}
	});
	
	// 대댓글 삭제버튼 클릭 시
	$("#cmtList").on("click", ".cmt_cmt_delete_btn", function() {
		$("#cmtWriteMemNo").val($(this).parent().parent().parent().attr("cmtcmtno"));
		if(confirm("삭제하시겠습니까?")) {
			
			var params = $("#goForm").serialize();
			
			$.ajax({
				url: "postCmtCmtDeletes",
				type: "post",
				dataType: "json",
				data: params,
				success: function(res) {
					if(res.msg == "success") {
						reloadList();
					} else if(res.msg == "failed") {
						alert("삭제에 실패하였습니다.");
					} else {
						alert("삭제중 문제가 발생하였습니다.");
					}
				},
				error: function(request, status, error) {
					console.log(error);
				}
			});
		}
	});
	
	if($("#MEM_NO").val() == $("#postMem").val() || $("#MEM_NO").val() == 1) {
		var html = "";
		
		html += "<div class=\"btn_list\">";
		html += "<input type=\"button\" id=\"editBtn\" class=\"edit_btn\" value=\"수  정\" />";
		html += "<input type=\"button\" class=\"del_btn\" value=\"삭  제\" />";
		html += "</div>";
		$(".bnt_lists").html(html);
	}
	
});// document ready end
//좋아요 첫화면 구성
function likeLoad() {
	if("${likeCheck.POST_NO}" !="") {//좋아요 o
		$(".reaction").children("ul").children("li").children("img").attr("like","1");
		$(".reaction").children("ul").children("li").children("img").css("background-color","#f37321");
		$(".likeText").css("color","#f37321");
		console.log("좋아요! 클릭");
	} else { //좋아요 x
		$(".reaction").children("ul").children("li").children("img").attr("like","0");
		$(".reaction").children("ul").children("li").children("img").css("background-color","#2e3459");
		$(".likeText").css("color","#2e3459");
		console.log("좋아요 xx");
	}
}
//좋아요 화면 재구성
function likeReload() {
	var img = document.getElementById("likeImg");
	var color = window.getComputedStyle(img).backgroundColor;
	
	if(color=="rgb(46, 52, 89)") {//남색 클릭: 좋아요 추가
		$(".reaction").children("ul").children("li").children("img").attr("like","1");
		$(".reaction").children("ul").children("li").children("img").css("background-color","#f37321");
		$(".likeText").css("color","#f37321");
		console.log("좋아요! 클릭");
	} else { //주황 클릭: 좋아요 취소 
		$(".reaction").children("ul").children("li").children("img").attr("like","0");
		$(".reaction").children("ul").children("li").children("img").css("background-color","#2e3459");
		$(".likeText").css("color","#2e3459");
		console.log("좋아요 xx");
	}
}	
//조회수
function hitCnt() {
	$.ajax({
		url:"postHits", 
		type: "post",
		dataType: "json",
		data : params,
		success: function(res){
			if(result.msg == "success")
			{
			}
		}, //success end
		error: function (request, status, error) {
			console.log(error);
		}//error end
	});//ajax end
}//likeStatus end

function resetVal() {
	$("#pages").val(1);
}


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
function reportPopup() {
		var html = "";

        html += "<div class=\"popup\">";
		html += "<div class=\"popup_contents_txt\">";
		html += "	<div>";
		html += "		신고하기<span>필수 입력 사항 </span><span class= \"asterisk\">&#42;</span>";
		html += "	</div>";
		html += "	<div class= \"report_title\">";
		html += "		<span>신고글</span> <span>글 제목(*댓글의 경우 '댓글'표기)</span>&nbsp;&nbsp;&nbsp;&nbsp;<span>작성자</span> <span>닉네임</span>";
		html += "	</div>";
		html += "	<div class=\"radio_title\">";
		html += "		<span>신고 사유</span> <span class= \"asterisk\">&#42;</span>";
		html += "		<p>여러 사유에 해당하는 경우, 대표적인 사유 1개를 선택하십시오.</p>";
		html += "	</div>";
		html += "	<div class=\"report_radio\">";
		html += "		<div class=\"report_radio_box\">";
		html += "			<input type=\"radio\" id=\"report_radio0\" value=\"0\"name=\"report_reason\"><label for=\"report_radio0\">욕설 </label>";
		html += "		</div>";
		html += "		<div class=\"report_radio_box\">";
		html += "			<input type=\"radio\" id=\"report_radio1\" value=\"1\" name=\"report_reason\"><label for=\"report_radio1\">비방</label>";
		html += "		</div>";
		html += "	    <div class=\"report_radio_box\">";
		html += "		    <input type=\"radio\" id=\"report_radio2\" value=\"2\" name=\"report_reason\"><label for=\"report_radio2\">정치적 발언</label>";
		html += "	    </div>";
		html += "	    <div class=\"report_radio_box\">";
		html += "		    <input type=\"radio\" id=\"report_radio3\" value=\"3\" name=\"report_reason\"><label for=\"report_radio3\">외설적 언어</label>";
		html += "	    </div>";
		html += "	    <div class=\"report_radio_box\">";
		html += "		    <input type=\"radio\" id=\"report_radio4\" value=\"4\" name=\"report_reason\"><label for=\"report_radio4\">기타</label>";
		html += "	    </div>";
		html += "	</div>";
		html += "	<div>";
		html += "		상세 내용 <span class= \"asterisk\">&#42;</span><br /> <textarea class=\"pop_memo\" name=\"inputContents\" rows=\"3\" cols=\"73\"  placeholder=\"자세하게 적어주십시오\" ></textarea>";
		html += "	</div>";
		html += "</div>";
		html += "	<span class=\"submit_btn\">확 인</span> <span class=\"close_btn\">취 소</span>";
		html += "</div>";
		html += "</div>";
		html += "<div class=\"bg\"></div>";
		
		
		$("#pop").html(html);

		$(".submit_btn").on("click", function(){
			if(isNaN($(":radio[name='report_reason']:checked").val())) 
			{
				alert("신고 사유를 선택하세요.");
			}
			else if($.trim($(".pop_memo").val()) =="")
			{
				alert("내용을 입력하세요.");
			}
			else
			{
				var params = $("#reportForm").serialize();

				 $.ajax({
					url: "reports",
					type: "post",
					dataType: "json",
					data: params,
					success: function(result) {
						if(result.msg == "success")
						{
							$(".popup").remove();
							$(".bg").remove();
							alert("신고 되었습니다.");
						}
						else
						{
							alert("실패하였습니다");
						}
					},
					error: function(request, status, error) {
						console.log(error);
					}
				}); 
			}
		}); //.submit_btn click end
		
		$("#pop").on("click", ".close_btn", function(){
			$(".popup").remove();
			$(".bg").remove();
		}); //.close_btn click end
}//reportPopup end
function makeNotification(notification)
{
	var html = ""; //알림 표현용
	var readCnt = 0;
	var html1 = "";  //알림 개수 표현용
	
	for(noti of notification)
	{
		if(noti.READ == 1)
		{
			html += "<tr class=\"notRead\" notRead=\"" + noti.NOTF_NO + "\">";
			readCnt++;
		}
		else
		{
			html += "<tr class=\"read\" read=\"" + noti.NOTF_NO + "\">";
		}
		
		var path ="";
		
		if(noti.PHOTO_PATH != null)
		{
			path = "resources/upload/"+noti.PHOTO_PATH;
		}
		else
		{
			path = "./resources/images/profile.png";
		}
		
		switch(noti.EVENT_NO)
		{
			case 0:
				html +=" 	<th ><img alt=\"프로필\" src=\"" + path + "\" class=\"user\" user=\"" + noti.NOTF_MEM_NO + "\"></th>";
				html +=" 	<th><span class=\"user\" user=\"" + noti.NOTF_MEM_NO + "\">" + noti.REQUEST +"</span>님이 당신을 팔로우 하셨습니다.</th>";
				html +=" 	<th>" + noti.NOTF_DATE +"[" + noti.msg + "]</th>";
				html +=" </tr>";
				break;
			case 1:
				html +=" 	<th ><img alt=\"프로필\" src=\"" + path + "\" class=\"user\" user=\"" + noti.NOTF_MEM_NO + "\"></th>";
				html +=" 	<th>[여행일지]<span class=\"journal\" journal=\"" + noti.JOURNAL_NO + "\">" + noti.JTITLE + "</span>에  <span class=\"user\" user=\"" + noti.NOTF_MEM_NO + "\">" + noti.REQUEST + "</span>님이 <span class=\"journal\" journal=\"" + noti.JOURNAL_NO + "\">" + noti.JCONTENTS + "...</span> 댓글을 다셨습니다</th>";
				html +=" 	<th>" + noti.NOTF_DATE +"[" + noti.msg + "]</th>";
				html +=" </tr>";
				break;	
			case 2:
				html +=" 	<th ><img alt=\"프로필\" src=\"" + path + "\" class=\"user\" user=\"" + noti.NOTF_MEM_NO + "\"></th>";
				html +=" 	<th>[게시글]<span class=\"post\" post=\"" + noti.POST_NO + "\">" + noti.BTITLE + "</span>에  <span class=\"user\" user=\"" + noti.NOTF_MEM_NO + "\">" + noti.REQUEST + "</span>님이 <span class=\"post\" post=\"" + noti.POST_NO + "\">" + noti.BCONTENTS + "...</span> 댓글을 다셨습니다</th>";
				html +=" 	<th>" + noti.NOTF_DATE +"[" + noti.msg + "]</th>";
				html +=" </tr>";
				break;
			case 3:
				html +=" 	<th ><img alt=\"프로필\" src=\"" + path + "\" class=\"user\" user=\"" + noti.NOTF_MEM_NO + "\"></th>";
				html +=" 	<th>[여행일지]<span class=\"journal\" journal=\"" + noti.JCJOURNAL_NO + "\">" + noti.JCTITLE + "</span>에  <span class=\"user\" user=" + noti.NOTF_MEM_NO + ">" + noti.REQUEST + "</span>님이 <span class=\"journal\" journal=\"" + noti.JCJOURNAL_NO + "\">" + noti.JUP_CONTENTS + "...</span> 댓글을 다셨습니다</th>";
				html +=" 	<th>" + noti.NOTF_DATE +"[" + noti.msg + "]</th>";
				html +=" </tr>";
				break;
			case 4:
				html +=" 	<th ><img alt=\"프로필\" src=\"" + path + "\" class=\"user\" user=\"" + noti.NOTF_MEM_NO + "\"></th>";
				html +=" 	<th>[게시글]<span class=\"post\" post=\"" + noti.BCPOST_NO + "\">" + noti.BCTITLE + "</span>에  <span class=\"user\" user=\"" + noti.NOTF_MEM_NO + "\">" + noti.REQUEST + "</span>님이 <span class=\"post\" post=\"" + noti.BCPOST_NO + "\">" + noti.BUP_CONTENTS + "...</span> 댓글을 다셨습니다</th>";
				html +=" 	<th>" + noti.NOTF_DATE +"[" + noti.msg + "]</th>";
				html +=" </tr>";
				break;
			case 5:
				html +=" 	<th ><img alt=\"프로필\" src=\"" + path + "\" class=\"user\" user=\"" + noti.JCCMEM_NO + "\"></th>";
				html +=" 	<th>내 댓글<span class=\"journal\" journal=\"" + noti.CCJOURNAL_NO + "\">" + noti.UPJCONTENTS + "</span>에  <span class=\"user\" user=\"" + noti.JCCMEM_NO + "\">" + noti.REQUEST + "</span>님이 <span class=\"journal\" journal=\"" + noti.CCJOURNAL_NO + "\">" + noti.DOWNJCONTENTS + "...</span> 답글을 다셨습니다</th>";
				html +=" 	<th>" + noti.NOTF_DATE +"[" + noti.msg + "]</th>";
				html +=" </tr>";
				break;
			case 6:
				html +=" 	<th ><img alt=\"프로필\" src=\"" + path + "\" class=\"user\" user=\"" + noti.BCCMEM_NO + "\"></th>";
				html +=" 	<th>내 댓글<span class=\"post\" post=\"" + noti.CCPOST_NO + "\">" + noti.UPBCONTENTS + "</span>에  <span class=\"user\" user=\"" + noti.BCCMEM_NO + "\">" + noti.REQUEST + "</span>님이 <span class=\"post\" post=\"" + noti.CCPOST_NO + "\">" + noti.DOWNBCONTENTS + "...</span> 댓글을 다셨습니다</th>";
				html +=" 	<th>" + noti.NOTF_DATE +"[" + noti.msg + "]</th>";
				html +=" </tr>";
				break;
			case 7:
				html +=" 	<th ><img alt=\"프로필\" src=\"" + path + "\" class=\"user\" user=\"" + noti.NOTF_MEM_NO + "\"></th>";
				html +=" 	<th>관리자가 내가 올린 [문의사항]<span class=\"qna\" qna=\"" + noti.GBN_NO + "\">" + noti.QTITLE + "</span>에 답글을 남기셨습니다.</th>";
				html +=" 	<th>" + noti.NOTF_DATE +"[" + noti.msg + "]</th>";
				html +=" </tr>";
				break;
			case 8:
				html +=" 	<th ><img alt=\"프로필\" src=\"" + path + "\" class=\"user\" user=\"" + noti.NOTF_MEM_NO + "\"></th>";
				html +=" 	<th>관리자가 내가 올린 [문의사항]<span class=\"qna\" qna=\"" + noti.GBN_NO + "\">" + noti.QTITLE + "</span>에 답글을 수정 하셨습니다.</th>";
				html +=" 	<th>" + noti.NOTF_DATE +"[" + noti.msg + "]</th>";
				html +=" </tr>";
				break;
			case 9:
				html +=" 	<th ><img alt=\"프로필\" src=\"" + path + "\" class=\"user\" user=\"" + noti.NOTF_MEM_NO + "\"></th>";
				html +=" 	<th>내가 작성한 [여행일지]<span class=\"journal\" journal=\"" + noti.GBN_NO + "\">" + noti.LIKE_TITLE + "</span> 를 좋아요 누르셨습니다.</th>";
				html +=" 	<th>" + noti.NOTF_DATE +"[" + noti.msg + "]</th>";
				html +=" </tr>";
				break;
			case 10:
				html +=" 	<th ><img alt=\"프로필\" src=\"" + path + "\" class=\"user\" user=\"" + noti.NOTF_MEM_NO + "\"></th>";
				html +=" 	<th>내가 작성한 [게시글]<span class=\"post\" post=\"" + noti.GBN_NO + "\">" + noti.LIKE_TITLE2 + "</span> 를 좋아요 누르셨습니다.</th>";
				html +=" 	<th>" + noti.NOTF_DATE +"[" + noti.msg + "]</th>";
				html +=" </tr>";
				break;
			default:
				console.log("여긴 뭐넣을까?");
		}
	}
	
	html1 = "<div id=\"notificationTxt\">" + readCnt + "<div>";
	
	$("#cnt").prepend(html1);
	$("#notification tbody").html(html);
} //makeNotification end
function findBtnPopup()
{
	var html = "";
	
	html +="<div class=\"popup1\">";
	html +="	   <div class=\"popup1_entity_txt\">무엇이 필요하십니까?</div>";
	html +="       <div class=\"btn1_list\">";
	html +="       		<a href=\"findID\">ID찾기</a>";
	html +="      		<a href=\"findPW\">PW찾기</a>";
	html +="       <img src=\"./resources/images/cancel.png\" id=\"cancelImg\"/>";
	html +="    </div>";
	html +="</div>";
	html +="<div class=\"bg\"></div>";
	
	$("body").append(html);
	
	$("#cancelImg").on("click", function(){ 
		$(".popup1").remove();
		$(".bg").remove();
	}); //cancelImg click end
}//findBtnPopup end


function reloadList() {
	var params = $("#goForm").serialize();
	
	$.ajax({
		url: "postCmts",
		type: "post",
		dataType: "json",
		data: params,
		success: function(res) {
			drawCmt(res.cmt);
			drawPaging(res.pb);
		},
		error: function(request, status, error) {
			console.log(error);
		}
	}); // ajax end..
} // reloadList() end..

function drawCmt(cmt) {

	var html = "";
	
	for(i = 0 ; i < cmt.length ; i++) {
		
		if(cmt[i].PARENTS_CMT_NO == null) {
			
			html += "<div class=\"cmt_content_list\" cmtno=\"" + cmt[i].POST_CMT_NO + "\">";
			html += "<div class=\"cmt_contents\" cmtmemno=\"" + cmt[i].MEM_NO + "\" >";
			html += "	<div class=\"cmt_contents_left\">";
			if(cmt[i].MEM_PHOTO_PATH != null) {
				html += "		<img alt=\"프로필\" src=\"./resources/upload/" + cmt[i].MEM_PHOTO_PATH + "\">";
			} else {
				html += "<img alt=\"프로필\" src=\"./resources/images/profile3.png\">";
			}
			html += "	</div>";
			html += "	<div class=\"cmt_contents_right\">";
			html += "		<strong>" + cmt[i].NIC + "</strong><span class=\"cmt_date\">" + cmt[i].CMT_DATE + "</span><br />";
			if(cmt[i].GRADE_NO == 2) {
				html += "	<span><img alt=\"등급\" src=\"./resources/images/grade.png\"> </span><span>" + cmt[i].GRADE_NAME + "</span>";
			} else {
				html += "	<span>" + cmt[i].GRADE_NAME + "</span>";
			}
			html += "		<div class=\"cmt_txt\">";
			html += "			<p>" + cmt[i].CMT_CONTENTS + "</p>";
			html += "		</div>";
			html += "		<div class=\"cmt_box\">";
			html += "			<span class=\"add_cmt_cmt\">답글</span>";
			if($("#loginUserNo").val() == cmt[i].MEM_NO) {
				html += "			<span class=\"cmt_delete_btn\">삭제</span>";
			} else {
				html += "<span></span>";
			}
			html += "			<span class=\"report_btn\">신고</span>";
			if($("#loginUserNo").val() == cmt[i].MEM_NO) {
				html += "			<span class=\"cmt_edit_btn\">수정</span>";
			} else {
				html += "<span></span>";
			}
			html += "		</div>";
			html += "	</div>";
			html += "</div>";
			html += "</div>";
			for(j = 0 ; j < cmt.length ; j++) {
				if(cmt[i].POST_CMT_NO == cmt[j].PARENTS_CMT_NO) {
					html += "<div class=\"cmt_cmt_contents_list\" cmtcmtnos=\"" + cmt[j].POST_CMT_NO + "\">";
					html += "<div class=\"cmt_cmt_contents\" cmtcmtno=\"" + cmt[j].POST_CMT_NO + "\" cmtcmtmemno=\"" + cmt[j].MEM_NO + "\">";
					html += "	<div class=\"cmt_contents_left\">";
					if(cmt[j].MEM_PHOTO_PATH != null) {
						html += "		<img alt=\"프로필\" src=\"./resources/upload/" + cmt[j].MEM_PHOTO_PATH + "\">";
					} else {
						html += "<img alt=\"프로필\" src=\"./resources/images/profile3.png\">";
					}
					html += "	</div>";
					html += "	<div class=\"cmt_contents_right\">";
					html += "		<strong>" + cmt[j].NIC + "</strong><span class=\"cmt_cmt_date\">" + cmt[j].CMT_DATE + "</span><br />";
										if(cmt[j].GRADE_NO == 2) {
					html += "			<span><img alt=\"등급\" src=\"./resources/images/grade.png\"></span><span>" + cmt[j].GRADE_NAME + "</span>";
										} else {
					html += "			<span>" + cmt[j].GRADE_NAME + "</span>";
										}
					html += "		<div class=\"cmt_txt\">";
					html += "			<p>" + cmt[j].CMT_CONTENTS + "</p>";
					html += "		</div>";
					html += "		<div class=\"cmt_box\">";
					html += "           <span></span>";
					if($("#loginUserNo").val() == cmt[j].MEM_NO) {
						html += "			<span class=\"cmt_cmt_delete_btn\">삭제</span>";
					} else {
						html += "<span></span>";
					}
					html += "			<span class=\"report_btn\">신고</span>";
					if($("#loginUserNo").val() == cmt[j].MEM_NO) {
						html += "			<span class=\"cmt_cmt_edit_btn\">수정</span>";
					}
					else {
						html += "<span></span>";
					}
					html += "		</div>";
					html += "	</div>";
					html += "</div>";
					html += "</div>";
				}
			}
		}
	}
		                                                                                                              
	$("#cmtList").html(html);
	
} // drawCmt(cmt) end..

function drawPaging(pb) {
	var html = "";
	
	html += "<div class=\"paging_btn\" pages=\"1\"><<</div>";
	
	if($("#pages").val() == "1") {
		html += "<div class=\"paging_btn\" pages=\"1\"><</div>";
	} else {
		html += "<div class=\"paging_btn\" pages=\"" + ($("#pages").val() - 1) + "\"><</div>";
	}
	
	for(var i = pb.startPcount ; i <= pb.endPcount ; i++) {
		if($("#pages").val() == i) {
			html += "<div class=\"num on\" pages=\"" + i + "\">" + i + "</div>";
		} else {
			html += "<div class=\"num\" pages=\"" + i + "\">" + i + "</div>";
		}
	}
	
	if($("#pages").val() == pb.maxPcount) {
		html += "<div class=\"paging_btn\" pages=\"" + pb.maxPcount + "\">></div>";
	} else {
		html += "<div class=\"paging_btn\" pages=\"" + ($("#pages").val() * 1 + 1) + "\">></div>";
	}
	
	html += "<div class=\"paging_btn\" pages=\"" + pb.maxPcount + "\">>></div>";
	
	$(".paging").html(html);
	
}
function commonPopup(txt) //공통적으로 쓰이는 팝업 , txt는 팝업에 들어갈 문자열 
{
	var html = "";
	
	html 	 +="<div class=\"popup2\">";
	html	 +="	 <div class=\"popup_entity_txt2\">"+ txt +"</div>";
	html	 +="     <div class=\"btn_list2\">";
	html	 +="        <div id=\"yesBtn\">예</div>";
	html	 +="     </div>";
	html	 +="</div>";
	html	 +="<div class=\"bg2\"></div>";
	
	$("body").append(html);
	
	$("#yesBtn").on("click", function(){ 
		$(".popup2").remove();
		$(".bg2").remove();
	}); //yesBtn click end
}//commonPopup end
function findBtnPopup()
{
	var html = "";
	
	html +="<div class=\"popup2\">";
	html +="	   <div class=\"popup_entity_txt2\">무엇이 필요하십니까?</div>";
	html +="       <div class=\"btn_list2\">";
	html +="       		<a href=\"findID\">ID찾기</a>";
	html +="      		<a href=\"findPW\">PW찾기</a>";
	html +="       <img src=\"./resources/images/cancel.png\" id=\"cancelImg\"/>";
	html +="    </div>";
	html +="</div>";
	html +="<div class=\"bg2\"></div>";
	
	$("body").append(html);
	
	$("#cancelImg").on("click", function(){ 
		$(".popup2").remove();
		$(".bg2").remove();
	}); //cancelImg click end
}//findBtnPopup end
</script>
   </head>
   <body>
   <form action="#" id="memForm">
		<input type="hidden" id="MEM_NO" name="MEM_NO" value="${sMEM_NO }"/>
		<input type="hidden" id="page" name="page" value="1"/>
		<input type="hidden" id="GBN" name="GBN" value="1"/>
		<input type="hidden" id="firstPage" name="firstPage" value="1"/>
	</form>
	<form action="" id="tempForm">
		<input type="hidden" name="MEM_NO" value="${data.MEM_NO}"/>
	</form>
	<form action="#" id="notificationForm">
		<input type="hidden" id="NOTF_NO" name="NOTF_NO" value=""/>
	</form>
	<form action="journal" id="journalForm" method="post">
		<input type="hidden" id="journalNo" name="journalNo" value=""/>
	</form>
	<form action="post" id="postForm1" method="post">
		<input type="hidden" id="postNo" name="postNo" value=""/>
		<input type="hidden" id="newPostNo" name="newPostNo" value="1"/>
		<input type="hidden" name="loginUserNo" value="${sMEM_NO}" />
	</form>
   <form action="#" id="likeForm" method="post">
   		<input type="hidden" id="lLoginUserNo" name="loginUserNo" value="${sMEM_NO}"/> 
   		<input type="hidden" id="likePostNo" name="postNo" value="${data.POST_NO}"/>
   		<input type="hidden" id="postMem" name="postMem" value="${data.MEM_NO}"/> 
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
							<li><img alt="프로필" src="" id="profilePhoto">
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
				<div class="logins">
					<div class="sub_login1">
						<form action="#" id="loginForm" method="post">
							<input type="button" class="login_btn" value="로그인" /> 
							<input type="password" class="login" id="inputPW" name="inputPW" placeholder="PW" /> 
							<input type="text" class="login" id="inputID" name="inputID" placeholder="ID" />
						</form>
					</div>
					<div class="sub_login2">
                        <span id="join">회원가입</span>
                        <span id="find">ID/PW 찾기</span>
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
         <form action="userPage" id="userForm" method="post">
			<input type="hidden" id="userNo" name="userNo" value=""/>
		 </form>	
         <form action="#" id="goForm" method="post"> 
			<input type="hidden" name="postNo" value="${data.POST_NO}"/>
			<input type="hidden" name="editPostNo" value="${data.POST_NO}"/>
			<input type="hidden" name="postTitle" value="${data.TITLE}"/>
			<input type="hidden" name="postCategoryNo" value="${data.CATEGORY_NO}"/>
			<input type="hidden" name="postContents" value="${data.CONTENTS}"/>
			<input type="hidden" id="pages" name="pages" value="${pages}" />
			<input type="hidden" name="searchFilter" value="${param.searchFilter}" />
			<input type="hidden" name="searchTxt" value="${param.searchTxt}" />
			<input type="hidden" id="loginUserNo" name="loginUserNo" value="${sMEM_NO}"/>
			<input type="hidden" id="getCmtContents" name="getCmtContents"/>
			<input type="hidden" id="postWriteMemNo" name="postWriteMemNo" />
			<input type="hidden" id="cmtWriteMemNo" name="cmtWriteMemNo" />
			<input type="hidden" id="cmtNo" name="cmtNo" />
		 </form>
		<div id="path_info">
			<span> 
			<img alt="메인페이지" src="./resources/images/home.png" class="home_icon">
			</span> 
			&nbsp;&nbsp;>&nbsp;&nbsp; 
			<span> 자유게시판 </span>
			&nbsp;&nbsp;>&nbsp;&nbsp;
			<c:choose>
				<c:when test="${data.CATEGORY_NO eq 1}">
					공지사항
				</c:when>
				<c:when test= "${data.CATEGORY_NO eq 2}">
					여행꿀팁
				</c:when>
				<c:when test="${data.CATEGORY_NO eq 3}">
					Q & A
				</c:when>
				<c:when test="${data.CATEGORY_NO eq 4}">
					잡&nbsp;&nbsp;&nbsp;담
				</c:when>
			</c:choose>
			&nbsp;>&nbsp;&nbsp;${data.TITLE}
			
		</div>
		<div class= "title_area" postMno="${data.MEM_NO}">
			<div class="title_left">
				<strong>${data.TITLE}</strong><br />
				
				<br /> <span>작성일</span> <span>${data.BOARD_DATE}</span> <span>조회</span><span>${data.HIT}</span>
				<span>좋아요</span><span>${data.LIKE_CNT}</span> <span>댓글</span><span>${data.POST_CMT_CNT}</span>
			</div>
			<div class="title_right">	
				<span class="report_btn">신고하기</span>
			</div>
		 </div>
         <div class="container_wrap">
            <div class = "text_area">
         				<p>${data.CONTENTS}</p>
         	</div>
         	<div class="category_area">
         			<div class="category_label">
         				카테고리
         			</div>
         			<div class="category_txt">
         				<c:choose>
							<c:when test="${data.CATEGORY_NO eq 1}">
							<span>공지사항</span>
							</c:when>
							<c:when test="${data.CATEGORY_NO eq 2}">
							<span>여행꿀팁</span>
							</c:when>
							<c:when test="${data.CATEGORY_NO eq 3}">
							<span>Q & A</span>
							</c:when>
							<c:when test="${data.CATEGORY_NO eq 4}">
							<span>잡&nbsp;&nbsp;&nbsp;담</span>
							</c:when>
							</c:choose>
         			</div>
         		</div>
         	<div class="sub_profile">
         			<div class="profile_info">
	         			<div>
	         				<c:choose>
								<c:when test="${data.MEM_PHOTO_PATH eq null}">
									<img alt="profile" src="./resources/images/profile3.png" class="profile_img">									
								</c:when>
								<c:otherwise>
									<img alt="profile" src="./resources/upload/${data.MEM_PHOTO_PATH}" class="profile_img">
								</c:otherwise>
							</c:choose>
	         			</div>
	         			<div class="info">
	         				<span>${data.NIC}</span>
						<div class="grade">
							<img alt="icon" src="./resources/images/grade.png"> 
							<c:choose>
							<c:when test="${data.GRADE_NO eq 0}">
							<span>관리자</span>
							</c:when>
							<c:when test="${data.GRADE_NO eq 1}">
							<span>여행꾼</span>
							</c:when>
							<c:when test="${data.GRADE_NO eq 2}">
							<span>여행작가</span>
							</c:when>
							</c:choose>
						</div>
						<div class="cnt">
							<span>총 게시글 ${data.POST_CNT}</span> <span>총 댓글</span>
						</div>
	         			</div>
	         		</div>
	         		<div class="follow_btn_area">
	         			<input type="button" id="userPage" class="user" user="${data.MEM_NO }" value="여 행 일 지&nbsp;&nbsp;&nbsp;&nbsp;모 아 보 기 &nbsp;&nbsp;&nbsp;&nbsp;&#62;"/>
	         		</div>
         		</div>		
            <div class="post_bottom">
            	<div class="bnt_lists"></div>
            	<div class="reaction">
            		<ul><li><img alt="좋아요" src="./resources/images/like.png" id="likeImg" class="like" like="0"><br/><span class="likeText">좋아요</span></li></ul>
            	</div>
            </div>
            <div class="cmt_area">
				<div class="cmt_top">
					<span>댓글 </span><span>${data.POST_CMT_CNT}</span><span> 개</span>
				</div>
				<div class="cmt_bottom">
					<textarea id="cmtContents" name="cmtContents" rows="8" cols="150" placeholder="댓글을 입력하십시오"></textarea>
					<input type="button" class="edit_btn" id="addBtn" value="등  록" />
				</div>
				<div class="cmt_list" id="cmtList"></div>
				<div class="paging"></div>
			</div>
            </div>    
         </div>
         <div id="footer">
            <p>
               POPJOURNEY<br/>
               GDJ-35기 LEE Eun-Soo, LEE In-Bok, CHOI Jeong-Min<br/>
               Copyright© POPJOURNEY. All Rights Reserved.
            </p>
         </div> 
         <form action="#" id="reportForm">
       		 <input type="hidden" name="MEM_NO" value="${sMEM_NO}" />
       		 <input type="hidden" name="writeMemNo" value="${data.MEM_NO}"/>
        	 <div id="pop"></div>   
         </form>
   </body>
</html>