<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>북마크</title>
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

.btns { 
	display: inline-block;
	position: relative;
	vertical-align: top;
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
   width: 40px;
   margin-right: 20px;
   margin-top: 15px;
   cursor: pointer;
   border-radius: 50%;
}
#notificationPhoto {
   margin-left: 200px;
}
.banner {
	width: 100%;
	height: 70px;
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
   	z-index: 300;
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

input[type='text']:focus, input[type='password']:focus, select:focus,
	textarea:focus {
	outline-color: #fcba03;
}

input[type='checkbox'] {
	margin: 10px 10px 0 310px;
	width: 20px;
	height: 20px;
}
/* 여기까지 헤더 레이아웃 !!! */
#container {
	display: block;
	width: 1280px;
	margin: 0 auto;
}

.sub_profile {
	z-index: 100;
	width: 100%;
	height: 300px;
	background-color: #fcba03;
}

.info {
	position: relative;
	z-index: 1;
	width: 100%;
	padding-top: 30px;
	text-align: center;
	font-size: 23pt;
	font-weight: bold;
	color: #2e3459;
}

.info img {
	border-radius: 100px;
	width: 150px;
	height: 150px;
}

.info>span {
	font-size: 12pt;
}

.board_menu {
	width: 100%;
	height: 135px;
	margin-top: 10px;
	border-bottom: 2px solid #2e3459;
}

.menu_nav {
	text-align: center;
	height: 50px;
	display: block;
	margin-top: 30px;
}

.menu_nav ul li {
	height: 100px;
	list-style: none;
	float: left;
	text-align: center;
	color: #2e3459;
	margin-left: 140px;
	line-height: 25px;
	text-decoration: none;
	font-size: 18px;
	font-weight: 900;
}

.menu_nav ul li {
	display: inline-block;
	height: 50px;
	text-decoration: none;
	color: #2e3459;
}

.menu_nav ul li:hover img, .menu_nav ul li.on img {
	background-color: #f37321;
}

.menu_nav ul li img {
	margin: 10px 20px 0px 20px;
	padding: 4px;
	width: 30px;
	height: 30px;
	background-color: #2e3459;
	border-radius: 100px;
}

#left_group {
	display: inline-block;
	position: relative;
	height: 100%;
	padding: 0 0 0 50px;
}

#left_group li {
	margin: 0px;
}

#left_group img {
	margin-left: 0;
	margin-right: 0;
	cursor: pointer;
}

.right_group {
	padding-left: 0;
	display: inline-block;
	width: 58%;
	height: 100%;
}

.right_group img {
	cursor: pointer;
}

.right_group li:nth-child(1) img {
	background-color: #f37321;
}

.board_list_wrap {
	margin: 0;
	padding: 0;
	font-weight: 500;
}

a {
	text-decoration: none;
	color: inherit;
}

.board_list {
	width: 100%;
	border-top: 2px solid #2e3459;
}

#path_info {
	width: calc(100% -20px);
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

.folder_btn_list {
	height: 65px;
	margin: 0 0 20px 1070px;
	float: right;
}

.folder_btn_list div span {
	font-size: 18pt;
}

.edit_btn, .del_btn, .add_btn {
	display: inline-block;
	text-align: center;
	width: 35px;
	margin-left: 10px;
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

.edit_btn span {
	padding-left: 2px;
}

.add_btn:hover, .edit_btn:hover {
	border: 2px solid #2e3459;
	background-color: #2e3459;
	color: white;
}

.del_btn:hover {
	border: 2px solid #F1404B;
	background-color: #F1404B;
	color: white;
}
.edit_btn input {
	padding: 5px 10px;
	border-radius: 20px;
	font-size: 13px;
	font-weight: bold;
	color: white;
	background-color: #2e3459;
	border: 2px solid #2e3459;
	box-shadow: rgba(0, 0, 0, 0.09) 0 6px 9px 0;
	cursor: pointer;
}
.gallery {
	margin-top: 30px;
	padding: 30px 0 0 45px;
	display: inline-block;
}

.post, .folder {
	float: left;
	width: 340px;
	cursor: pointer;
	margin: 0 0 40px 40px;
	border: 1px solid #f1f1f1;
	font-size: 10pt;
	color: black;
}

.post {
	height: 390px;
}

.folder {
	height: 350px;
}

.folder_info {
	width: 294px;
	height: 100px;
	position: relative;
	display: inline-block;
	padding: 0 23px 0 23px;
}

.folder_thumb {
	text-align: center;
	height: 200px;
	display: block;
	position: relative;
}

.folder_thumb img {
	width: 200px;
	height: 200px;
}

.folder_info p:nth-child(2) {
	width: 294px;
	height: 50px;
}

.folder:hover, .post:hover {
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
	display: inline-block;
	width: 600px;
	height: 500px;
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
	margin: 30px auto 30px auto;
}

.popup_contents_txt>div>span {
	margin-top: 12px;
}

.popup_contents_txt>div:first-child {
	font-size: 18pt;
	padding-bottom: 7px;
	border-bottom: 2px solid #f37321;
}

.radio_title {
	margin-top: 15px;
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

.folder_radio {
	text-align: center;
	margin: 15px 0;
}

.folder_radio_box {
	display: inline-block;
	border: 1px solid #ccc;
	border-radius: 20px;
	padding: 0 10px 5px 10px;
	margin: 0 20px;
}

.folder_radio img {
	width: 100px;
	height: 100px;
}

.folder_radio input[type=radio]:checked+label {
	color: #000;
}

.popup_contents_txt div:first-child  span {
	float: right;
	font-size: 10pt;
}

.pop_name {
	margin-top: 10px;
	margin-bottom: 20px;
	width: 527px;
}

.pop_memo {
	resize: none;
	margin-top: 10px;
	width: 530px;
}

.asterisk {
	color: red;
	font-weight: bold;
	margin-right: 5px;
	padding-top: 2px;
}

.btn_list span {
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

.btn_list span:first-child, .alert_btn_list2 span:first-child {
	border-radius: 0 0 0 10px;
}

.btn_list span:last-child, alert_btn_list2 span:last-child {
	border-radius: 0 0 10px 0;
}

.btn_list span:hover, .alert_btn_list span:hover, .alert_btn_list2 span:hover
	{
	background-color: #f37321;
	color: white;
}

.alert_popup {
	display: none;
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

.alert_popup_entity_txt {
	font-size: 12pt;
	font-weight: bold;
	text-align: center;
	line-height: 50px;
	width: 265px;
	height: 40px;
	margin: 30px auto 30px auto;
}

.alert_btn_list span {
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
	border-radius: 0 0 10px 10px;
}
.alert_btn_list2 span {
	text-decoration: none;
	display: inline-block;
	text-align: center;
	width: 120px;
	height: 30px;
	padding: 10px 15px 10px 15px;
	font-size: 12pt;
	color: #f37321;
	font-weight: bold;
	line-height: 30px;
	border-radius: 0 0 10px 10px;
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
#admin{
	display: none;
}
</style>
<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var path = "";
	
	if("${sPHOTO_PATH}" != "")
	{
		path = "resources/upload/" + "${sPHOTO_PATH}";
		
		$("#profilePhoto").attr("src", path);
	}
	else
	{
		path = "./resources/images/profile.png";

		$("#profilePhoto").attr("src", path);
	}
	
	if("${sGRADE_NO}" == "0")
	{
		$("#admin").show();
	}

	var html = "";  
	
	html += "<img alt=\"profile\" src=\"resources/upload/${sPHOTO_PATH}\"class=\"profile_img\">";
	html += "<div>${sNIC}</div>";
	html += "<span>${sINTRO}</span>"; 
	
	$(".info").html(html);
	
	var params = $("#memForm").serialize();
	
	$.ajax({
		url:"myBMKs",
		data:params,
		dataType:"json",
		type:"post",
		success:function(result){
			if(result.msg == "success")
			{
				makeBMK(result.BMK);	
			}
			else
			{
				alert("실패");
			}
		},//success end
		error:function(error){
			console.log(error);
		}//error end
	}); //ajax end
	
	params = $("#memForm").serialize();
	
	$.ajax({
		url:"myBMKCnts",
		data:params,
		dataType:"json",
		type:"post",
		success:function(result){
			if(result.msg == "success")
			{
				$("#BMKCnt").val(result.cnt);
			}
		},//success end
		error:function(error){
			console.log(error);
		}//error end
	}); //ajax end
	
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
	
	$(".gallery").on("change", "input:checkbox", function(){
		$("input:checkbox").prop("checked", false);
		$(this).prop("checked", true);
		$("#box").val($(this).attr($(this).attr("class")));
	}); //follow_list input:checkbox changed end
	
	$(".edit_btn").on("click", function(){
		if($("input[type='checkbox']").filter(':checked').size() == 0)
		{
			alert("하나라도 선택 ㄱㄱ");
		}
		else
		{
			editBMK();
		}
	}); //edit_btn click end
	
	$(".add_btn").on("click", function(){
		if($("#BMKCnt").val() == 9)
		{
			alert("생성 가능한 최대수 도달");
		}
		else
		{
			makeAddPopup();
		}
	}); //add_btn click end
	
	$(".del_btn").on("click", function(){
		var params = $("#BMKForm").serialize();
		
		$.ajax({
			url:"delBMKs",
			data:params,
			dataType:"json",
			type:"post",
			success:function(result){
					alert("삭제성공");
					location.reload();
			},//success end
			error:function(error){
				console.log(error);
			}//error end
		}); //ajax end
	}); //del_btn click end
	
 	$(".gallery").on("click", ".folder_thumb, .folder_info", function(){
		$("#BMKNo").val($(this).parent().attr($(this).parent().attr("class")));

		$("#detailForm").submit();
	});//gallery folder click end 
	
	$("#follower").on("click", function(){
		location.href = "myPageFollower";
	}); //follower click end
	
	$("#following").on("click", function(){
		location.href = "myPageFollowing";
	}); //following click end
	
	$("#myPageImg").on("click", function(){
		location.href = "myPage";
	}); //myPage click end
}); //document ready end
function makeBMK(BMK)
{
	var html = "";
	
	for(data of BMK)
	{
		html += "	<div class=\"folder\" folder=\"" + data.BMK_NO + "\">";
		html += "		<input type = \"checkbox\" class=\"ck\" ck=\"" + data.BMK_NO + "\"/></label>";
		switch(data.FOLDER_IMG)
		{
		case 1:
			html += "		<span class=\"folder_thumb\"><img alt=\"썸네일\" src=\"./resources/images/backpack1.png\"></span>";
			break;
		case 2:
			html += "		<span class=\"folder_thumb\"><img alt=\"썸네일\" src=\"./resources/images/backpack2.png\"></span>";
			break;
		case 3:
			html += "		<span class=\"folder_thumb\"><img alt=\"썸네일\" src=\"./resources/images/backpack3.png\"></span>";
			break;
		}
		html += "		<div class=\"folder_info\">";
		html += "			<p>";
		html += "				<strong>" + data.FOLDER_NAME + "</strong>";
		html += "			</p>";
		html += "			<p>";
		html += "				" + data.FOLDER_MEMO + "";            
		html += "			</p>";
		html += "		</div>";
		html += "	</div>";
	}
	
	$(".gallery").html(html);
}
function makeAddPopup()
{
	var html = "";
	
	html += "    <div class=\"popup\">";
	html += "    	<div class=\"popup_contents_txt\">";
	html += "    		<div>";
	html += "    			폴더 수정<span>필수 입력 사항 </span><span class=\"asterisk\">&#42;</span>";
	html += "    		</div>";
	html += "    		<div class=\"radio_title\">";
	html += "    			<span>폴더 선택</span> <span class=\"asterisk\">&#42;</span>";
	html += "    		</div>";
	html += "    		<div class=\"folder_radio\">";
	html += "    			<div class=\"folder_radio_box\">";
	html += "    				<input type=\"radio\" id=\"folder_radio1\" value=\"1\" name=\"folder_img\"><br/>";
	html += "    		    	<label for=\"folder_radio1\"><img src=\"./resources/images/backpack1.png\"> </label>";
	html += "    			</div>";
	html += "    			<div class=\"folder_radio_box\">";
	html += "    				<input type=\"radio\" id=\"folder_radio2\" value=\"2\" name=\"folder_img\"><br/>";
	html += "    		    	<label for=\folder_radio2\"><img src=\"./resources/images/backpack2.png\"></label>";
	html += "    			</div>";
	html += "    		    <div class=\"folder_radio_box\">";
	html += "    			    <input type=\"radio\" id=\"folder_radio3\" value=\"3\" name=\"folder_img\"><br/>";
	html += "    			    <label for=\"folder_radio3\"><img src=\"./resources/images/backpack3.png\"></label>";
	html += "    		    </div>";
	html += "    		</div>";
	html += "    		<div>";
	html += "    			폴더 이름 <span class=\"asterisk\">&#42;</span><br /> <input type=\"text\" class=\"pop_name\" name=\"pop_name\" required/><br />";                    
	html += "    			폴더 메모<br /> <textarea class=\"pop_memo\" name=\"pop_memo\" rows=\"3\" cols=\"73\"  placeholder=\"폴더에 대해 간략히 설명해주십시오\" ></textarea>";                
	html += "    		</div>";
	html += "    	</div>";
	html += "    	<div class=\"btn_list\">";
	html += "    		<span id=\"add\">추 가</span> <span id=\"no\">취 소</span>";
	html += "    	</div>";
	html += "    </div>";
	html += "<div class=\"bg\"></div>"
	
	$("#wrap").append(html);
	
	$("#no").on("click", function(){
		$(".popup").remove();
		$(".bg").remove();
	}); //no click end
	
	$("#add").on("click", function(){
		if(isNaN($(":radio[name='folder_img']:checked").val())) 
		{
			alert("이용할 폴더 이미지를 선택하세요");
		}
		else if($.trim($(".pop_name").val()) == "")
		{
			alert("이름을 입력하세요.");
		}
		else
		{
			var params = $("#editForm").serialize();
			
			$.ajax({
				url:"addBMKs",
				data:params,
				dataType:"json",
				type:"post",
				success:function(result){
					if(result.msg == "success")
					{
						$(".popup").remove();
						$(".bg").remove();
						location.reload();
					}
					else
					{
						alert("실패");
					}
				},//success end
				error:function(error){
					console.log(error);
				}//error end
			}); //ajax end
		}//if ~ else end
	}); //yes click end
} 
function editBMK()
{
	var html = "";
	
	html += "    <div class=\"popup\">";
	html += "    	<div class=\"popup_contents_txt\">";
	html += "    		<div>";
	html += "    			폴더 수정<span>필수 입력 사항 </span><span class=\"asterisk\">&#42;</span>";
	html += "    		</div>";
	html += "    		<div class=\"radio_title\">";
	html += "    			<span>폴더 선택</span> <span class=\"asterisk\">&#42;</span>";
	html += "    		</div>";
	html += "    		<div class=\"folder_radio\">";
	html += "    			<div class=\"folder_radio_box\">";
	html += "    				<input type=\"radio\" id=\"folder_radio1\" value=\"1\" name=\"folder_img\"><br/>";
	html += "    		    	<label for=\"folder_radio1\"><img src=\"./resources/images/backpack1.png\"> </label>";
	html += "    			</div>";
	html += "    			<div class=\"folder_radio_box\">";
	html += "    				<input type=\"radio\" id=\"folder_radio2\" value=\"2\" name=\"folder_img\"><br/>";
	html += "    		    	<label for=\folder_radio2\"><img src=\"./resources/images/backpack2.png\"></label>";
	html += "    			</div>";
	html += "    		    <div class=\"folder_radio_box\">";
	html += "    			    <input type=\"radio\" id=\"folder_radio3\" value=\"3\" name=\"folder_img\"><br/>";
	html += "    			    <label for=\"folder_radio3\"><img src=\"./resources/images/backpack3.png\"></label>";
	html += "    		    </div>";
	html += "    		</div>";
	html += "    		<div>";
	html += "    			폴더 이름 <span class=\"asterisk\">&#42;</span><br /> <input type=\"text\" class=\"pop_name\" name=\"pop_name\"/><br />";
	html += "    			폴더 메모<br /> <textarea class=\"pop_memo\" name=\"pop_memo\" rows=\"3\" cols=\"73\"  placeholder=\"폴더에 대해 간략히 설명해주십시오\"></textarea>";
	html += "    		</div>";
	html += "    	</div>";
	html += "    	<div class=\"btn_list\">";
	html += "    		<span id=\"yes\">수 정</span><span id=\"no\">취 소</span>";               
	html += "    	</div>";
	html += "    </div>";
	html += "<div class=\"bg\"></div>"
	
	$("#wrap").append(html);

 	var params = $("#BMKForm").serialize();

 	$.ajax({
		url:"editBMKs",
		data:params,
		dataType:"json",
		type:"post",
		success:function(result){
			if(result.msg == "success")
			{
				if(result.BMK.FOLDER_IMG == 1)
				{
					$("#folder_radio1").prop("checked", true)
				}
				else if(result.BMK.FOLDER_IMG == 2)
				{
					$("#folder_radio2").prop("checked", true)
				}
				else
				{
					$("#folder_radio3").prop("checked", true)
				}
				$(".pop_name").val(result.BMK.FOLDER_NAME);		
				$(".pop_memo").val(result.BMK.FOLDER_MEMO);
			}
			else
			{
				alert("실패");
			}
		},//success end
		error:function(error){
			console.log(error);
		}//error end
	}); //ajax end  
	
	$("#no").on("click", function(){
		$(".popup").remove();
		$(".bg").remove();
	}); //no click end
	
	$("#yes").on("click", function(){
		$("#BMKNO").val($("#box").val());
		var params = $("#editForm").serialize();
		
		$.ajax({
			url:"updateBMKs",
			data:params,
			dataType:"json",
			type:"post",
			success:function(result){
				alert("수정 성공");
				location.reload();
			},//success end
			error:function(error){
				console.log(error);
			}//error end
		}); //ajax end
	}); //yes click end
} //function end
</script>
</head>
<body>
<form action="myPageBMKDetail" id="detailForm" method="post">
	<input type="hidden" id="BMKNo" name="BMKNo" value=""/>
</form>
<form action="#" id="memForm">
	<input type="hidden" id="MEM_NO" name="MEM_NO" value="${sMEM_NO}"/>
	<input type="hidden" id="BMKCnt" name="BMKCnt" value=""/>
</form>
<form action="#" id="BMKForm">
	<input type="hidden" id="MEM_NO" name="MEM_NO" value="${sMEM_NO}"/>
	<input type="hidden" id="box" name="box" value=""/>
	<input type="hidden" id="memo" name="memo"/>
</form>
<form action="#" id="editForm">
	<input type="hidden" id="MEM_NO" name="MEM_NO" value="${sMEM_NO}"/>
	<input type="hidden" id="BMKNO" name="BMKNO" value=""/>
	<div id="wrap">
		<!-- header부분 고정 -->
		<div id="header">
			<div class="banner">
				<div class="top">
					<div class="logo_area">
						<a href="main"><img alt="로고" src="./resources/images/logo.png" class="logo_photo"></a>
						<div class="site_name">우리들의 여행일지</div>
					</div>
					<div class="btns">
						<ul>
							<li><img alt="bell" src="./resources/images/bell.png" class="bell_icon" id="notificationPhoto">
							
							</li>
							<li><img alt="bookmark" src="./resources/images/bmk.png" id="bookmarkPhoto"></li>
							<li><img alt="프로필" src="" id="profilePhoto">
								<ul id="profileSlidedown">
									<li id="myPage">마이 페이지</li>
									<li id="timeline">타임라인</li>
									<li id="editProfile">프로필 수정</li>
									<li id="editInfo">회원정보 수정</li>
									<li id="logoutBtn">로그아웃</li>
								</ul></li>
						</ul>
					</div> <!-- btns end -->
				</div>
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
				type="text" class="search" placeholder="검색"> <select
				class="filter">
				<option value="0">통합검색</option>
				<option value="1">여행일지</option>
				<option value="2">자유게시판</option>
				<option value="3">닉네임</option>
			</select>
		</div>
		<div class="sub_profile">
			<div class="info">
				
			</div>
		</div>
		<div id="container">
			<div class="board_list_wrap">
				<div class="board_menu">
					<nav class="menu_nav">
						<ul id="left_group">
							<li><img alt="thumbnail" id="myPageImg" src="./resources/images/flag.png"><br />여행일지</li>
							<li><img alt="map" src="./resources/images/map.png"><br />&nbsp;&nbsp;100</li>
						</ul>
						<ul class="right_group">
							<li><img alt="bookmark" id="bookmark" src="./resources/images/bmrk.png"><br />북마크
									100</li>
							<li><img alt="follower" id="follower" src="./resources/images/follower.png"><br />팔로워
									100</li>
							<li><img alt="following" id="following" src="./resources/images/following.png"><br />팔로잉
									100</li>
						</ul>
					</nav>
				</div>
				<div id="path_info">
					<span> <img alt="메인페이지" src="./resources/images/home.png" class="home_icon">
					</span> &nbsp;&nbsp;>&nbsp;&nbsp; <span> 마이페이지 </span>
					&nbsp;&nbsp;>&nbsp;&nbsp; <span> 북마크 </span> &nbsp;>&nbsp;&nbsp;폴더1
				</div>
				<div class="folder_btn_list">
						<div class="add_btn">
							<span> &#43;</span> <br/>추  가
						</div>
						<div class="edit_btn">
							<span>  ⚙️</span> <br/>수  정
						</div>
						<div class="del_btn">
							<span> &#45;</span> <br/>삭  제
						</div>
				</div>
				<div class="gallery">

				</div><!-- gallery end -->
			</div>
		</div>
	</div>
	<div id="footer">
		<p>
			POPJOURNEY<br /> GDJ-35기 LEE Eun-Soo, LEE In-Bok, CHOI Jeong-Min<br />
			Copyright© POPJOURNEY. All Rights Reserved.
		</p>
	</div>
</form>
</body>
</html>