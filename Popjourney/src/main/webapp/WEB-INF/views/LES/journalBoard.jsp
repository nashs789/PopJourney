<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>여행게시판</title>
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

input[type='text']:focus, input[type='password']:focus, select:focus, input[type='date']:focus {
	outline-color: #fcba03;
}
/* 여기까지 헤더 레이아웃 !!! */
#container {
	display: block;
	width: 1280px;
	margin: 0 auto;
}

.top_area {
	display: inline;
}

.sub_profile {
	display: block;
	/* display:none; */
	margin: 20px 0;
	padding: 30px 0;
	height: 150px;
	border-radius: 20px;
	box-shadow: rgba(0, 0, 0, 0.09) 0 6px 9px 0;
}

.sub_profile {
	/* display: block; */
	 display:none;
}

.sub_area {
	display: block; 
	/* display:none; */
	font-size: 18px;
	font-weight: bold;
	color: black;
	text-align: center;
}

.sub_area span {
	display: block;
	margin-bottom: 20px;
}

.sub_area span:first-child {
	font-size: 18pt;
}

.sub_area span:nth-child(2) {
	font-weight: normal;
	font-size: 11pt;
}

.sub_area img {
	width: 100%;
	height: 350px;
}
.sub_profile>div {
	width: 50%;
	float: left;
}

.sub_profile>div>img {
	margin-left: 450px;
	margin-top: 5px;
	width: 140px;
	height: 140px;
	border-radius: 100px;
}

.info {
	width: 50%;
	position: relative;
	font-weight: bold;
	margin-top: 20px;
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


.board_menu {
	display: inline-block;
	width: 100%;
	height: 100px;
}

.left_nav {
	position: absolute;
	text-align: center;
	height: 100px;
	padding: 0;
	display: block;
	margin-top: 10px;
}

.right_nav {
	position: relative;
	left: 700px;
	text-align: center;
	height: 100px;
	padding: 0 0 0 100px;
	display: block;
	margin-top: 10px;
	width: 500px;
}

.board_menu nav ul li {
	list-style: none;
	float: left;
	text-align: center;
	color: #2e3459;
	margin-left: 30px;
	line-height: 25px;
	text-decoration: none;
	font-size: 18px;
	font-weight: bold;
}

.left_nav ul li {
	display: inline-block;
	height: 100px;
	text-decoration: none;
	color: #2e3459;
}

.right_nav ul li:nth-last-child {
	height: 100px;
}

.board_menu nav ul li img {
	margin: 10px 20px 0px 20px;
	padding: 4px;
	width: 30px;
	height: 30px;
	border-radius: 100px;
	cursor: pointer;
}

.img_none {
	cursor: pointer;
	margin-top: 53px;
}

.board_menu nav ul li:hover img {
	background-color: #f37321;
}

.img_none:hover {
	color: #f37321;
}

#path_info {
	height: 35px;
	font-size: 10pt;
	padding-top: 5px;
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

.board_list_wrap {
	margin: 0;
	padding: 0;
	font-weight: 500;
	border-top: 1px solid #ccc;
}

.category_nav {
	width: 740px;
	margin: auto;
	height: 130px;
	position: relative;
	text-align: center;
	padding: 0;
	display: block;
	margin-top: 50px;
}

#category_all {
	margin-left: 15px;
}

.category_nav ul li {
	display: inline-block;
	height: 30px;
	text-decoration: none;
	color: #2e3459;
	list-style: none;
	float: left;
	text-align: center;
	margin: 0 30px;
	line-height: 25px;
	font-size: 18px;
	font-weight: 900;
}

#c_bottom li {
	height: 50px;
}

.category_nav>ul>li:hover {
	background-color: #2e3459;
	color: white;
}
#c_bottom {
	position: absolute;
	width: 100%;
	float: left;
	text-align: center;
	padding: 0 20px;
	left: 0;
	display: none;
	background-color: #fcba03;
	box-sizing: border-box;
}

#c_bottom li {
	display: inline-block;
	line-height: 50px;
	margin: 0 15px;
	cursor: pointer;
}

a {
	text-decoration: none;
	color: inherit;
}

.board_list {
	width: 100%;
	border-top: 2px solid #2e3459;
}

.gallery {
	padding: 30px 0 0 45px;
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
	border-radius: 50%;
}

.post_profile>span {
    height: 30px;
    position: absolute;
    line-height: 15pt;
    margin-left: 8px;
    width: 100px;
    font-size: 10pt;
    font-weight: bold;
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
.paging_wrap {
	width: 100%;
	height: 100px;
	padding-top: 50px;
	font-size: 18pt;
	text-align: center;
	display: inline-block;
}
.paging_wrap span{
	margin-left: 15px;
	cursor: pointer;
}
.on{
	font-weight: bold;
	color: red;
	text-decoration: underline;
}
#admin{
	display: none;
}
.board_search>.filter {
	float: right;
	margin: 20px 0px 20px 0px;
}

.board_search>.search {
	float: right;
	margin: 20px 0px 20px 0px;
	width: 250px;
	height: 29px;
}

.board_search>.search_icon {
	float: right;
	margin: 17px 0px 13px 0px;
	height: 39px;
	cursor: pointer;
	background-color: #2e3459;
	border-radius: 5px;
}

.board_search>.search_icon:hover {
	background-color: #fcba03;
}

#footer {
	display: inline-block;
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
	/* display: inline-block; */
	width: 600px;
	height: 210px;
	background-color: #fcfcfc;
	box-shadow: rgba(0, 0, 0, 0.09) 0 6px 9px 0;
	position: fixed;
	top: calc(50% - 105px);
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
	height: 100px;
	margin: 30px auto 30px auto;
}

.popup_contents_txt form {
	text-align: center;
}

.category_area {
	margin-top: 15px;
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
	margin-bottom: 15px;
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
	cursor: pointer;
}

.btn_list span:first-child {
	border-radius: 0 0 0 10px;
}

.btn_list span:last-child {
	border-radius: 0 0 10px 0;
}

.btn_list span:hover, .alert_btn_list span:hover {
	background-color: #f37321;
	color: white;
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
.c_top{
	cursor: pointer;
}
.all img{
	background-color: #f37321;
}
.writer img, .traveler img{
	background-color: #2e3459;
}
</style>
<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	var params = $("#journalForm").serialize();
	
	$.ajax({
		url:"journalListCnts",
		data: params,
		dataType:"json",
		type:"post",
		success: function(result){
			if(result.msg == "success")
			{
				$("#cnt").val(result.cnt);
				$("#startCnt").val(result.pb.startCount);
				$("#endCnt").val(result.pb.endCount);
				$("#maxCnt").val(result.pb.maxPcount);
				$("#startPCnt").val(result.pb.startPcount);
				$("#endPCnt").val(result.pb.endPcount);
				
				var params = $("#journalForm").serialize();

				$.ajax({
					url:"journalLists",
					data: params,
					dataType:"json",
					type:"post",
					success: function(result){
						makeJournalList(result.list);
						makePage();
					}, //success end
					error: function(error){
						console.log(error);
					} //error end
				}); //ajax end
			}
			else
			{
				alert("실패");
			}
		}, //success end
		error: function(error){
			console.log(error);
		} //error end
	}); //ajax end
	
	$(".paging_wrap").on("click", "span", function() {
		$("#page").val($(this).attr("name"));
		$("#startCnt").val(1 + (($("#page").val()-1)) * 15);
		$("#endCnt").val($("#page").val()*15);
		var params = $("#journalForm").serialize();

		$.ajax({
			url: "journalLists",
			data: params,
			dataType: "json",
			type: "post",
			success: function(result){
				if(result.msg == "success")
				{
					makeJournalList(result.list);
					makePage();
					$("html").scrollTop(300);
				}
				else
				{
					alert("오류 발생");
				}
			},//success end
			error: function(error){
				console.log(error);
			}//error end
		}); //ajax end 
	}); //paging_wrap click end
	
	$(".search_icon").on("click", function(){
		$("#searchGbn").val($("#sg").val());
		$("#searchTxt").val($("#st").val());
		
		var params = $("#journalForm").serialize();
		console.log(params);
	}); //search_icon click end
	
	$(".left_nav ul li").on("click", "span", function(){

		if($(this).attr("class") == "all")
		{
			$("#gradeNo").val(0);
			$(".all img").css("background-color", "#f37321");
			$(".writer img").css("background-color", "#2e3459");
			$(".traveler img").css("background-color", "#2e3459");
		}
		else if($(this).attr("class") == "writer")
		{
			$("#gradeNo").val(2);
			$(".all img").css("background-color", "#2e3459");
			$(".writer img").css("background-color", "#f37321");
			$(".traveler img").css("background-color", "#2e3459");
		}
		else if($(this).attr("class") == "traveler")
		{
			$("#gradeNo").val(1);
			$(".all img").css("background-color", "#2e3459");
			$(".writer img").css("background-color", "#2e3459");
			$(".traveler img").css("background-color", "#f37321");
		}
		
		$("#page").val(1);
		var params = $("#journalForm").serialize();
		
		$.ajax({
			url:"journalListCnts",
			data: params,
			dataType:"json",
			type:"post",
			success: function(result){
				if(result.msg == "success")
				{
					$("#cnt").val(result.cnt);
					$("#startCnt").val(result.pb.startCount);
					$("#endCnt").val(result.pb.endCount);
					$("#maxCnt").val(result.pb.maxPcount);
					$("#startPCnt").val(result.pb.startPcount);
					$("#endPCnt").val(result.pb.endPcount);
					
					var params = $("#journalForm").serialize();

					$.ajax({
						url:"journalLists",
						data: params,
						dataType:"json",
						type:"post",
						success: function(result){
							makeJournalList(result.list);
							makePage();
						}, //success end
						error: function(error){
							console.log(error);
						} //error end
					}); //ajax end
				}
				else if(result.msg == "failed")
				{
					alert("글이 없습니다.");
				}
			}, //success end
			error: function(error){
				console.log(error);
			} //error end
		}); //ajax end
	}); //left_nav click end
	
	$(".c_top").on("click", "li" ,function(){
		if($(this).attr("id") == "category_all")
		{
			$("#categoryNo").val(0);
			$("#category_all").css("background-color", "#2e3459");
			$("#category_all").css("color", "white");
			$(".c_top #regionSelect, #transportation, #attraction, #activity").css("background-color", "white");
			$(".c_top #regionSelect, #transportation, #attraction, #activity").css("color", "#2e3459");
			$("#activity ul, #attraction ul, #transportation ul, #regionSelect ul").css("display", "none");
		}
		else if($(this).attr("id") == "regionSelect")
		{
			$("#categoryNo").val(1);
			$("#regionSelect").css("background-color", "#2e3459");
			$("#regionSelect").css("color", "white");
			$(".c_top #category_all, #transportation, #attraction, #activity").css("background-color", "white");
			$(".c_top #category_all, #transportation, #attraction, #activity").css("color", "#2e3459");
			$("#regionSelect ul").css("display", "block");
			$("#activity ul, #attraction ul, #transportation ul").css("display", "none");
		}
		else if($(this).attr("id") == "transportation")
		{
			$("#categoryNo").val(2);
			$("#transportation").css("background-color", "#2e3459");
			$("#transportation").css("color", "white");
			$(".c_top #category_all, #regionSelect, #attraction, #activity").css("background-color", "white");
			$(".c_top #category_all, #regionSelect, #attraction, #activity").css("color", "#2e3459");
			$("#transportation ul").css("display", "block");
			$("#activity ul, #attraction ul, #regionSelect ul").css("display", "none");
		}
		else if($(this).attr("id") == "attraction")
		{
			$("#categoryNo").val(3);
			$("#attraction").css("background-color", "#2e3459");
			$("#attraction").css("color", "white");
			$(".c_top #category_all, #transportation, #regionSelect, #activity").css("background-color", "white");
			$(".c_top #category_all, #transportation, #regionSelect, #activity").css("color", "#2e3459");
			$("#attraction ul").css("display", "block");
			$("#activity ul, #transportation ul, #regionSelect ul").css("display", "none");
		}
		else if($(this).attr("id") == "activity")
		{
			$("#categoryNo").val(4);
			$("#activity").css("background-color", "#2e3459");
			$("#activity").css("color", "white");
			$(".c_top #category_all, #transportation, #attraction, #regionSelect").css("background-color", "white");
			$(".c_top #category_all, #transportation, #attraction, #regionSelect").css("color", "#2e3459");
			$("#activity ul").css("display", "block");
			$("#attraction ul, #transportation ul, #regionSelect ul").css("display", "none");
		}
		
		console.log($("#categoryNo").val());
	});//regionSelect
	
	$("#regionSelect ul").on("click", "li", function(){
		$("#subCategoryNo").val($(this).attr("id").substring(1));
		console.log($("#subCategoryNo").val());
	}); //regionSelect li ul click end
}); //document ready end
function makeJournalList(list)
{
		var html = "";
		
		for(var data of list)
		{
			html += "   <div class=\"post\">";
			html += "   <span class=\"thumb\" thumb=\"" + data.JOURNAL_NO + "\"><img alt=\"썸네일\" src=\"resources/upload/" + data.PHOTO_PATH + "\"></span>";
			html += "   	<div class=\"post_info\">";
			html += "   		<p>";
			html += "   			<span>" + data.CATEGORY + " > " + data.SUB_CATEGORY + "(" + data.REGION + ") </span>";
			html += "   		</p>";
			html += "   		<p>";
			html += "   			<strong class=\"journal\" journal=\"" + data.JOURNAL_NO + "\">" + data.TITLE + "</strong>";
			html += "   		</p>";
			html += "   		<p>";
			html += "   			<em>";
		
			if(data.PATH != null)
			{
				var hashTag = data.PATH;
				var arr =[];
				arr = hashTag.split(",");
				
				if(arr.length != 0)
				{
					for(var i = 0; i < arr.length; i++)
					{
						 html += "#" + arr[i]+ " "; 
					}
				}
			}
			
			html += "</em>"; 
			html += "   		</p>";
			html += "   	</div>";
			html += "   	<div class=\"post_profile\">";
			html += "			<img alt=\"작성자\" src=\"resources/upload/" + data.PROFILE + "\"> <span>" + data.NIC + "</br>(" + data.GRADE + ")</span>";
			html += "   		<div>";
			html += "   			<div>";
			html += "   				<span>조회수</span> <span class=\"cnt\">" + data.HIT + "</span> <span>좋아요</sp";
			html += "   				<span class=\"cnt\">" + data.LIKE_CNT + "</span>";
			html += "   			</div>";
			html += "   			<span>" + data.JOURNAL_DATE + "</span>";
			html += "   		</div>";
			html += "   	</div>";
			html += "   </div>";
		}

		$(".gallery").html(html);
}
function makePage()
{
	var html = "<span name=\"1\"><<</span>";
	
	if($("#page").val() == "1") {
		html += "<span name=\"1\"><</span>";
	} else {
		html += "<span name=\"" + ($("#page").val() - 1) + "\">&lt;</span>";
	}
	
	if($("#endPCnt").val() == $("#page").val() && $("#endPCnt").val() != $("#maxCnt").val())
	{
		$("#startPCnt").val(($("#startPCnt").val()*1)+1);
		$("#endPCnt").val(($("#endPCnt").val()*1)+1);
	}
	else if($("#startPCnt").val() == $("#page").val() && $("#startPCnt").val() != 1)
	{
		$("#startPCnt").val($("#startPCnt").val()-1);
		$("#endPCnt").val($("#endPCnt").val()-1);
	}
	else if($("#page").val() == $("#maxCnt").val())
	{
		$("#startPCnt").val($("#maxCnt").val() - 4);
		$("#endPCnt").val($("#maxCnt").val());

		if($("#startPCnt").val() <= 0)
		{
			$("#startPCnt").val(1);
		}
	}
	else if($("#page").val() == 1)
	{
		$("#startPCnt").val(1);
		$("#endPCnt").val(5);
	}
	
	for(var i = $("#startPCnt").val() * 1 ; i <= $("#endPCnt").val() * 1 ; i++) {
		if($("#page").val() == i) {
			html += "<span class=\"on\" name=\"" + i + "\">" + i + "</span>";
		} else {
			html += "<span name=\"" + i + "\">" + i + "</span>";
		}
	}	

	if($("#page").val() == $("#maxCnt").val()) {
		html += "<span name=\"" + $("#maxCnt").val() + "\">></span>";
	} else {
		html += "<span name=\"" + ($("#page").val() * 1 + 1) + "\">></span>";
	}
	
	html += "<span name=\"" + $("#maxCnt").val() + "\">>></span>";
	
	$(".paging").html(html);
}
</script>
</head>
<body>
<form action="#" id="journalForm">
	<input type="hidden" id="cnt" name="cnt"/>
	<input type="hidden" id="page" name="page" value="1"/>
	<input type="hidden" id="startCnt" name="startCnt"/>
	<input type="hidden" id="endCnt" name="endCnt"/>
	<input type="hidden" id="maxCnt" name="maxCnt"/>
	<input type="hidden" id="startPCnt" name="startPCnt"/>
	<input type="hidden" id="endPCnt" name="endPCnt"/>
	<input type="hidden" id="searchGbn" name="searchGbn"/>
	<input type="hidden" id="searchTxt" name="searchTxt"/>
	<input type="hidden" id="gradeNo" name="gradeNo" value="0"/>
	<input type="hidden" id="categoryNo" name="categoryNo" value="0"/>
	<input type="hidden" id="subCategoryNo" name="subCategoryNo" value="1"/>
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
		<div id="path_info">
			<span> <img alt="메인페이지" src="./resources/images/home.png" class="home_icon">
			</span> &nbsp;&nbsp;>&nbsp;&nbsp; <span> 여행게시판 </span>
			&nbsp;&nbsp;>&nbsp;&nbsp; <span> 지역별 </span>
			&nbsp;&nbsp;>&nbsp;&nbsp; <span> 대구 &nbsp;&nbsp;>&nbsp;&nbsp;
			</span> 여행작가
		</div>
		<div class="sub_area">
			<span>여행게시판</span>
			<span>' POPJOURNEY ' 에서 함께 여행하세요.</span>
					<img src="./resources/images/board1.png">
				</div>
		<div id="container">
			<div class="top_area">
				<div class="sub_profile">
					<div>
						<img alt="profile" src="./resources/images/profile3.png" class="profile_img">
					</div>
					<div class="info">
						<span>닉네임</span>
						<div class="grade">
							<img alt="icon" src="./resources/images/grade.png"> <span>여행작가</span>
						</div>
						<div class="cnt">
							<span>총 게시글 100</span> <span>총 댓글 100</span>
						</div>
					</div>
				</div>
				<div class="category_nav">
					<ul class="c_top">
						<li id="category_all">&nbsp;전체보기&nbsp;</li>
						<li id="regionSelect">&nbsp;&nbsp;지역별&nbsp;&nbsp;
							<ul id="c_bottom">
								<li id="r0">서울</li>
								<li id="r1">부산</li>
								<li id="r2">대구</li>
								<li id="r3">인천</li>
								<li id="r4">광주</li>
								<li id="r5">대전</li>
								<li id="r6">울산</li>
								<li id="r7">세종</li>
								<li id="r8">경기도</li>
								<li id="r9">강원도</li>
								<li id="r10">충청북도</li>
								<li id="r11">충청남도</li>
								<li id="r12">전라북도</li>
								<li id="r13">전라남도</li>
								<li id="r14">경상북도</li>
								<li id="r15">경상남도</li>
								<li id="r16">제주도</li>
							</ul></li>
						<li id="transportation">&nbsp;&nbsp;교통편&nbsp;&nbsp;
							<ul id="c_bottom">
								<li>도보</li>
								<li>자가용</li>
								<li>버스</li>
								<li>기차</li>
								<li>배</li>
							</ul></li>
						<li id="attraction">&nbsp;&nbsp;관광지&nbsp;&nbsp;
							<ul id="c_bottom">
								<li>바다</li>
								<li>계곡</li>
								<li>산</li>
								<li>유적지</li>
								<li>박물관</li>
								<li>테마파크</li>
								<li>전망대</li>
								<li>건축물</li>
								<li>거리 광장</li>
								<li>시장</li>

							</ul></li>
						<li id="activity">&nbsp;&nbsp;활&nbsp;동&nbsp;&nbsp;
							<ul id="c_bottom">
								<li>농장</li>
								<li>공연</li>
								<li>축제</li>
								<li>마사지</li>
								<li>온천</li>
								<li>투어</li>
								<li>야외활동</li>
								<li>식도락</li>
							</ul></li>
					</ul>
				</div>
			</div>
			<div class="board_list_wrap">
				<div class="board_menu">
					<nav class="left_nav">
						<ul>
							<li><span class="all"><img alt="작성자" src="./resources/images/all.png"></span><br />전체보기</li>
							<li><span class="writer"><img alt="작성자" src="./resources/images/writer.png"></span><br />여행작가</li>
							<li><span class="traveler"><img alt="작성자" src="./resources/images/user2.png"></span><br />여행꾼</li>
						</ul>
					</nav>
					<nav class="right_nav">
						<ul>
							<li class="img_none">최신순</li>
							<li class="img_none">조회순</li>
							<li class="img_none">좋아요순</li>
							<li><img alt="bookmark" src="./resources/images/pen.png"><br />글쓰기</li>
						</ul>
					</nav>
				</div>
				<div class="gallery">

				</div> <!-- gallery end -->
				<div class="paging_wrap">
					<div class="paging"></div>
					<div class="board_search">
						<img alt="search" src="./resources/images/search.png" class="search_icon" /> 
						<input type="text" class="search" id="st" name="searchTxt"  placeholder="검색"> 
						<select	class="filter" id="sg" name="searchGbn">
							<option value="0">전체보기</option>
							<option value="1">제목</option>
							<option value="2">닉네임</option>
						</select>
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
	</div>
	<div class="popup">
		<div class="popup_contents_txt">
			<div>
				일지 작성 <span>필수 입력 사항 </span><span class="asterisk">&#42;</span>
			</div>
			<form action="#" id="actionForm" method="post">
				<span class="asterisk">&#42;</span>여행 시작일 : <input type="date" name="start_date"> <span class="asterisk">&#42;</span>여행 종료일 : <input
					type="date" name="end_date">
				<div class="category_area">
					<span class="asterisk">&#42;</span><span>여행지역  </span> <select
						class="pref_filter">
						<option value="0">서울</option>
						<option value="1">부산</option>
						<option value="2">대구</option>
						<option value="3">인천</option>
						<option value="4">광주</option>
						<option value="5">대전</option>
						<option value="6">울산</option>
						<option value="7">세종</option>
						<option value="8">경기도</option>
						<option value="9">강원도</option>
						<option value="10">층청북도</option>
						<option value="11">층청남도</option>
						<option value="12">전라북도</option>
						<option value="13">전라남도</option>
						<option value="14">경상북도</option>
						<option value="15">경상남도</option>
						<option value="16">제주도</option>
					</select> 
				</div>
			</form>
		</div>
		<div class="btn_list">
			<span>작 성</span> <span>취 소</span>
		</div>
	</div>
	<div class="bg"></div>
</body>
</html>