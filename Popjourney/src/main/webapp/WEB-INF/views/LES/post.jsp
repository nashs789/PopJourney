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
	display: none;
	width: 1280px;
	height: 70px;
	text-align: center;
}

.btn_list input {
	display: inline-block;
}

.edit_btn, .delete_btn, .reset_btn{
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

.delete_btn:hover, .reset_btn:hover{
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
	width: 700px;
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
    display: none; 
    width: 100%;
    height: 100%;
    top: 0px;
    background-color: #000000;
    z-index: 400;
    opacity: 0.2;
}

</style>
<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	if("${sMEM_NO}" == "${data.MEM_NO}") { // 로그인 상태
		$(".btns").css("display","inline-block");
		$(".logins").css("display","none");
		$(".btn_list").css("display","inline-block");
		$(".reaction").css("display","none");
	} 
	if("${sMEM_NO}" == ""){
		$(".reaction").css("display","none");
	}
	if("${sMEM_NO}" != "1"){
		$("#admin").css("display","none");
	} 
	likeLoad();
	// 로그인 기능
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
						$("#loginUserNo").val("${sMEM_NO}");
						console.log($("#loginUserNo").val());
				}, 
				error: function (request, status, error) {
					console.log(error);
				}
			});
		}
		$("#postForm").submit();
	});//login_btn end
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
		$(".popup, .bg").show();
	}); 
	
	$(".ok_btn").on("click", function(){
		$(".popup, .bg").hide();
	});
	$(".cancel_btn").on("click", function(){
		$(".popup, .bg").hide();
	});
	$("#userPage").on("click", function(){
		if("${sMEM_NO}" != "${data.MEM_NO}") {
			$("#userForm").submit();
		} else {
			location.href = "myPage";
		}
	});
	
	$("#loginBtn").on("click", function(){  //로그인 버튼 클릭
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
	$("#postEditBtn").on("click", function () {
		$("#goForm").attr("action","postUpdate");
		$("#goForm").submit();
	});
	//게시글 삭제
	$(".delete_btn").on("click", function () {
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
	//이전 글 이동
	$("#prevPost").on("click", function(){
		$("#prevPostForm").submit();
	}); //prevPost click end
	//다음 글 이동
	$("#nextPost").on("click", function(){
		$("#nextPostForm").submit();
	}); //nextPost click end
	//좋아요 버튼
	$(".reaction").on("click","img", function(){
		var like = $(this).attr("like");
		var params = $("#likeForm").serialize();
		console.log(like);
		//console.log(params);
		if(like == 0){ //좋아요 x : 좋아요 기능
			console.log("좋아요!");
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
			console.log("좋아요 취소");
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
	//댓글 작성버튼
	$("#cmtEnrollBtn").on("click", function() {
		if($.trim($("#cmtCon").val()) == "") {
			alert("내용을 입력하십시오.");
			$("#cmtCon").focus();
		} else {
			if("${sMEM_NO}" != "") {
				alert("로그인이 필요한 서비스입니다.");
			} else{ //로그인 했을 때 댓글 등록
				
			var params = $("#cmtForm").serialize();
			
			$.ajax({
				url : "postCmtWrites",
				type : "post",
				dataType : "json",
				data : params,
				success : function(res) {
					if(res.msg == "success") {
						$("#cmtCon").val("");
						console.log("작성완료");
					} else if(res.msg == "failed") {
						alert("작성에 실패하였습니다.");
					} else {
						alert("작성중 문제가 발생하였습니다.");
					}
				},
				error : function(request, status, error) {
					console.log(error);
				}
			});
			}
		}
	});
	
	//댓글 페이징 처리
	$(".paging").on("click", "span", function() {
		$("#page").val($(this).attr("name"));
		cmtReloadList();
	});
	
	// 내 댓글 수정 클릭
	$(".my_cmt_edit").on("click", function() {
		$("#cmtEnrollBtn").hide();
		$("#cmtEditBtn, #cmtCancelBtn").show();
		$("#cmtloginUserNo").val($(this).parent().parent().parent().attr("name"));
		$("#cmtCon").val($(this).parent().parent().children().html());
	});
	//내 댓글 수정 중 취소 버튼  클릭
	$("#cmtCancelBtn").on("click", function() {
		$("#cmtCon").val("");
		$("#cmtloginUserNo").val("");
		$("#cmtEnrollBtn").show();
		$("#cmtEditBtn, #cmtCancelBtn").hide();
	});
	//내 댓글 수정 후 수정버튼 클릭
	$("#cmtEditBtn").on("click", function() {
		if($.trim($("#cmtCon").val()) == "") {
			alert("내용을 넣어주세요.");
			$("#cmtCon").focus();
		} else {
			var params = $("#cmtForm").serialize();
			
			$.ajax({
				url : "postCmtUpdates",
				type : "post",
				dataType : "json",
				data : params,
				success : function(res) {
					if(res.msg == "success") {
						$("#cmtCancelBtn").click();
						
						cmtReloadList();
					} else if(res.msg == "failed") {
						alert("작성에 실패하였습니다.");
					} else {
						alert("작성중 문제가 발생하였습니다.");
					}
				},
				error : function(request, status, error) {
					console.log(error);
				}
			});
		}
	});//cmtEditBtn end
	//내 댓글 삭제
	$(".my_cmt_delete").on("click", function() {
		if(confirm("삭제하시겠습니까?")) {
			$("#cmtloginUserNo").val($(this).parent().parent().attr("name"));
			
			var params = $("#cmtForm").serialize();
			
			$.ajax({
				url : "postCmtDeletes",
				type : "post",
				dataType : "json",
				data : params,
				success : function(res) {
					if(res.msg == "success") {
						$("#cmtloginUserNo").val("");
						resetVal();
						cmtReloadList();
					} else if(res.msg == "failed") {
						alert("작성에 실패하였습니다.");
					} else {
						alert("작성중 문제가 발생하였습니다.");
					}
				},
				error : function(request, status, error) {
					console.log(error);
				}
			});
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
	console.log(params);
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
	$("#page").val(1);
}

/* function cmtReloadList() {
	var params = $("#cmtForm").serialize();
	
	$.ajax({
		url : "postCmtLists",
		type : "post",
		dataType : "json",
		data : params,
		success : function(res) {
			redrawList(res.list);
			redrawPaging(res.pb);
		},
		error : function(request, status, error) {
			console.log(error);
		}
	});
}

function redrawList(list) {
	var html = "";
	"+  +"
	for(var d of cmtList) {
		html += "<div class=\"cmt_contents\">";
		html += "<div class=\"cmt_contents_left\">";
		html += "	<img alt=\"프로필\" src=\"./resources/images/profile2.png\">";
		html += "</div>";
		html += "<div class=\"cmt_contents_right\">";
		html += "	<strong>"+ cmtList.NIC +"</strong><span class=\"cmt_date\">" + cmtList.BOARD_DATE + "</span><br />";
		html += "	<span><img alt=\"등급" src=\"./resources/images/grade.png\"> </span>";
		html += "<span>";
		if(cmtList.GRADE_NO == "0") {
			html += "관리자";
		} else if(cmtList.GRADE_NO == "1") {
			html += "여행꾼";
		} else if(cmtList.GRADE_NO == "2") {
			html += "여행작가";
		}
		html +="</span>";
		html += "	<div class=\"cmt_txt\">";
		html += "		<p>"+ cmtList.CONTENTS+"</p>";
		html += "	</div>";
		html += "	<div class=\"cmt_box\">";
		html += "		<span class=\"my_cmt_reply\">답글</span>";
		html += "		<span class=\"my_cmt_delete\">삭제</span>";
		html += "		<span class=\"report_btn\">신고</span>";
		html += "		<span class=\"my_cmt_edit\">수정</span>";
		html += "	</div>";
		html += "</div>";
		html += "</div>";
	}
	if($("loginUserNo").val() != cmtList.MEM_NO){
		$(".my_cmt_delete").css("display","none");
		$(".my_cmt_edit").css("display","none");
	}
	$(".cmt_list").html(html);
	
}

function redrawPaging(pb) {
	var html = "";
	
	html += "<span name=\"1\">처음</span>";
	
	if($("#page").val() == "1") {
		html += "<span name=\"1\">이전</span>";
	} else {
		html += "<span name=\"" + ($("#page").val() - 1) + "\">이전</span>";
	}
	
	for(var i = pb.startPcount ; i <= pb.endPcount ; i++) {
		if($("#page").val() == i) {
			html += "<span name=\"" + i + "\"><b>" + i + "</b></span>";
		} else {
			html += "<span name=\"" + i + "\">" + i + "</span>";
		}
	}
	
	if($("#page").val() == pb.maxPcount) {
		html += "<span name=\"" + pb.maxPcount + "\">다음</span>";
	} else {
		html += "<span name=\"" + ($("#page").val() * 1 + 1) + "\">다음</span>";
	}
	
	html += "<span name=\"" + pb.maxPcount + "\">마지막</span>";
	
	$("#pagingWrap").html(html);
} */

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
	for(var d of report) {
		
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
		html += "			<input type=\"radio\" id=\"report_radio0\" name=\"report_reason\"><label for=\"report_radio0\">욕설 </label>";
		html += "		</div>";
		html += "		<div class=\"report_radio_box\">";
		html += "			<input type=\"radio\" id=\"report_radio1\" name=\"report_reason\"><label for=\"report_radio1\">비방</label>";
		html += "		</div>";
		html += "	    <div class=\"report_radio_box\">";
		html += "		    <input type=\"radio\" id=\"report_radio2\" name=\"report_reason\"><label for=\"report_radio2\">정치적 발언</label>";
		html += "	    </div>";
		html += "	    <div class=\"report_radio_box\">";
		html += "		    <input type=\"radio\" id=\"report_radio3\" name=\"report_reason\"><label for=\"report_radio3\">외설적 언어</label>";
		html += "	    </div>";
		html += "	    <div class=\"report_radio_box\">";
		html += "		    <input type=\"radio\" id=\"report_radio4\" name=\"report_reason\"><label for=\"report_radio4\">기타</label>";
		html += "	    </div>";
		html += "	</div>";
		html += "	<div>";
		html += "		상세 내용 <span class= \"asterisk\">&#42;</span><br /> <textarea class=\"pop_memo\" rows=\"3\" cols=\"73\"  placeholder=\"자세하게 적어주십시오\" ></textarea>";
		html += "	</div>";
		html += "</div>";
		html += "	<span class=\"submit_btn\">확 인</span> <span class=\"close_btn\">취 소</span>";
		html += "</div>";
	}
	
	$(".popup").html(html);
}//reportPopup end

</script>
   </head>
   <body>
	<form action="#" id="prevPostForm" method="post">
		<input type="hidden" id="prevPostNo" name="postNo" value="${prevPost.POST_NO}"/>
		<input type="hidden" id="pNewPostNo" name="newPostNo" value="1"/>
		<input type="hidden" id="ploginUserNo" name="loginUserNo" value="${sMEM_NO}"/>
   </form>
   <form action="#" id="nextPostForm" method="post">
   		<input type="hidden" id="nextPostNo" name="postNo" value="${nextPost.POST_NO}"/>
		<input type="hidden" id="nNewPostNo" name="newPostNo" value="1"/>
		<input type="hidden" id="nloginUserNo" name="loginUserNo" value="${sMEM_NO}"/>
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
						<form action="#" id="postForm" method="post">
							<input type="hidden" id="loginUserNo" name="loginUserNo" value="${sMEM_NO}"/>
						</form>
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
			<input type="hidden" id="userNo" name="userNo" value="${data.MEM_NO}"/>
		 </form>	
         <form action="#" id="goForm" method="post"> 
			<input type="hidden" name="postNo" value="${data.POST_NO}"/>
			<input type="hidden" name="editPostNo" value="${data.POST_NO}"/>
			<input type="hidden" name="postTitle" value="${data.TITLE}"/>
			<input type="hidden" name="postCategoryNo" value="${data.CATEGORY_NO}"/>
			<input type="hidden" name="postContents" value="${data.CONTENTS}"/>
			<input type="hidden" name="page" value="${param.page}" />
			<input type="hidden" name="searchFilter" value="${param.searchFilter}" />
			<input type="hidden" name="searchTxt" value="${param.searchTxt}" />
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
		<div class= "title_area">
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
	         				<img alt="profile" src="./resources/images/profile2.png" class="profile_img">
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
	         			<input type="button" id="userPage" value="여 행 일 지&nbsp;&nbsp;&nbsp;&nbsp;모 아 보 기 &nbsp;&nbsp;&nbsp;&nbsp;&#62;"/>
	         		</div>
         		</div>		
            <div class="post_bottom">
            	<div class="btn_list">
            		<input type="button" id="postEditBtn" class="edit_btn" value="수  정" />
            		<input type="button" class="delete_btn" value="삭  제" />
            	</div>
            	<div class="post_page">
            		<div class="post_label">이전글</div>
            		<div class="post_label_title" id="prevPost">${prevPost.TITLE}</div>
            	</div>
            	<c:choose>
            		<c:when test="${!empty nextPost.TITLE}">
		            	<div class="post_page">
		            		<div class="post_label">다음글</div>
		            		<div class="post_label_title" id="nextPost">${nextPost.TITLE}</div>
		            	</div>
		            </c:when>
            	</c:choose>
            	<div class="reaction">
            		<ul><li><img alt="좋아요" src="./resources/images/like.png" id="likeImg" class="like" like="0"><br/><span class="likeText">좋아요</span></li></ul>
            	</div>
            </div>
            <div class="cmt_area">
				<div class="cmt_top">
					<span>댓글 </span><span>${data.POST_CMT_CNT}</span><span> 개</span>
				</div>
				<form action="#" id="cmtForm" method="post">
					<input type="hidden" id="cmtPostNo" name="postNo" value="${data.POST_NO}"/>
					<input type="hidden" id="cmtloginUserNo" name="loginUserNo" value="${sMEM_NO}"/>
						<div class="cmt_bottom">
							<textarea id="cmtCon" name="cmtCon" rows="8" cols="150" placeholder="댓글을 입력하십시오"></textarea>
							<input type="button" class="edit_btn" id="cmtEnrollBtn" value="등  록" />
							<input type="button" class="reset_btn" id="cmtCancelBtn" value="취  소" />
							<input type="button" class="edit_btn" id="cmtEditBtn" value="수  정" />
						</div>
				</form>
				<div class="cmt_list">
					<div class="cmt_cmt_contents">
						<div class="cmt_contents_left">
							<img alt="프로필" src="./resources/images/profile2.png">
						</div>
						<div class="cmt_contents_right">
							<strong>닉네임</strong><span class="cmt_cmt_date">2021-05-25</span><br /> <span><img
								alt="등급" src="./resources/images/grade.png"> </span><span>여행작가</span>
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
								<textarea class="reply" rows="8" cols="150" placeholder="댓글을 입력하십시오"></textarea><br/>
								<input type="button" class="reply_edit_btn" value="등  록" />
								<input type="button" class="reply_edit_btn" id="replyEditBtn" value="수  정" />
								<input type="button" class="reset_btn" id="replyCancelBtn" value="취  소" />
							</div>
						</div>
					</div>
				</div>
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
					<input type="radio" id="report_radio0" name="report_reason"><label for="report_radio0">욕설 </label>
				</div>
				<div class="report_radio_box">
					<input type="radio" id="report_radio1" name="report_reason"><label for="report_radio1">비방</label>
				</div>
			    <div class="report_radio_box">
				    <input type="radio" id="report_radio2" name="report_reason"><label for="report_radio2">정치적 발언</label>
			    </div>
			    <div class="report_radio_box">
				    <input type="radio" id="report_radio3" name="report_reason"><label for="report_radio3">외설적 언어</label>
			    </div>
			    <div class="report_radio_box">
				    <input type="radio" id="report_radio4" name="report_reason"><label for="report_radio4">기타</label>
			    </div>
			</div>
			<div>
				상세 내용 <span class= "asterisk">&#42;</span><br /> <textarea class="pop_memo" rows="3" cols="73"  placeholder="자세하게 적어주십시오" ></textarea>
			</div>
		</div>
		<div class="popup_btn_list">
			<span class="submit_btn">확 인</span> <span class="close_btn">취 소</span>
		</div>
	</div>
	<div class="bg"></div>
   </body>
</html>