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
}
#loginBtn:hover{
   color: #FFFFFF;
   background-color: #f37321;
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
   background-color: #2e3459;
   color: white;
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

.post2 {
   float: left;
   width: 340px;
   height: 390px;
   margin: 0 0 40px 40px;
   border: 1px solid #f1f1f1;
   font-size: 10pt;
   color: black;
}

.post2:hover {
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
   display:inline-block;
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
    display: inline-block;
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
#write{
   background-color: #2e3459;
}
#write:hover{
   background-color: #f37321;
}
#date0{
   color: #f37321;
}
.journal, .thumb, .user{
   cursor: pointer;
}

.popup2 {
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
.popup_entity_txt2 {
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
.btn_list2 a{
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
.btn_list2 a:first-child {
   border-radius: 0 0 0 10px; 
}
.btn_list2 a:last-child {
   border-radius: 0 0 10px 0; 
}
.btn_list2 a:hover {
   background-color: #f37321;
   color: white;
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
</style>
<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
   loadPage2();

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
      
      var html = "";
                                                                                                      
      html +="   <div class=\"sub_profile\">";
      html +="      <div>";
      html +="         <img alt=\"profile\" src=\""+path+"\" class=\"profile_img\">";
      html +="      </div>";
      html +="      <div class=\"info\">";
      html +="         <span>${sNIC}</span>";
      html +="         <div class=\"grade\">";
      if("${sGRADE_NO}" == 0)
      {
         html +="            <img alt=\"icon\" src=\"./resources/images/grade.png\"> <span>관리자</span>";
      }
      else if("${sGRADE_NO}" == 1)
      {
         html +="            <img alt=\"icon\" src=\"./resources/images/grade.png\"> <span>여행꾼</span>";
      }
      else
      {
         html +="            <img alt=\"icon\" src=\"./resources/images/grade.png\"> <span>여행작가</span>";
      }
      html +="         </div>";
      html +="         <div class=\"cnt\">";
      html +="            <span>총 게시글 ${sJOURNAL}</span> <span>팔로워 ${sFOLLOWER}</span>";
      html +="         </div>";
      html +="      </div>";
      html +="   </div>";
                                                                                               
      $(".top_area").prepend(html);
      $(".sub_profile").css("display", "block");
      
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
			$("#goJournalForm").submit();
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
                  //popupText = "ID와 PW가 일치하지 않습니다.";
                  //commonPopup(popupText);
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
   
   $("#write").on("click", function(){
	   if("${sMEM_NO}" == "")
	   {
		   alert("로그인이 필요한 서비스 입니다.");
		   return false;
	   }
      makePopup();
   });//write click end
   
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
	//알람 아이콘 클릭 시 알람 팝업 나왔다 사라졌다 & 프로필 하위메뉴는 안보이도록
   
   $(".paging").on("click", "span", function() {
      $("#page2").val($(this).attr("name"));
      $("#startCnt").val(1 + (($("#page2").val()-1)) * 15);
      $("#endCnt").val($("#page2").val()*15);
      
      loadPage();
   }); //paging_wrap click end
   
   $(".search_icon").on("click", function(){   
      loadPage2();
      $("#page2").val(1);
   }); //search_icon click end
   
   $(".gallery").on("click", ".post2 span, strong, img", function(){
      if($(this).attr("class") == "journal" || $(this).attr("class") == "thumb")
      {
         $("#journalNo").val($(this).attr($(this).attr("class")));
         $("#goJournalForm").submit();
      }
      else if($(this).attr("class") == "user")
      {
         $("#userNo").val($(this).attr($(this).attr("class")));
         $("#userForm").submit();
      }
   });// gellery click end
   
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
      
      $("#page2").val(1);
      loadPage2();
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
         loadPage2();
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
   });//regionSelect
   
   $(".right_nav ul").on("click", ".img_none", function(){
      if($(this).attr("id") == "date0")
      {
         $("#date0").css("color", "#f37321");
         $("#hitt1, #like2").css("color", "#2e3459");
      }
      else if($(this).attr("id") == "hitt1")
      {
         $("#hitt1").css("color", "#f37321");
         $("#date0, #like2").css("color", "#2e3459");
      }
      else if($(this).attr("id") == "like2")
      {
         $("#like2").css("color", "#f37321");
         $("#date0, #hitt1").css("color", "#2e3459");
      }
      
      $("#SEQ").val($(this).attr("id").substring(4));
      $("#page2").val(1);
      loadPage2();
   });//right_nav click li end
   
   var preID = "#";
   
   $(".c_top li ul").on("click", "li", function(){
      $("#subCategoryNo").val($(this).attr("id").substring(1));
      $(preID).css("color", "black");
      preID = "#";
      $(this).css("color", "red");
      preID += $(this).attr("id");
      $("#page2").val(1);
      loadPage2();
   }); //c_top li ul click li end
   
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
	$("#searchIcon").on("click", function() {
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
function loadPage()
{
   var params = $("#journalForm").serialize();

   $.ajax({
      url:"journalListCnts",
      data: params,
      dataType:"json",
      type:"post",
      success: function(result){
         if(result.msg == "success")
         {
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
            alert("일지가 없습니다.");
         }
         else
         {
            alert("실패 ");
         }
      }, //success end
      error: function(error){
         console.log(error);
      } //error end
   }); //ajax end
}
function makeJournalList(list)
{
      var html = "";
      
      for(var data of list)
      {
         html += "   <div class=\"post2\">";
         html += "   <span class=\"thumb\" thumb=\"" + data.JOURNAL_NO + "\"><img alt=\"썸네일\" src=\"resources/upload/" + data.THUMB + "\"></span>";
         html += "      <div class=\"post_info\">";
         html += "         <p>";
         html += "            <span>" + data.CATEGORY + " > " + data.SUB_CATEGORY + "(" + data.REGION + ") </span>";
         html += "         </p>";
         html += "         <p>";
         html += "            <strong class=\"journal\" journal=\"" + data.JOURNAL_NO + "\">" + data.TITLE + "</strong>";
         html += "         </p>";
         html += "         <p>";
         html += "            <em>";
      
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
         html += "         </p>";
         html += "      </div>";
         html += "      <div class=\"post_profile\">";
         html += "         <img class=\"user\" user=\"" + data.MEM_NO + "\" alt=\"작성자\"";
         if(data.PHOTO_PATH != null)
         {
             html += " 			src=\"resources/upload/" + data.PHOTO_PATH + "\">";        	 
         }
          else
         {
             html += " 			src=\"./resources/images/profile3.png\">";
         }
         html += " 			<span class=\"user\" user=\"" + data.MEM_NO + "\">" + data.NIC + "</br>(" + data.GRADE + ")</span>";
         html += "         <div>";
         html += "            <div>";
         html += "               <span>조회수</span> <span class=\"cnt\">" + data.HIT + "</span> <span>좋아요</sp";
         html += "               <span class=\"cnt\">" + data.LIKE_CNT + "</span>";
         html += "            </div>";
         html += "            <span>" + data.JOURNAL_DATE + "</span>";
         html += "         </div>";
         html += "      </div>";
         html += "   </div>";
      }

      $(".gallery").html(html);
}
function makePage()
{
   var html = "<span name=\"1\"><<</span>";
   
   if($("#page2").val() == "1") {
      html += "<span name=\"1\"><</span>";
   } else {
      html += "<span name=\"" + ($("#page2").val() - 1) + "\">&lt;</span>";
   }
   
   if($("#endPCnt").val() == $("#page2").val() && $("#endPCnt").val() != $("#maxCnt").val())
   {
      $("#startPCnt").val(($("#startPCnt").val()*1)+1);
      $("#endPCnt").val(($("#endPCnt").val()*1)+1);
   }
   else if($("#startPCnt").val() == $("#page2").val() && $("#startPCnt").val() != 1)
   {
      $("#startPCnt").val($("#startPCnt").val()-1);
      $("#endPCnt").val($("#endPCnt").val()-1);
   }
   else if($("#page2").val() == $("#maxCnt").val())
   {
      $("#startPCnt").val($("#maxCnt").val() - 4);
      $("#endPCnt").val($("#maxCnt").val());

      if($("#startPCnt").val() <= 0)
      {
         $("#startPCnt").val(1);
      }
   }
   else if($("#page2").val() == 1)
   {
      $("#startPCnt").val(1);
      $("#endPCnt").val($("#endPCnt").val());
   }
   
   for(var i = $("#startPCnt").val() * 1 ; i <= $("#endPCnt").val() * 1 ; i++) {
      if($("#page2").val() == i) {
         html += "<span class=\"on\" name=\"" + i + "\">" + i + "</span>";
      } else {
         html += "<span name=\"" + i + "\">" + i + "</span>";
      }
   }   

   if($("#page2").val() == $("#maxCnt").val()) {
      html += "<span name=\"" + $("#maxCnt").val() + "\">></span>";
   } else {
      html += "<span name=\"" + ($("#page2").val() * 1 + 1) + "\">></span>";
   }
   
   html += "<span name=\"" + $("#maxCnt").val() + "\">>></span>";
   
   $(".paging").html(html);
}
function loadPage2()
{
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
            alert("일지가 없습니다.");
         }
         else
         {
            alert("실패 ");
         }
      }, //success end
      error: function(error){
         console.log(error);
      } //error end
   }); //ajax end
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
	html	 +="<div class=\"bg\"></div>";
	
	$("body").append(html);
	
	$("#yesBtn").on("click", function(){ 
		$(".popup2").remove();
		$(".bg").remove();
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
	html +="<div class=\"bg\"></div>";
	
	$("body").append(html);
	
	$("#cancelImg").on("click", function(){ 
		$(".popup2").remove();
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
function makePopup()
{
   var html = "";
   
   html+="   <div class=\"popup\">";
   html+="      <div class=\"popup_contents_txt\">";
   html+="         <div>";
   html+="            일지 작성 <span>필수 입력 사항 </span><span class=\"asterisk\">&#42;</span>";
   html+="         </div>";
   html+="            <span class=\"asterisk\">&#42;</span>여행 시작일 : <input type=\"date\" class=\"start_date\"> <span class=\"asterisk\">&#42;</span>";
   html+="            여행 종료일 : <input   type=\"date\" class=\"end_date\">";
   html+="         <div class=\"category_area\">";
   html+="            <span class=\"asterisk\">&#42;</span>";
   html+="               <span>여행지역  </span> <select id=\"regionSelect\">";
   html+="               <option value=\"17\">지역</option>";
   html+="               <option value=\"0\">서울</option>";
   html+="               <option value=\"1\">부산</option>";
   html+="               <option value=\"2\">대구</option>";
   html+="               <option value=\"3\">인천</option>";
   html+="               <option value=\"4\">광주</option>";
   html+="               <option value=\"5\">대전</option>";
   html+="               <option value=\"6\">울산</option>";
   html+="               <option value=\"7\">세종</option>";
   html+="               <option value=\"8\">경기도</option>";
   html+="               <option value=\"9\">강원도</option>";
   html+="               <option value=\"10\">층청북도</option>";
   html+="               <option value=\"11\">층청남도</option>";
   html+="               <option value=\"12\">전라북도</option>";
   html+="               <option value=\"13\">전라남도</option>";
   html+="               <option value=\"14\">경상북도</option>";
   html+="               <option value=\"15\">경상남도</option>";
   html+="               <option value=\"16\">제주도</option>";
   html+="            </select> ";
   html+="         </div>";
   html+="      </div>";
   html+="      <div class=\"btn_list\">";
   html+="         <span id=\"goWrite\">작 성</span> <span id=\"cancel\">취 소</span>";
   html+="      </div>";
   html+="   </div>";
   html+="   <div class=\"bg\"></div>";
   
   $("body").append(html);
   
   $(".start_date").on("change", function(){
      $("#startDate").val($(".start_date").val());
      console.log($("#startDate").val());
   })//start_date change end
   
   $(".end_date").on("change", function(){
      $("#endDate").val($(".end_date").val());
      console.log($("#endDate").val());
   })//start_date change end
   
   $("#goWrite").on("click", function(){
      if($(".start_date").val() == "")
      {
         alert("시작일을 입력하세요.");
      }
      else if($(".end_date").val() == "")
      {
         alert("종료일을 입력하세요.");
      }
      else if($("#startDate").val() > $("#endDate").val())
      {
         alert("시작일이 종료일보다 클 수 없음");
      }
      else if($("#regionSelect").val() == "17")
      {
         alert("지역을 입력하세요.");
      }
      else
      {
         $("#regionNo").val($("#regionSelect[id='regionSelect'] option:selected").val());
         $("#writeForm").submit();
      }
   });//goWrite click end
   
   $("#cancel").on("click", function(){
      $(".popup").remove();
      $(".bg").remove();
   }); //cancel click end
}
</script>
</head>
<form action="journalWrite" id="writeForm" method="post">
	<input type="hidden" id="inputJournalNo" name="inputJournalNo"/>
   <input type="hidden" id="startDate" name="startDate"/>
   <input type="hidden" id="endDate" name="endDate"/>
   <input type="hidden" id="regionNo" name="regionNo"/>
</form>
<form action="journal" id="goJournalForm" method="post">
   <input type="hidden" id="journalNo" name="journalNo"/>
   <input type="hidden" id="memNo" name="memNo" value="${sMEM_NO}"/>
</form>
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
<form action="post" id="postForm" method="post">
	<input type="hidden" id="postNo" name="postNo" value=""/>
	<input type="hidden" id="newPostNo" name="newPostNo" value="1"/>
	<input type="hidden" id="loginUserNo" name="loginUserNo" value="${sMEM_NO}" />
</form>
<body>
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
			<img alt="search" src="./resources/images/search.png" class="search_icon" id="searchIcon"/>
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
         <span> <img alt="메인페이지" src="./resources/images/home.png" class="home_icon">
         </span> &nbsp;&nbsp;>&nbsp;&nbsp; <span> 여행게시판 </span>
      </div>
      <div class="sub_area">
         <span>여행게시판</span>
         <span>' POPJOURNEY ' 에서 함께 여행하세요.</span>
               <img src="./resources/images/board1.png">
            </div>
      <div id="container">
         <div class="top_area">
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
                        <li id="t0">도보</li>
                        <li id="t1">자가용</li>
                        <li id="t2">버스</li>
                        <li id="t3">기차</li>
                        <li id="t4">배</li>
                        <li id="t5">자전거</li>
                     </ul></li>
                  <li id="attraction">&nbsp;&nbsp;관광지&nbsp;&nbsp;
                     <ul id="c_bottom">
                        <li id="a0">바다</li>
                        <li id="a1">계곡</li>
                        <li id="a2">산</li>
                        <li id="a3">유적지</li>
                        <li id="a4">박물관</li>
                        <li id="a5">테마파크</li>
                        <li id="a6">전망대</li>
                        <li id="a7">건축물</li>
                        <li id="a8">거리 광장</li>
                        <li id="a9">시장</li>

                     </ul></li>
                  <li id="activity">&nbsp;&nbsp;활&nbsp;동&nbsp;&nbsp;
                     <ul id="c_bottom">
                        <li id="b0">농장</li>
                        <li id="b1">공연</li>
                        <li id="b2">축제</li>
                        <li id="b3">마사지</li>
                        <li id="b4">온천</li>
                        <li id="b5">투어</li>
                        <li id="b6">야외활동</li>
                        <li id="b7">식도락</li>
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
                     <li class="img_none" id="date0">최신순</li>
                     <li class="img_none" id="hitt1">조회순</li>
                     <li class="img_none" id="like2">좋아요순</li>
                     <li><img id="write" src="./resources/images/pen.png"><br />글쓰기</li>
                  </ul>
               </nav>
            </div>
            <div class="gallery">

            </div> <!-- gallery end -->
            <div class="paging_wrap">
               <div class="paging"></div>
               <div class="board_search">
                  <img alt="search" src="./resources/images/search.png" class="search_icon" /> 
                  <form action="#" id="journalForm">
                     <input type="hidden" id="cnt" name="cnt"/>
                     <input type="hidden" id="page2" name="page2" value="1"/>
                     <input type="hidden" id="startCnt" name="startCnt"/>
                     <input type="hidden" id="endCnt" name="endCnt"/>
                     <input type="hidden" id="maxCnt" name="maxCnt"/>
                     <input type="hidden" id="startPCnt" name="startPCnt"/>
                     <input type="hidden" id="endPCnt" name="endPCnt"/>
                     <input type="hidden" id="gradeNo" name="gradeNo" value="0"/>
                     <input type="hidden" id="categoryNo" name="categoryNo" value="0"/>
                     <input type="hidden" id="subCategoryNo" name="subCategoryNo" value="1"/>
                     <input type="hidden" id="SEQ" name="SEQ" value="0"/>
                     
                     <input type="text" class="search" id="searchTxt" name="searchTxt"  placeholder="검색" > 
                     <select   class="filter" id="searchGbn" name="searchGbn">
                        <option value="0">전체보기</option>
                        <option value="1">제목</option>
                        <option value="2">닉네임</option>
                     </select>
                  </form>
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
</body>
</html>