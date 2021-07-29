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

.btns { /* .logins와 연동  */
	display: inline-block;
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
	display: none;
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
	height: 2500px;
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

.input_title {
	font-size: 18pt;
	color: #2e3459;
	border: none;
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

.help {
	width: calc(100% -30px);
	height: 70px;
	padding-left: 30px;
	line-height: 70px;
	border-bottom: 1px solid #ccc;
	/* 드래그방지. 라인하이트땜에 보기 숭해서.. */
	-ms-user-select: none;
	-moz-user-select: -moz-none;
	-khtml-user-select: none;
	-webkit-user-select: none;
	user-select: none;
}

.help span {
	font-size: 10pt;
	margin-top: 30px;
}

.date_area {
	width: 100%;
	height: 900px;
	margin-top: 100px;
}

.schedule {
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

.img_slide .left_arrow {
    margin-left: -75px;
}

.img_slide .right_arrow {
	margin-left: 28px;
}

.left_arrow, .right_arrow {
	top: 220px;
    display: inline-block;
    position: absolute;
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

table {
	margin-top: 10px;
	border-collapse: collapse;
	width: 540px;
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

.edit_btn, .del_btn, .enroll_btn, .cancel_btn {
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

.edit_btn, .del_btn {
	float: right;
	margin-top: 20px;
	margin-left: 30px;
}

.enroll_btn, .cancel_btn {
	margin: 0 auto;
}

.del_btn {
	margin-right: 100px;
}

.enroll_btn {
	margin-right: 40px;
}

.edit_btn:hover, .enroll_btn:hover {
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

.btn_list {
	box-shadow: rgba(0, 0, 0, 0.09) 0 6px 9px 0;
}

.btn_list a {
	display: inline-block;
	text-align: center;
	width: 70px;
	height: 50px;
	padding: 9px 15px 9px 15px;
	color: white;
	background-color: #2e3459;
	font-size: 10pt;
}

.btn_list a:first-child {
	border-radius: 20px 0 0 0;
}

.btn_list a:last-child {
	border-radius: 0 20px 0 0;
}

.btn_list a img {
	width: 25px;
	height: 25px;
}

.btn_list a span {
	display: block;
}

.btn_list a:active, .btn_list a.on {
	color: #2e3459;
	font-weight: bold;
}

.btn_list a:active, .btn_list a.on {
	background: url("./resources/images/check.png"), white;
	background-position: 37px 10px;
	background-size: 25px 25px;
	background-repeat: no-repeat;
	color: #2e3459;
	font-weight: bold;
}

.btn_list a:active img, .btn_list a.on img {
	visibility: hidden;
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

.popup {
	display:none;
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

.popup_contents_txt div:first-child span {
	float: right;
	font-size: 10pt;
}

.popup_contents_txt>div:first-child {
	font-size: 18pt;
	padding-bottom: 7px;
	border-bottom: 2px solid #f37321;
}
.popup_space {
	margin: 5px 7px 5px 0;
}
.spot_info {
	display:inline-block;
	width:100%;
	height: 80px;
	margin-top: 10px;
}
.order_no {
	width: 70px;
}
.popup_memo {
	width: 534px;
}
.spot_content {
	display:inline-block;
	width:540px;
	height: 300px;
	
}
.popup_content{
	width: 534px;
	height: 250px;
	resize: none;
}
.table {
	width: 500px;
}

.hide {
	/* display: none; */
}

.show {
	display: table-row;
}

.item td {
	cursor: pointer;
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

.btn_list2 a {
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

.btn_list2 a:first-child {
	border-radius: 0 0 0 10px;
}

.btn_list2 a:last-child {
	border-radius: 0 0 10px 0;
}

.btn_list2 a:hover, .alert_btn_list a:hover {
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
</style>
<script type="text/javascript"
		src="resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	$("spotAdd").on("click", function() {
		$(".popup").show();
		$(".bg").show();
	});
}); //document ready end

/* 
 $('a').click(function() {
	$('html, body').animate({ scrollTop: $($.attr(this, 'href')).offset().top }, 500);
	return false; 
	}); 
	// 퀵메뉴
	$('.quick_menu li a').click(function() { 
		// 버튼 hover 이벤트 
		return false $(this).parent().addClass('on');
		$(this).parent().siblings().removeClass('on'); 
		}); 
	// target 위치 표시와, 이동 
	var sections = $('.target'), nav = $('.quick_menu'), nav_height = nav.outerHeight();
	$(window).on('scroll', function() {
		var cur_pos = $(this).scrollTop();
		sections.each(function() {
			var top = $(this).offset().top - nav_height, bottom = top + $(this).outerHeight();
			if (cur_pos >= top && cur_pos <= bottom) {
				nav.find('a').parent().removeClass('on');
				sections.removeClass('active');
				$(this).parent().addClass('on');
				nav.find('a[href="#' + $(this).attr('id') + '"]').parent().addClass('on');
				} 
			}); 
		}); 
	nav.find('a').on('click', function() {
		var $el = $(this), id = $el.attr('href');
		$('html, body').animate({ scrollTop: $(id).offset().top }, 500);
		return false; 
		});

 $(window).on('scroll', function() { 
	if ($(window).scrollTop() > 520) { $('.quick_menu').addClass("fixed"); 
	} else {
		$('.quick_menu').removeClass("fixed"); 
	} 
}); */

$(function(){  
/*     var article = (".recruit .show");  
$(".recruit .item  td").click(function() {  
    var myArticle =$(this).parents().next("tr");  
    if($(myArticle).hasClass('hide')) {  
        $(article).removeClass('show').addClass('hide');  
        $(myArticle).removeClass('hide').addClass('show');  
    }  
    else {  
        $(myArticle).addClass('hide').removeClass('show');  
    }  
});  
});   */
$(function() {
    $("#itemBoxWrap").sortable({
        placeholder:"itemBoxHighlight",
        start: function(event, ui) {
            ui.item.data('start_pos', ui.item.index());
        },
        stop: function(event, ui) {
            var spos = ui.item.data('start_pos');
            var epos = ui.item.index();
	    reorder();
        }
    });
});

function reorder() {
    $(".itemBox").each(function(i, box) {
        $(box).find(".itemNum").html(i + 1);
    });
}

function createItem() {

    $(createBox())
    .appendTo("#itemBoxWrap")
    .hover(
        function() {
            $(this).css('backgroundColor', '#f9f9f5');
            $(this).find('.deleteBox').show();
        },
	function() {
		$(this).css('background', 'none');
		$(this).find('.deleteBox').hide();
        }
        )
    .append("<div class='deleteBox'>[삭제]</div>")
    .find(".deleteBox").click(function() {
        var valueCheck = false;
        $(this).parent().find('input').each(function() {
            if($(this).attr("name") != "type" && $(this).val() != '') {
                valueCheck = true;
            }
        });
        if(valueCheck) {
            var delCheck = confirm('입력하신 내용이 있습니다.\n삭제하시겠습니까?');
        }
        if(!valueCheck || delCheck == true) {
            $(this).parent().remove();
            reorder();
        }
    });
    // 숫자를 다시 붙인다.
    reorder();
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
					<div class="btns">
						<!-- 밑에 logins와 연동 -->
						<ul>
							<li><img alt="bell" src="./resources/images/bell.png" class="bell_icon">
								<div class="timeline">
									<table border="1">
										<colgroup>
											<col width="70px">
											<col width="331.6px">
										</colgroup>
										<tr>
											<th rowspan="2"><img alt="프로필" src="./resources/images/profile.png"></th>
											<th>[여행일지]오늘도....에 <span>홍길동님</span>이 댓글을 다셨습니다
											</th>
										</tr>
										<tr>
											<th>2시간전 (오후)9:17분</th>
										</tr>
										<tr>
											<th rowspan="2"><img alt="프로필" src="./resources/images/profile.png"></th>
											<th>[여행일지]이 오늘도.... 에 <span>해리포터님</span>이 댓글을 다셨습니다
											</th>
										</tr>
										<tr>
											<th>3시간전 (오후)8:54분</th>
										</tr>
										<tr>
											<th rowspan="2"><img alt="프로필" src="./resources/images/profile.png"></th>
											<th>[여행일지]오늘도....에 <span>말포이님</span>이 댓글을 다셨습니다
											</th>
										</tr>
										<tr>
											<th>3시간전 (오후)8:49분</th>
										</tr>
										<tr>
											<th rowspan="2"><img alt="프로필" src="./resources/images/profile.png"></th>
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
					<li>여행게시판</li>
					<li>자유게시판</li>
					<li>여행작가</li>
					<li>고객센터</li>
					<li>내부관리자</li>
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
			<span> <a href="#"><img alt="메인페이지" src="./resources/images/home.png"
					class="home_icon"></a>
			</span> &nbsp;&nbsp;>&nbsp;&nbsp; <span> <a href="#">여행일지</a>
			</span> &nbsp;>&nbsp;&nbsp;일지 작성
		</div>
		<div id="container">
			<div class="title_area">
				<div class="title_top">
					<strong class="title_font">1. 제목 입력</strong> <span>필수 입력 사항</span>
				</div>
				<div class="title_bottom">
					<input type="text" class="input_title" placeholder="여행일지 제목"
						size="50" maxlength="30" autofocus required />
				</div>
			</div>
			<div class="date_area">
				<div class="title_top">
					<strong class="title_font">2. 일정 추가</strong> <span>필수 입력 사항</span>
				</div>
				<div class="help">
					<span>일자 선택 후 장소를 추가하십시오.&#9;연달아 추가 가능합니다.&#9;일자 변경을 원하시면 일자
						재선택 후 장소를 추가하십시오.</span>
				</div>
				<div class="schedule">
					<nav class="date_nav">
						<span class="left_arrow"><img alt="왼쪽" src="./resources/images/left_arrow.png"></span>
							<ul>
								<li>DAY 1</li>
								<li>DAY 2</li>
								<li>DAY 3</li>
								<li>DAY 4</li>
								<li>DAY 5</li>
							</ul>
						<span><img alt="오른쪽" src="./resources/images/right_arrow.png"></span>
					</nav>
				</div>
				<div class="path_area">
					<div class="spot_wrap">
						<div class="btn_list">
							<a href="#"> <img alt="접기" src="./resources/images/map.png"><span>지도</span>
							</a> <a href="#"> <img alt="접기" src="./resources/images/search.png"><span>검색</span>
							</a> <a href="#"> <img alt="접기" src="./resources/images/bmrk.png"><span>불러오기</span>
							</a>
						</div>
						<div class="search_area">
							<div class="search_top">
								<input type="text" class="input_spot" size="25" maxlength="20"
									placeholder="장소 또는 주소를 입력하십시오." /> <img alt="접기"
									src="./resources/images/search_navy.png">
							</div>
							<div class="search_bottom">
								<div class="spot_box">
									<em>1</em>
									<h3>구디아카데미</h3>
									<p>서울시 금천구 가산디지털2로 115, 1109-1호</p>
									<input type="button" name="spotAdd" value="추 가" />
								</div>
								<div class="spot_box">
									<em>2</em>
									<h3>구디아카데미</h3>
									<p>서울시 금천구 가산디지털2로 115, 1109-1호</p>
									<input type="button" value="추 가" />
								</div>
								<div class="spot_box">
									<em>3</em>
									<h3>구디아카데미</h3>
									<p>서울시 금천구 가산디지털2로 115, 1109-1호</p>
									<input type="button" value="추 가" />
								</div>
							</div>
						</div>
					</div>
					<div class="map_wrap">
						<img alt="지도" src="./resources/images/path.png" id="path">
					</div>
				</div>
			</div>
			<div class="spot_area">
				<div class="title_top">
					<strong class="title_font">3. 일정표</strong> <span>필수 입력 사항</span>
				</div>
				<div class="help">
					<span>일정 선택 후 수정, 삭제가 가능합니다.&#9;일정은 하나씩 선택하십시오</span>
				</div>
				<div class="schedule">
					<nav class="date_nav">
						<span class="left_arrow"><img alt="왼쪽" src="./resources/images/left_arrow.png"></span>
							<ul>
								<li>DAY 1</li>
								<li>DAY 2</li>
								<li>DAY 3</li>
								<li>DAY 4</li>
								<li>DAY 5</li>
							</ul>
						<span><img alt="오른쪽" src="./resources/images/right_arrow.png"></span>
					</nav>
				</div>
				<div>
					<table class="board_list">
						<caption>여행 시간표</caption>
						<thead>
							<tr>
								<th><input type="checkbox" id="c0" /><label for="c0"></label></th>
								<th>순번</th>
								<th>장소</th>
								<th>메모</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><input type="checkbox" id="c1" checked="checked" /><label
									for="c1"></label></td>
								<td>HH:MM</td>
								<td>자연 휴양림</td>
								<td>한줄 메모.........................................</td>
							</tr>
							<tr>
								<td><input type="checkbox" id="c2" /><label for="c2"></label></td>
								<td>HH:MM</td>
								<td>자연 휴양림</td>
								<td>한줄 메모.........................................</td>
							</tr>
							<tr>
								<td><input type="checkbox" id="c3" /><label for="c3"></label></td>
								<td>HH:MM</td>
								<td>자연 휴양림</td>
								<td>한줄 메모.........................................</td>
							</tr>
							<tr>
								<td><input type="checkbox" id="c4" /><label for="c4"></label></td>
								<td>HH:MM</td>
								<td>자연 휴양림</td>
								<td>한줄 메모.........................................</td>
							</tr>
							<tr>
								<td><input type="checkbox" id="c5" /><label for="c5"></label></td>
								<td>HH:MM</td>
								<td>자연 휴양림</td>
								<td>한줄 메모.........................................</td>
							</tr>
							<tr>
								<td><input type="checkbox" id="c6" /><label for="c6"></label></td>
								<td>HH:MM</td>
								<td>자연 휴양림</td>
								<td>한줄 메모.........................................</td>
							</tr>
							<tr>
								<td><input type="checkbox" id="c7" /><label for="c7"></label></td>
								<td>HH:MM</td>
								<td>자연 휴양림</td>
								<td>한줄 메모.........................................</td>
							</tr>
							<tr>
								<td><input type="checkbox" id="c8" /><label for="c9"></label></td>
								<td>HH:MM</td>
								<td>자연 휴양림</td>
								<td>한줄 메모.........................................</td>
							</tr>
							<tr>
								<td><input type="checkbox" id="c10" /><label for="c10"></label></td>
								<td>HH:MM</td>
								<td>자연 휴양림</td>
								<td>한줄 메모.........................................</td>
							</tr>
							<tr>
								<td><input type="checkbox" id="c11" /><label for="c11"></label></td>
								<td>HH:MM</td>
								<td>자연 휴양림</td>
								<td>한줄 메모.........................................</td>
							</tr>
							<tr>
								<td><input type="checkbox" id="c12" /><label for="c12"></label></td>
								<td>HH:MM</td>
								<td>자연 휴양림</td>
								<td>한줄 메모.........................................</td>
							</tr>
							<tr>
								<td><input type="checkbox" id="c13" /><label for="c13"></label></td>
								<td>HH:MM</td>
								<td>자연 휴양림</td>
								<td>한줄 메모.........................................</td>
							</tr>
							<tr>
								<td><input type="checkbox" id="c14" /><label for="c14"></label></td>
								<td>HH:MM</td>
								<td>자연 휴양림</td>
								<td>한줄 메모.........................................</td>
							</tr>
						</tbody>
					</table>
				</div>
				<input type="button" class="del_btn" value="삭  제" /> <input
					type="button" class="edit_btn" value="수  정" />
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
							class="pref_filter">
							<option value="0">선호도</option>
							<option value="1">선호도</option>
							<option value="2">선호도</option>
							<option value="3">선호도</option>
						</select> <select class="category_filter">
							<option value="0">카테고리</option>
							<option value="1">카테고리</option>
							<option value="2">카테고리</option>
							<option value="3">카테고리</option>
						</select>
					</div>
					<div class="hash">
						<label>해시태그<input type="text" class="hash_input" size="70" maxlength="70" placeholder="#해시태그1#해시태그2"></label>
					</div>
				</div>
				<div class="enroll_area">
					<input type="button" class="enroll_btn" value="등 록" /> <input type="button" class="cancel_btn" value="취 소" />
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
				불러오기<span>북마크 </span>
			</div>
			<div>
				<table cellspacing="0" border="1" class="recruit">
					<caption>북마크 목록</caption>
					<colgroup>
						<col width="100%">
					</colgroup>
					<thead>
						<tr class="">
							<th scope="col">북마크</th>
						</tr>
					</thead>
					<tbody>
						<tr class="item">
							<td>폴더1</td>
						</tr>
						<tr class="hide">
							<td colspan="4">여행일지1</td>
						</tr>
						<tr class="hide">
							<td colspan="4">DAY1</td>
						</tr>
						<tr class="item">
							<td>폴더2</td>
						</tr>
						<tr class="hide">
							<td colspan="4">여행일지2 <br>
							</td>
						</tr>
					</tbody>
					</table>
			</div>
		</div>
		<div class="btn_list2">
			<a href="#">수 정</a> <a href="#">취 소</a>
		</div>
	</div>
	<div class="popup">
		<div class="popup_contents_txt">
			<div>
				장소 추가<span>필수 입력 사항 </span><span class="asterisk">&#42;</span>
			</div>
			<div class="spot_info">
				<label class="popup_space">순번 <input type="text" class="order_no"></label> <label
					class="popup_space">여행경비 <input type="text"></label> <input
					type="button" class="add_btn" class="popup_space" value="사진 첨부" />
				<label class="popup_space">썸네일<input type="checkbox" id="c1"
					checked="checked" /></label><br /> <label class="popup_space">메모 <input
					type="text" class="popup_memo"></label>
			</div>
			<div class="spot_content">
				<textarea rows="15" cols="80" class="popup_content"></textarea>
			</div>
		</div>
		<div class="btn_list2">
			<a href="#">추 가</a> <a href="#">취 소</a>
		</div>
	</div>
	<div class="bg"></div>
</body>
</html>