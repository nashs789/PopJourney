<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>일지작성</title>
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
.btns { 
    display: none;
    vertical-align: top;
    position:relative;   
    width: 470px;
    height: 70px;
    text-align: right;
    background-color: #FFFFFF;
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
#inputID, #inputPW {
   float: right;
   width: 100px;
   height: 25px;
   margin-top: 20px;
   margin-left: 5px;
}
#loginBtn {
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
#loginBtn:hover{
   color: #FFFFFF;
   background-color: #f37321;
}
input[type='text']:focus, input[type='password']:focus{
	outline-color: #fcba03;
}
.popup {
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
.popup_entity_txt {
   font-size: 12pt;
   font-weight: bold;
   text-align: center;
   line-height: 50px;
   width: 265px;
   height:40px;
   margin: 30px auto 30px auto;
}
#yesBtn{
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
#yesBtn:hover {
   background-color: #f37321;
   color: white;
}
.btn_list a{
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
.btn_list a:first-child {
   border-radius: 0 0 0 10px; 
}
.btn_list a:last-child {
   border-radius: 0 0 10px 0; 
}
.btn_list a:hover {
   background-color: #f37321;
   color: white;
}
.bg {
	display: inline-block;
	width: 100%;
	height: 100%;
	position: fixed;
	top: 0px;
	left: 0px;
	background-color: #000000;
	z-index: 400;
	opacity: 0.2;
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

.pref_filter, .category_filter {
	float: left;
	margin: 20px 20px 20px 0px;
	width: 100px;
	height: 35px;
}

.pref_filter {
	margin-left: 520px;
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

#container {
	display: block;
	width: 1000px;
	margin: 0 auto;
}

.title_area {
	width: 100%;
	height: 100px;
	margin-top: 70px;
}

.title_top {
	width: 100%;
	height: 50px;
	border-bottom: 2px solid;
}

.title_bottom {
	width: 100%;
	height: 50px;
	padding-top: 40px;
	padding-left: 30px;
}

.input_title, .input_memo {
	font-size: 18pt;
	color: #2e3459;
	padding: 5px 0 5px;
}

.title_font {
	font-size: 18pt;
	font-weight: bold;
	margin-bottom: 20px;
}

.title_top span {
	font-size: 10pt;
	float: right;
	margin-top: 15px;
}

.asterisk {
	color: red;
	font-weight: bold;
	margin-right: 5px;
	padding-top: 2px;
}
.date_area {
	width: 100%;
	height: 650px;
	margin-top: 100px;
}

.schedule {
	text-align: center;
	width: 100%;
	margin: 0 auto;
	height: 80px;
	background-color: #ffd666;
	border-radius: 20px;
	margin-top: 30px;
	margin-bottom: 30px;
	font-size: 12pt;
	font-weight: 900;
}

.write_area {
	display: inline-block;
}
.text_area {
	display: inline-block;
}
#inputContents {
	resize: none;
    width: 700px;
    height: 400px;
    position: absolute;
    margin-left: 100px;
}
.date_nav ul li:first-child{
	background-color: #2e3459;
	color: white;
}

.date_nav {
	height: 50px;
}

.date_nav span img {
	width: 20px;
	height: 20px;
	cursor: pointer;
}
.date_nav span {
	top: 3px;
	position: relative;
}

.date_nav ul {
	height: 50px;
	width: 900px;
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
	cursor: pointer;
}

.date_nav ul li:active, .date_nav ul li.on {
	border: 1px solid #2e3459;
	background-color: #2e3459;
	color: white;
	box-shadow: rgba(0, 0, 0, 0.09) 0 6px 9px 0;
}

caption {
	display: none;
}

a {
	text-decoration: none;
	color: inherit;
}

.board_list {
	margin: 0 auto;
	width: 800px;
	max-height: 600px;
	border-top: 2px solid #2e3459;
	border-bottom: 2px solid #2e3459;
}

.board_list tr {
	border-bottom: 1px solid #ccc;
	border-left: 2px solid #2e3459;
	border-right: 2px solid #2e3459;
}

.board_list th, .board_list td {
	padding: 10px;
	font-size: 10pt;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
}

.board_list td {
	text-align: center;
}

.board_list tbody tr td:nth-child(4) {
	text-align: left;
}

 .enroll_btn, .cancel_btn  {
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

.enroll_btn, .cancel_btn {
	margin: 0 auto;
}
.enroll_btn {
	margin-right: 40px;
}

.enroll_btn:hover{
	border: 2px solid #2e3459;
	background-color: #2e3459;
	color: white;
}

.del_btn:hover, .cancel_btn:hover {
	border: 2px solid #F1404B;
	background-color: #F1404B;
	color: white;
}

.spot_area {
	width: 100%;
	height: 833px;
	margin-top: 100px;
}

.path_area {
	width: 100%;
	height: 680px;
	margin-top: 30px;
	padding: 0;
}

.map_wrap {
	width: 1000px;
	height: 680px;
	z-index: 100;
	position: absolute;
}

.spot_wrap {
	width: 300px;
	height: 640px;
	z-index: 300;
	position: absolute;
	margin-left: 20px;
	margin-top: 20px;
}

.search_area {
	width: 300px;
	height: 571px;
	background-color: white;
	border-radius: 0 0 20px 20px;
	box-shadow: rgba(0, 0, 0, 0.09) 0 6px 9px 0;
}

.search_top {
	display: inline-block;
	width: 255px;
	height: 30px;
	margin-bottom: 20px;
	padding: 0 0 5px 5px;
	position: relative;
	top: 10px;
	left: 20px;
	border-radius: 20px;
	border: 1px solid #ccc;
}

.input_spot {
	position: absolute;
	top: 5px;
	left: 10px;
	font-size: 10pt;
	color: #2e3459;
	border: none;
	padding: 5px 0 5px;
}

.search_top img {
	position: relative;
	width: 25px;
	height: 25px;
	padding: 3px 7px 0 0;
	float: right;
}

.search_bottom {
	width: 300px;
	height: 515px;
	background-color: #f2f2f2;
	border-radius: 0 0 20px 20px;
	padding-top: 5px;
}

.spot_box {
	width: 250px;
	height: 140px;
	margin: 22px 25px 0 25px;
	background: url("./resources/images/pin.png"), white;
	background-position: 10px 15px;
	background-size: 40px 40px;
	background-repeat: no-repeat;
	border-radius: 10px;
	box-shadow: rgba(0, 0, 0, 0.09) 0 6px 9px 0;
	font-size: 9pt;
	color: #2e3459;
	overflow: auto;
}

.spot_box em {
	display: inline-block;
	margin: 21px 0 0 26px;
	font-weight: bold;
}

.spot_box h3 {
	display: inline-block;
	position: relative;
	top: 3px;
	left: 20px;
	width: 190px;
}

.spot_box p {
	width: 200px;
	padding-left: 25px;
	margin-bottom: 7px;
}

.spot_box input {
	padding: 5px 10px;
	border-radius: 20px;
	font-size: 12px;
	font-weight: bold;
	color: #2e3459;
	background-color: white;
	border: 2px solid #2e3459;
	text-align: center;
	margin-left: 95px;
	cursor: pointer;
}

.spot_box input:hover {
	border: 2px solid #2e3459;
	background-color: #2e3459;
	color: white;
}
/*  .map_fold:hover .spot_wrap{ 
			수정! script로 hidden주기
		 } */
.map_wrap img {
	width: 100%;
	height: 680px;
}

.hash_area {
	width: 100%;
	height: 365px;
	margin-top: 100px;
}

.hash_box {
	width: 100%;
	margin: 0 auto;
	height: 80px;
	background-color: #ffd666;
	border-radius: 20px;
	margin-top: 30px;
	margin-bottom: 30px;
	font-size: 10pt;
	font-weight: bold;
}

.category_area {
	display: inline-block;
	width: 300px;
	height: 80px;
	padding-left: 40px;
}

.category_area span {
	font-size: 10pt;
	float: left;
	margin-top: 30px;
}

.pref_filter, .category_filter {
	float: left;
	margin: 30px 0px 20px 20px;
	width: 80px;
	height: 24px;
	padding: 1px 2px 1px 2px;
}

.hash {
	display: inline-block;
	position: absolute;
	width: 600px;
	height: 80px;
	padding-left: 40px;
}

.hash_input {
	margin: 30px 0 0 20px;
	height: 20px;
	width: 480px;
}

.enroll_area {
	width: 100%;
	height: 80px;
	padding-top: 20px;
	text-align: center;
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
.text_area_style{
	width: 1000px;
	height: 600px;
	white-space: pre-wrap;
}
#att{
	display:none;
}
#photo{
	margin-top: 20px;
	width: 1000px;
	height: 660px;
}
#fileName{
	font-size: 12pt;
}
#admin{
	display: none;
}
</style>
<script type="text/javascript"
		src="resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript" src="resources/script/jquery/jquery.form.js"/></script>
<script type="text/javascript">
$(document).ready(function() {
	var index = 0;
	var photo = ["", "", "", "", ""];
	var memo = ["", "", "", "", ""];
	var contents = ["", "", "", "", ""];
	
	var popupText = ""; //공통 팝업에 들어가는 문구 담아줄 변수
	
	//로그인 상태 확인
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
	
	$(".pref_filter").on("change", function(){
		var html = "";
		
		if($(".pref_filter").val() == 2)
		{
			html +=" 	<option value=\"0\">도보</option>";
			html +=" 	<option value=\"1\">자가용</option>";
			html +=" 	<option value=\"2\">버스</option>";
			html +=" 	<option value=\"3\">기차</option>"; 
			html +=" 	<option value=\"4\">배 </option>";
			html +=" 	<option value=\"5\">자전거</option>";
		}
		if($(".pref_filter").val() == 3)
		{
			html +=" 	<option value=\"0\">바다</option>";
			html +=" 	<option value=\"1\">계곡</option>";
			html +=" 	<option value=\"2\">산</option>";
			html +=" 	<option value=\"3\">유적지</option>"; 
			html +=" 	<option value=\"4\">박물관 </option>";
			html +=" 	<option value=\"5\">테마파크</option>";
			html +=" 	<option value=\"6\">전망대</option>";
			html +=" 	<option value=\"7\">건축물</option>";
			html +="	<option value=\"8\">거리광장</option>";
			html +=" 	<option value=\"9\">시장</option>"; 
		}
		if($(".pref_filter").val() == 4)
		{
			html +=" 	<option value=\"0\">농장</option>";
			html +=" 	<option value=\"1\">공연</option>";
			html +=" 	<option value=\"2\">축제</option>";
			html +=" 	<option value=\"3\">마사지</option>"; 
			html +=" 	<option value=\"4\">온천 </option>";
			html +=" 	<option value=\"5\">투어</option>";
			html +=" 	<option value=\"6\">야외활동</option>";
			html +=" 	<option value=\"7\">식도락</option>";
		}
		else
		{
			html +=" 	<option value=\"0\">카테고리</option>";
		}
		
		$(".category_filter").html(html);
	});//pref_filter change end
	
	var save = 0;
	
	$(".date_nav ul").on("click", "li", function(){
		
		save = 1;
		
		$(".date_nav ul li").css("background-color", "white");
		$(".date_nav ul li").css("color", "black");
		
		contents[index] = $("#inputContents").val();
		memo[index] = $(".input_memo").val();
		
		index = $(this).attr($(this).attr("class"));
		$("#inputContents").val(contents[index]);
		$(".input_memo").val(memo[index]);
		$("#fileName").html(photo[index].substring(20));
		
		if(photo[index] != "")
		{
			var html = "";
			var path = "resources/upload/"+ photo[index];
			html = "<img src=\""+path+"\" id=\"photo\"/>";
			$("#photoArea").html(html);
		}
		else
		{
			$("#photoArea").html("");
		}
		
		if($(this).attr($(this).attr("class")) == 0)
		{
			$(".date_nav ul li:first-child").css("background-color", "#2e3459");
			$(".date_nav ul li:first-child").css("color", "white");
		}
		else if($(this).attr($(this).attr("class")) == 1)
		{
			$(".date_nav ul li:nth-child(2)").css("background-color", "#2e3459");
			$(".date_nav ul li:nth-child(2)").css("color", "white");
		}
		else if($(this).attr($(this).attr("class")) == 2)
		{
			$(".date_nav ul li:nth-child(3)").css("background-color", "#2e3459");
			$(".date_nav ul li:nth-child(3)").css("color", "white");
		}
		else if($(this).attr($(this).attr("class")) == 3)
		{
			$(".date_nav ul li:nth-child(4)").css("background-color", "#2e3459");
			$(".date_nav ul li:nth-child(4)").css("color", "white");
		}
		else
		{
			$(".date_nav ul li:last-child").css("background-color", "#2e3459");
			$(".date_nav ul li:last-child").css("color", "white");
		}
	}); //date_nav ul click end
	
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
			$("#postForm").submit();
		}//if ~ else end 클릭된 것에 따라서 해당 프로필 or 글로 이동
	}); //notification tbody span tr click end
	
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

	$("#inputPW, #inputID").on("keypress", function(){
		$(".popup").remove();
		$(".bg").remove();
		if(event.keyCode == 13)
			$("#loginBtn").click();
	});//inputPW, inputID 
	//keypress end 엔터시 로그인 버튼 클릭
	
	$("#photoBtn").on("click", function(){
		$("#att").click();
	}); //photoBtn
	
	$("#att").on("change", function() {
		$("#fileName").html($(this).val().substring($(this).val().lastIndexOf("\\") + 1));
		
		var fileForm = $("#fileForm");
		
		fileForm.ajaxForm({
				success : function(res) {
				if(res.result == "SUCCESS") {
					// 올라간 파일명 저장
					if(res.fileName.length > 0) 
					{
						photo[index] = res.fileName[0];
						
						var path = "resources/upload/"+res.fileName[0];
						html = "<img src=\""+path+"\" id=\"photo\"/>";
						$("#photoArea").html(html);
					}
				} 
				else 
				{
					alert("파일 업로드중 문제 발생");
				}
			},
			error : function() {
				alert("파일 업로드중 문제 발생");
			}
		}); // ajaxForm end
		fileForm.submit();
	}); //att change end
	
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
	
	$(".enroll_btn").on("click", function(){
		if($.trim($(".input_title").val()) == "")
		{
			alert("제목 비어있음");
			return false;
		}
		else if($(".pref_filter option:selected").val() == 0)
		{
			alert("선호도를 선택하세요.");
			return false;
		}
		
		if(save == 0)
		{
			contents[0] = $("#inputContents").val();
			memo[0] = $(".input_memo").val();
		}
		var c = "#contents";
		var m = "#memo";
		var p = "#photo";
		
		for(var i = 0; i < 5; i++)
		{
			c += i;
			m += i;
			p += i;
			
			$(c).val(contents[i]);
			$(m).val(memo[i]);
			$(p).val(photo[i]);
						
			c = "#contents";
			m = "#memo";
			p = "#photo";
		}
		
		if(contents[0] == "" || memo[0] == "" || photo[0] == "")
		{
			alert("Diary1을 채워주세요.");
			return false;
		}
		
		var params = $("#addJournalForm").serialize();

		$.ajax({
			url: "addJournals",
			data: params,
			dataType:"json",
			type: "post",
			success:function(result)
			{
				location.href ="journalBoard";
			}, //success end
			error: function(request, status, error) {
				console.log(error);
			} // error end
		}); //ajax end 
	}); //enroll_btn click end
	
	$("#journalBoard").on("click", function(){
    	location.href = "journalBoard";
    });//postBoard click end
    
    $("#community").on("click", function(){
    	location.href = "community";
    });//community click end
  
   	$("#travelWriter").on("click", function() {
  		location.href = "travelWriterRank";
  	}); //travelWriter click end
   	
	$("#clientCenter").on("click", function() {
  		location.href = "clientCenterQuestion";
  	}); //clientCenter click end
	
  	$("#admin").on("click", function() {
  		location.href = "memAdmin";
  	}); //admin click end
  	
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
  	
 	// 메인검색창 넘어가는 부분
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
}); //document ready end
function commonPopup(txt) //공통적으로 쓰이는 팝업 , txt는 팝업에 들어갈 문자열 
{
	var html = "";
	
	html 	 +="<div class=\"popup\">";
	html	 +="	 <div class=\"popup_entity_txt\">"+ txt +"</div>";
	html	 +="     <div class=\"btn_list\">";
	html	 +="        <div id=\"yesBtn\">예</div>";
	html	 +="     </div>";
	html	 +="</div>";
	html	 +="<div class=\"bg\"></div>";
	
	$("body").append(html);
	
	$("#yesBtn").on("click", function(){ 
		$(".popup").remove();
		$(".bg").remove();
	}); //yesBtn click end
}//commonPopup end
function findBtnPopup()
{
	var html = "";
	
	html +="<div class=\"popup\">";
	html +="	   <div class=\"popup_entity_txt\">무엇이 필요하십니까?</div>";
	html +="       <div class=\"btn_list\">";
	html +="       		<a href=\"findID\">ID찾기</a>";
	html +="      		<a href=\"findPW\">PW찾기</a>";
	html +="       <img src=\"./resources/images/cancel.png\" id=\"cancelImg\"/>";
	html +="    </div>";
	html +="</div>";
	html +="<div class=\"bg\"></div>";
	
	$("body").append(html);
	
	$("#cancelImg").on("click", function(){ 
		$(".popup").remove();
		$(".bg").remove();
	}); //cancelImg click end
}//findBtnPopup end
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
</script>
</head>
<body>
	<form action="#" id="memForm">
		<input type="hidden" id="MEM_NO" name="MEM_NO" value="${sMEM_NO }"/>
		<input type="hidden" id="page" name="page" value="1"/>
		<input type="hidden" id="GBN" name="GBN" value="1"/>
		<input type="hidden" id="firstPage" name="firstPage" value="1"/>
	</form>
	<form action="#" id="notificationForm">
		<input type="hidden" id="NOTF_NO" name="NOTF_NO" value=""/>
	</form>
	<form action="userPage" id="userForm" method="post">
		<input type="hidden" id="userNo" name="userNo" value=""/>
	</form>
	<form action="journal" id="journalForm" method="post">
		<input type="hidden" id="memNo" name="memNo" value="${sMEM_NO }"/>
		<input type="hidden" id="journalNo" name="journalNo" value=""/>
	</form>
	<form action="post" id="postForm" method="post">
		<input type="hidden" id="postNo" name="postNo" value=""/>
		<input type="hidden" id="newPostNo" name="newPostNo" value="1"/>
		<input type="hidden" id="loginUserNo" name="loginUserNo" value="${sMEM_NO}" />
	</form>
	<form id="fileForm" action="fileUploadAjax" method="post" enctype="multipart/form-data">
		<input type="file" name="att" id="att" /> <!-- attach : 첨부 -->
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
                     	<form action="#" id="loginForm">
	                        <input type="button" id="loginBtn" value="로그인" />
	                        <input type="password" id="inputPW" name="inputPW" placeholder="PW" />
	                        <input type="text" id="inputID" name="inputID" placeholder="ID" />
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
		<div id="path_info">
			<span> <a href="#"><img alt="메인페이지" src="./resources/images/home.png"
					class="home_icon"></a>
			</span> &nbsp;&nbsp;>&nbsp;&nbsp; <span> <a href="#">여행일지</a>
			</span> &nbsp;>&nbsp;&nbsp;일지 작성
		</div>
		<div id="container">
		<form action="journalBoard" id="addJournalForm" method="post">
			<input type="hidden" id="MEM_NO" name="MEM_NO" value="${sMEM_NO }"/>
			
			<input type="hidden" id="contents0" name="contents"/>
			<input type="hidden" id="memo0" name="memo"/>
			<input type="hidden" id="photo0" name="photo"/>
			
			<input type="hidden" id="contents1" name="contents"/>
			<input type="hidden" id="memo1" name="memo"/>
			<input type="hidden" id="photo1" name="photo"/>
			
			<input type="hidden" id="contents2" name="contents"/>
			<input type="hidden" id="memo2" name="memo"/>
			<input type="hidden" id="photo2" name="photo"/>
			
			<input type="hidden" id="contents3" name="contents"/>
			<input type="hidden" id="memo3" name="memo"/>
			<input type="hidden" id="photo3" name="photo"/>
			
			<input type="hidden" id="contents4" name="contents"/>
			<input type="hidden" id="memo4" name="memo"/>
			<input type="hidden" id="photo4" name="photo"/>
			<div class="title_area">
				<div class="title_top">
					<strong class="title_font">1. 제목 입력</strong> <span>필수 입력 사항</span>
				</div>
				<div class="title_bottom">
					<input type="text" class="input_title" name="inputTitle" placeholder="여행일지 제목"
						size="50" maxlength="30" autofocus required />
				</div>
			</div>
			<div class="date_area">
				<div class="title_top">
					<strong class="title_font">2. 일정 추가</strong> <span>필수 입력 사항</span>
				</div>
				<div class="schedule">
					<nav class="date_nav">
							<ul>
								<li class="diary" diary="0">DIARY 1</li>
								<li class="diary" diary="1">DIARY 2</li>
								<li class="diary" diary="2">DIARY 3</li>
								<li class="diary" diary="3">DIARY 4</li>
								<li class="diary" diary="4">DIARY 5</li>
							</ul>
					</nav>
				</div>
				<div class="write_area">
					<span class="text_area"><textarea rows="50" cols="15" id="inputContents" class="text_area_style"></textarea></span>
				</div>
			</div>
			<div class="spot_area">
				<div class="title_top">
					<strong class="title_font">3. 메모 & 사진 추가</strong> <span>필수 입력 사항</span>
				</div>
				<div class="help">
					<span>일정 선택 후 수정, 삭제가 가능합니다.&#9;일정은 하나씩 선택하십시오</span>
				</div>
				<div class="schedule">
					<nav class="date_nav">
							<ul>
								<li class="diary" diary="0">DIARY 1</li>
								<li class="diary" diary="1">DIARY 2</li>
								<li class="diary" diary="2">DIARY 3</li>
								<li class="diary" diary="3">DIARY 4</li>
								<li class="diary" diary="4">DIARY 5</li>
							</ul>
					</nav>
				</div>
				<input type="text" class="input_memo" placeholder="메모"
						size="50" maxlength="10" autofocus required />
				<input type="button" value="사진 추가" id="photoBtn"/><span id="fileName"></span>
				<div id="photoArea"></div>
			</div>
			<div class="hash_area">
				<div class="title_top">
					<strong class="title_font">4. 등록</strong> <span>필수 입력 사항 </span><span
						class="asterisk">&#42;</span>
				</div>
				<div class="help">
					<span>선호도 선택 후 카테고리를 지정하십시오.&#9;해시태그는 선택 사항이며 '#키워드' 형태로
						입력하십시오.</span>
				</div>
				<div class="hash_box">
					<div class="category_area">
						<span class="asterisk">&#42;</span><span>카테고리</span> <select
							class="pref_filter" name="inputCategory">
							<option value="0">선호도</option>
							<option value="2">교통</option>
							<option value="3">관광</option>
							<option value="4">활동</option>
						</select> <select class="category_filter" name="inputSubCategory">
							<option value="0">카테고리</option>
						</select>
					</div>
					<div class="hash">
						<label>해시태그<input type="text" class="hash_input" name="inputHashtag" size="70" maxlength="70" placeholder="#해시태그1#해시태그2"></label>
					</div>
				</div>
				<div class="enroll_area">
					<input type="button" class="enroll_btn" value="등 록" /> <input type="button" class="cancel_btn" value="취 소" />
				</div>
			</div>
		   <input type="hidden" id="startDate" name="startDate" value="${startDate }"/>
		   <input type="hidden" id="endDate" name="endDate" value="${endDate }"/>
		   <input type="hidden" id="regionNo" name="regionNo" value="${regionNo }"/>
		</form>
		</div>
		<div id="footer">
			<p>
				POPJOURNEY<br /> GDJ-35기 LEE Eun-Soo, LEE In-Bok, CHOI Jeong-Min<br />
				Copyright© POPJOURNEY. All Rights Reserved.
			</p>
		</div>
	</div>
</body>
</html>