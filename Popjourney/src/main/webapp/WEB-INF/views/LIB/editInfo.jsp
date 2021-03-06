<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
html{
	eight: 100%;
} 	  
body{
   margin: 0px;      
   font-family: 'Black Han Sans', sans-serif;
   min-width: 1480px;
   height: 100%;
}
#wrap{
   width: 100%;
   height: calc(100% - 0px);
   overflow-y: auto;
}
#header {
   width: 100%;
   height: 140px;
   background-color: #2e3459;
   position: relative;
   font-size: 0px;
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
   position: absolute; 
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
.search_icon {
   float: right;
   margin: 17px 20px 13px 0px;
   width: 40px;
   cursor: pointer;
}
#container{
	width: 1280px;
	margin: 0px auto;
}
.join{
	text-align: center;
	width: 650px;
	font-size: 18pt;
	font-weight: bold;
	margin: 50px auto 10px auto;
}
#infoWrap{
	width: 650px;
	margin: 80px auto 20px auto;
	padding: 10px 50px 30px 50px;
    border: 1px solid #e5e5e5;
	border-radius: 2px;
    box-sizing: border-box;	
}
input[type='text'], input[type='password']{
	margin-top: 15px;
	height: 30px;
}
input[type='button']{
	padding: 4px 0px;
	background-color: white;
	border: 2px solid #2e3459;
	border-radius: 20px;
	height: 35px;
	cursor: pointer;
	width: 80px;
	margin-left: 10px;
	box-shadow: rgba(0, 0, 0, 0.09) 0 6px 9px 0;
	font-weight: bold;
}
input[type='button']:hover{
	color: white;
	background-color: #2e3459;
}
input[type='text']:focus, input[type='password']:focus,
select:focus{
	outline-color: #fcba03;
}
#selectYear, #selectMonth, #selectDay{
	width: 165px;
}
#radioWrap {
  display: inline-flex;
  align-items: center;
}
#radioWrap{
	width: 650px;
	margin: 10px auto;
}
label{
	font-size: 12pt;
	font-weight: bold;
}
#inputID{
	width: 400px;
}
#inputPW, #inputRePW{
	width: 498px;
}
select{
	height: 36px;
}
.title{
	font-weight: bold;
	margin-top: 15px;
	font-size: 14pt;
}
#inputEmail, #inputDomain{
	width: 140px;
}
#txtAt{
	font-weight: bold;
	font-size: 12pt;
}
#inputPhone{
	width: 434px;
}
#selectDomain{
	width: 80px;
}
#selectKeyword{
	width: 506px;
	margin-top: 15px;
}
#inputKeyword, #inputName{
	width: 498px;
}
#inputKeyword{
	margin-top: 20px;
}
#btnWrap{
	text-align: center;
}
#preBtn{
	margin: 50px 70px 50px 0px;
}
#preBtn:hover{
	background-color: #F1404B;
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
   cursor:pointer;
}
#yesBtn:hover {
   background-color: #f37321;
   color: white;
}
.bg {
	display: inline-block;
	width: 100%;
	height: 1434px;
	position: absolute;
	top: 0px;
	left: 0px;
	background-color: #000000;
	z-index: 400;
	opacity: 0.2;
}
.btns { 
    display: inline-block;
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
#profilePhoto{
   width: 40px;
   margin-right: 20px;
   margin-top: 15px;
   cursor: pointer;
   border-radius: 50%;
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
#editInfo{
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
#admin{
	display:none;
}
#mainSearchTxt{
	height: 30px;
	margin-top: 20px;
}
</style>
<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js"/></script>
<script type="text/javascript">
$(document).ready(function(){
	if("${sMEM_NO}" != "")
	{	
		if("${sGRADE_NO}" == "0")
		{
			$("#admin").show();
		}
		
		var path = ""; //???????????? ????????? ??????
		
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
					popupText = "????????? ??????????????????.";
					commonPopup(popupText);
				}
			}, //success end
			error: function(request, status, error) {
				console.log(error);
			} // error end
		}); //ajax end 
	}//if end -> ????????? ??????????????? ?????? ??????

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
	
	
	var popupText = "";
	var IDCheck = "";  //????????? ?????? ?????????
	var pattern1 = /[0-9]/;
    var pattern2 = /[a-zA-Z]/;
	var pattern3 = /[~!@\#$%<>^&*]/; //???????????? ????????? ?????????
	
	var params = $("#form").serialize();

	$.ajax({
		url: "getInfo",
		data: params,
		dataType: "json",
		type: "post",
		success:function(result)
		{
			if(result.msg == "success")
			{
				$("#inputName").val(result.NAME);
				$("#selectYear").val(result.YEAR);
				$("#selectMonth").val(result.MONTH);
				$("#selectDay").val(result.DAY);
				$(":radio[name='sex'][value='" + result.SEX + "']").attr('checked', true);
				$("#inputID").val(result.ID);
				$("#inputPW").val(result.PW);
				$("#inputRePW").val(result.PW);
				$("#inputPhone").val(result.PHONE);
				$("#inputEmail").val(result.EMAIL);
				$("#inputDomain").val(result.DOMAIN);
				$("#selectKeyword").val(result.KEYWORD_NO);
				$("#inputKeyword").val(result.KEYWORD);
				$("#sendCode").css("background-color", "#2e3459");
				$("#sendCode").css("color", "white");
				$("#sendCode").css("cursor", "default");
			}
			else
			{
				popupText("????????? ??????????????? ?????????????????????.")
				commonPopup(popupText);
			}
		}, //success end
		error: function(request, status, error) {
			console.log(error);
		} // error end
	}); //ajax end 
	
	$("#IDDbCkBtn").on("click", function(){  //????????? ????????????
		$(".popup").remove();
		$(".bg").remove();
		if($.trim($("#inputID").val()) == "") //???????????? ??????????????????
		{
			popupText = "???????????? ???????????????.";
			commonPopup(popupText);
			$("#inputID").focus();
			return false;
		}
		
		if(pattern3.test($("#inputID").val())) //???????????? ???????????? ??????
		{
			popupText = "???????????? ??????????????? ??????????????????.";
			commonPopup(popupText);
			$("#inputID").focus();
			$("#inputID").val("");
			return false;
		}
		
		$("#valueStorage").val($("#inputID").val());
		
		var params = $("#form").serialize();
		
		$.ajax({
			url: "IDDbCk",
			data: params,
			dataType:"json",
			type: "post",
			success:function(result)
			{
				if(result.msg == "success")
				{
					popupText = "?????? ????????? ??????????????????.";
					commonPopup(popupText);
					IDCheck = $("#inputID").val();
				}
				else
				{
					popupText = "?????? ???????????? ??????????????????.";
					commonPopup(popupText);
				}
			}, //success end
			error: function(request, status, error) {
				console.log(error);
			} // error end
		}); //ajax end 
	}); //IdDbCkBtn click end
	
	$("#inputPhone").on("keypress", function(){  //????????? ?????? ????????? ??????
		$(".popup").remove();
		$(".bg").remove();
		
		if(event.keyCode < 48 || event.keyCode > 57)
		{
			popupText = "????????? ???????????????.";
			commonPopup(popupText);
			return false;
		}
	}); //inputPhone keypress end
	
	$("#nextBtn").on("click", function(){      //?????? ????????? ???????????? ?????? ??????????????? ?????? ??????????????? ??????
		if($.trim($("#inputID").val()) == "")
		{
			popupText = "???????????? ???????????????.";
			commonPopup(popupText);
			$("#inputID").focus();
		}
 		else if($("#inputID").val() != IDCheck)
		{
			popupText = "????????? ??????????????? ????????????.";
			commonPopup(popupText);
		} 
		else if($.trim($("#inputPW").val()) == "")
		{
			popupText = "??????????????? ???????????????.";
			commonPopup(popupText);
			$("#inputPW").focus();
		}
		else if($.trim($("#inputRePW").val()) == "")
		{
			popupText = "???????????? ???????????? ???????????????.";
			commonPopup(popupText);
			$("#inputRePW").focus();
		}
		else if($("#inputPW").val() != $("#inputRePW").val())
		{
			popupText = "??????????????? ?????? ???????????? ????????????.";
			commonPopup(popupText);
			resetPW();
		}
		else if($("#inputPW").val().length < 8) //minlength??? ?????????????????? ????????? 8?????? ?????? ???????????? ?????????
		{
			popupText = "??????????????? 8~32????????? ????????????.";
			commonPopup(popupText);
			resetPW();
		}
		else if(!pattern1.test($("#inputPW").val())||!pattern2.test($("#inputPW").val())||!pattern3.test($("#inputPW").val()))
		{
			popupText = "??????/??????/??????????????? ???????????????.";
			commonPopup(popupText);
			resetPW();
		}
		else if($("#selectTelcom").val() == 0)
		{
			popupText = "???????????? ???????????????";
			commonPopup(popupText);
			$("#selectTelcom").focus();
		}
		else if($.trim($("#inputPhone").val()) == "")
		{
			popupText = "??????????????? ???????????????.";
			commonPopup(popupText);
			$("#inputPhone").focus();
		}
		 else if($.trim($("#inputPhone").val().length) != 8)
		{
			popupText = "8????????? ???????????????";
			commonPopup(popupText);
			$("#inputPhone").focus();
		} 
		else if($.trim($("#inputPhone").val().indexOf('-')) == 0)
		{
			popupText = "-??? ???????????? ???????????????.";
			commonPopup(popupText);
			$("#inputPhone").focus();
		}
 		else if($("#selectKeyword").val() == 0)
		{
			console.log($("#selectKeyword").val());
			popupText = "???????????? ?????? ?????????.";
			commonPopup(popupText);
			$("#selectKeyword").focus();
		}
		else if($.trim($("#inputKeyword").val()) == "")
		{
			popupText = "???????????? ???????????????.";
			commonPopup(popupText);
			$("#inputKeyword").focus();
		} 
		else
		{
			var params = $("#editInfoForm").serialize();
			
			$.ajax({
				url: "editInfos",
				data: params,
				dataType: "json",
				type: "post",
				success:function(result)
				{
					if(result.msg == "success")
					{
						location.href="main";
					}
					else if(result.msg == "failed")
					{
						popupText = "????????? ?????????????????????.";
						commonPopup(popupText);
					}
					else
					{
						popupText = "???????????? ????????? ??????????????????.";
						commonPopup(popupText);
					}
				}, //success end
				error: function(request, status, error) {
					console.log(error);
				} // error end
			}); //ajax end 
		}//if ~ else end
	}); //nextBtn click end
	
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
		} //if end ?????? ???????????? ?????????, ??? ??????, ????????? ?????? ????????? ????????? ????????????
		
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
		}//if ~ else end ????????? ?????? ????????? ?????? ????????? or ?????? ??????
	}); //notification tbody span tr click end
	
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
  	
  	$("#delBtn").on("click", function(){
  		checkPopup();
  	});
  	
	$("#preBtn").on("click", function(){ //???????????? ??????
		location.href = "main";
	}); //preBtn click end
  	
	$("#myPage").on("click", function(){
  		location.href = "myPage";
	}); //find click endmyPage
	
	$("#timeline").on("click", function(){
  		location.href = "timeline";
  	}); //timeline click end
	
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
  	
  	$("#editProfile").on("click", function(){
  		location.href = "editProfile";
  	}); //editProfile click end
  	
  	$("#notificationMore").on("click", function(){
		location.href="notification";
	}); //notificationMore click end
	
	$("#bookmarkPhoto").on("click", function(){
		location.href = "myPageBMK";
	}); //bookmarkPhoto click end
	
	// ??????????????? ???????????? ??????
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
});//document ready end 
function checkPopup()
{
	var html = "";
	
	html +="<div class=\"popup\">";
	html +="	   <div class=\"popup_entity_txt\">????????? ?????? ???????????????????</div>";
	html +="       <div class=\"btn_list\">";
	html +="       		<a id=\"ok\">??????</a>";
	html +="      		<a id=\"cancel\">??????</a>";
	html +="       </div>";
	html +="</div>";
	html +="<div class=\"bg\"></div>";
	
	$("body").append(html);
	
	$("#cancel").on("click", function(){ 
		$(".popup").remove();
		$(".bg").remove();
	}); //cancelImg click end
	
	$("#ok").on("click", function(){ 
		var params = $("#memForm").serialize();
		
		$.ajax({
			url: "deletes",
			data: params,
			dataType:"json",
			type: "post",
			success:function(result)
			{
				if(result.msg == "success")
				{
					location.href="main";
				}
				else
				{
					popupText = "????????? ?????????????????????.";
					commonPopup(popupText);
				}
			}, //success end
			error: function(request, status, error) {
				console.log(error);
			} // error end
		}); //ajax end 
	}); //cancelImg click end
}//findBtnPopup end
function commonPopup(txt) //??????????????? ????????? ?????? , txt??? ????????? ????????? ????????? 
{
	var html = "";
	
	html +="<div class=\"popup\">";
	html	 +="	 <div class=\"popup_entity_txt\">"+ txt +"</div>";
	html	 +="     <div class=\"btn_list\">";
	html	 +="        <div id=\"yesBtn\">???</div>";
	html	 +="     </div>";
	html	 +="</div>";
	html	 +="<div class=\"bg\"></div>";
	
	$("body").append(html);
	
	$("#yesBtn").on("click", function(){ 
		$(".popup").remove();
		$(".bg").remove();
	}); //yesBtn click end
}
function resetPW() //???????????? ????????? ????????? ??? ?????????
{
	$("#inputPW").val("");
	$("#inputRePW").val("");
	$("#inputPW").focus();
}
function makeNotification(notification)
{
	var html = ""; //?????? ?????????
	var readCnt = 0;
	var html1 = "";  //?????? ?????? ?????????
	
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
				html +=" 	<th ><img alt=\"?????????\" src=\"" + path + "\" class=\"user\" user=\"" + noti.NOTF_MEM_NO + "\"></th>";
				html +=" 	<th><span class=\"user\" user=\"" + noti.NOTF_MEM_NO + "\">" + noti.REQUEST +"</span>?????? ????????? ????????? ???????????????.</th>";
				html +=" 	<th>" + noti.NOTF_DATE +"[" + noti.msg + "]</th>";
				html +=" </tr>";
				break;
			case 1:
				html +=" 	<th ><img alt=\"?????????\" src=\"" + path + "\" class=\"user\" user=\"" + noti.NOTF_MEM_NO + "\"></th>";
				html +=" 	<th>[????????????]<span class=\"journal\" journal=\"" + noti.JOURNAL_NO + "\">" + noti.JTITLE + "</span>???  <span class=\"user\" user=\"" + noti.NOTF_MEM_NO + "\">" + noti.REQUEST + "</span>?????? <span class=\"journal\" journal=\"" + noti.JOURNAL_NO + "\">" + noti.JCONTENTS + "...</span> ????????? ???????????????</th>";
				html +=" 	<th>" + noti.NOTF_DATE +"[" + noti.msg + "]</th>";
				html +=" </tr>";
				break;	
			case 2:
				html +=" 	<th ><img alt=\"?????????\" src=\"" + path + "\" class=\"user\" user=\"" + noti.NOTF_MEM_NO + "\"></th>";
				html +=" 	<th>[?????????]<span class=\"post\" post=\"" + noti.POST_NO + "\">" + noti.BTITLE + "</span>???  <span class=\"user\" user=\"" + noti.NOTF_MEM_NO + "\">" + noti.REQUEST + "</span>?????? <span class=\"post\" post=\"" + noti.POST_NO + "\">" + noti.BCONTENTS + "...</span> ????????? ???????????????</th>";
				html +=" 	<th>" + noti.NOTF_DATE +"[" + noti.msg + "]</th>";
				html +=" </tr>";
				break;
			case 3:
				html +=" 	<th ><img alt=\"?????????\" src=\"" + path + "\" class=\"user\" user=\"" + noti.NOTF_MEM_NO + "\"></th>";
				html +=" 	<th>[????????????]<span class=\"journal\" journal=\"" + noti.JCJOURNAL_NO + "\">" + noti.JCTITLE + "</span>???  <span class=\"user\" user=" + noti.NOTF_MEM_NO + ">" + noti.REQUEST + "</span>?????? <span class=\"journal\" journal=\"" + noti.JCJOURNAL_NO + "\">" + noti.JUP_CONTENTS + "...</span> ????????? ???????????????</th>";
				html +=" 	<th>" + noti.NOTF_DATE +"[" + noti.msg + "]</th>";
				html +=" </tr>";
				break;
			case 4:
				html +=" 	<th ><img alt=\"?????????\" src=\"" + path + "\" class=\"user\" user=\"" + noti.NOTF_MEM_NO + "\"></th>";
				html +=" 	<th>[?????????]<span class=\"post\" post=\"" + noti.BCPOST_NO + "\">" + noti.BCTITLE + "</span>???  <span class=\"user\" user=\"" + noti.NOTF_MEM_NO + "\">" + noti.REQUEST + "</span>?????? <span class=\"post\" post=\"" + noti.BCPOST_NO + "\">" + noti.BUP_CONTENTS + "...</span> ????????? ???????????????</th>";
				html +=" 	<th>" + noti.NOTF_DATE +"[" + noti.msg + "]</th>";
				html +=" </tr>";
				break;
			case 5:
				html +=" 	<th ><img alt=\"?????????\" src=\"" + path + "\" class=\"user\" user=\"" + noti.JCCMEM_NO + "\"></th>";
				html +=" 	<th>??? ??????<span class=\"journal\" journal=\"" + noti.CCJOURNAL_NO + "\">" + noti.UPJCONTENTS + "</span>???  <span class=\"user\" user=\"" + noti.JCCMEM_NO + "\">" + noti.REQUEST + "</span>?????? <span class=\"journal\" journal=\"" + noti.CCJOURNAL_NO + "\">" + noti.DOWNJCONTENTS + "...</span> ????????? ???????????????</th>";
				html +=" 	<th>" + noti.NOTF_DATE +"[" + noti.msg + "]</th>";
				html +=" </tr>";
				break;
			case 6:
				html +=" 	<th ><img alt=\"?????????\" src=\"" + path + "\" class=\"user\" user=\"" + noti.BCCMEM_NO + "\"></th>";
				html +=" 	<th>??? ??????<span class=\"post\" post=\"" + noti.CCPOST_NO + "\">" + noti.UPBCONTENTS + "</span>???  <span class=\"user\" user=\"" + noti.BCCMEM_NO + "\">" + noti.REQUEST + "</span>?????? <span class=\"post\" post=\"" + noti.CCPOST_NO + "\">" + noti.DOWNBCONTENTS + "...</span> ????????? ???????????????</th>";
				html +=" 	<th>" + noti.NOTF_DATE +"[" + noti.msg + "]</th>";
				html +=" </tr>";
				break;
			case 7:
				html +=" 	<th ><img alt=\"?????????\" src=\"" + path + "\" class=\"user\" user=\"" + noti.NOTF_MEM_NO + "\"></th>";
				html +=" 	<th>???????????? ?????? ?????? [????????????]<span class=\"qna\" qna=\"" + noti.GBN_NO + "\">" + noti.QTITLE + "</span>??? ????????? ??????????????????.</th>";
				html +=" 	<th>" + noti.NOTF_DATE +"[" + noti.msg + "]</th>";
				html +=" </tr>";
				break;
			case 8:
				html +=" 	<th ><img alt=\"?????????\" src=\"" + path + "\" class=\"user\" user=\"" + noti.NOTF_MEM_NO + "\"></th>";
				html +=" 	<th>???????????? ?????? ?????? [????????????]<span class=\"qna\" qna=\"" + noti.GBN_NO + "\">" + noti.QTITLE + "</span>??? ????????? ?????? ???????????????.</th>";
				html +=" 	<th>" + noti.NOTF_DATE +"[" + noti.msg + "]</th>";
				html +=" </tr>";
				break;
			case 9:
				html +=" 	<th ><img alt=\"?????????\" src=\"" + path + "\" class=\"user\" user=\"" + noti.NOTF_MEM_NO + "\"></th>";
				html +=" 	<th>?????? ????????? [????????????]<span class=\"journal\" journal=\"" + noti.GBN_NO + "\">" + noti.LIKE_TITLE + "</span> ??? ????????? ??????????????????.</th>";
				html +=" 	<th>" + noti.NOTF_DATE +"[" + noti.msg + "]</th>";
				html +=" </tr>";
				break;
			case 10:
				html +=" 	<th ><img alt=\"?????????\" src=\"" + path + "\" class=\"user\" user=\"" + noti.NOTF_MEM_NO + "\"></th>";
				html +=" 	<th>?????? ????????? [?????????]<span class=\"post\" post=\"" + noti.GBN_NO + "\">" + noti.LIKE_TITLE2 + "</span> ??? ????????? ??????????????????.</th>";
				html +=" 	<th>" + noti.NOTF_DATE +"[" + noti.msg + "]</th>";
				html +=" </tr>";
				break;
			default:
				console.log("?????? ?????????????");
		}
	}
	
	html1 = "<div id=\"notificationTxt\">" + readCnt + "<div>";
	
	$("#cnt").prepend(html1);
	$("#notification tbody").html(html);
} //makeNotification end
</script>
</head>
<body>
<form action="#" id="form">
	<input type="hidden" id="valueStorage" name="storage"/>
	<input type="hidden" id="MEM_NO" name="MEM_NO" value="${sMEM_NO}"/>
</form>
<form action="#" id="memForm">
	<input type="hidden" id="MEM_NO" name="MEM_NO" value="${sMEM_NO }"/>
	<input type="hidden" id="page" name="page" value="${page}"/>
	<input type="hidden" id="GBN" name="GBN" value="1"/>
	<input type="hidden" id="firstPage" name="firstPage" value="1"/>
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
<form action="#" id="notificationForm">
	<input type="hidden" id="NOTF_NO" name="NOTF_NO" value=""/>
</form>
<div id="wrap">
         <!-- header?????? ?????? -->
         <div id="header">
            <div class="banner">
               <div class="top">
                  <div class="logo_area">
                     <a href="main"><img alt="??????" src="./resources/images/logo.png" class="logo_photo"></a>
                     <div class="site_name">???????????? ????????????</div>
                  </div>
                  
                  <div class="btns"> <!-- ?????? logins??? ?????? -->
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
											<th colspan="3" id="notificationMore">...?????????</th>
										</tr>
									</tfoot>
								</table>
							</div></li>
							<li><img alt="bookmark" src="./resources/images/bmk.png" id="bookmarkPhoto"></li>
							<li><img alt="?????????" src="" id="profilePhoto">
								<ul id="profileSlidedown">
									<li id="myPage">?????? ?????????</li>
									<li id="timeline">????????????</li>
									<li id="editProfile">????????? ??????</li>
									<li id="editInfo">???????????? ??????</li>
									<li id="logoutBtn">????????????</li>
								</ul>
							</li>
						</ul>
                  	</div>
               </div> <!-- top end -->
            </div>
           
            <nav class="menu">
               <ul>
                  <li id="journalBoard">???????????????</li>
                  <li id="community">???????????????</li>
                  <li id="travelWriter">????????????</li>
                  <li id="clientCenter">????????????</li>
                  <li id="admin">???????????????</li>
               </ul>
            </nav>
            <form action="#" id="goSearch" method="post" >
				<img alt="search" src="./resources/images/search.png" class="search_icon"/>
				<input type="text" class="search" id="mainSearchTxt" name="mainSearchTxt" value="${param.mainSearchTxt}" placeholder="??????">
				<select class="filter" id="mainSearchFilter" name="mainSearchFilter" >
					<option value="0" selected="selected">????????????</option>
					<option value="1">????????????</option>
					<option value="2">????????????</option>
					<option value="3">???????????????</option>
					<option value="4">?????????</option>
				</select>
			</form>
         </div>
		
		<div id="container">
			<div class="join">[???????????? ??????]</div>
			
			<form action="#" id="editInfoForm">
				<div id="infoWrap">
					<div class="title">??????</div>
					<input type="text" id="inputName" name="inputName" placeholder="????????? ????????? ?????????." disabled="disabled"/> 
					
					<div class="title">??????/??????</div>
					<select id="selectYear" name="inputYear" disabled="disabled">
						<option>??????</option>
						<c:forEach var="i" begin="1900" end="2021" step="1" >
							<option value="${i}">${i}</option>
						</c:forEach>
					</select>
					<select id="selectMonth" name="inputMonth" disabled="disabled">
						<option>???</option>
						<c:forEach var="i" begin="1" end="12" step="1" >
							<option value="${i}">${i}</option>
						</c:forEach>
					</select>
					<select id="selectDay" name="inputDay" disabled="disabled">
						<option>???</option>
						<c:forEach var="i" begin="1" end="31" step="1" >
							<option value="${i}">${i}</option>
						</c:forEach>
					</select><br/>
					
					<div id="radioWrap">
						<label><input type="radio" name="sex" value="0" checked disabled="disabled"/>????????????</label>
						<label><input type="radio" name="sex" value="1" disabled="disabled"/>??????</label>
						<label><input type="radio" name="sex" value="2" disabled="disabled"/>??????</label>
					</div>
				
					<div class="title">?????????</div>
					<input type="text" id="inputID" name="inputID" placeholder="????????? ????????? ????????? ?????????."/>
					<input type="button" id="IDDbCkBtn" value="????????????"/>
					
					<div class="title">????????????</div>
					<input type="password" id="inputPW" name="inputPW" placeholder="8~32?????? ?????????????????? ?????????????????? " minlength="8" maxlength="32"/>
					
					<div class="title">???????????? ?????????</div>
					<input type="password" id="inputRePW" name="inputRePW" placeholder="??????????????? ????????? ????????????."  minlength="8" maxlength="32"/>
					
					<div class="title">????????????</div>
					
					<div>
						<select id="selectTelcom" name="selectTelcom">
							<option value="0">?????????</option>
							<option value="KT">KT</option>
							<option value="SKT">SKT</option>
							<option value="LG">LG</option>
						</select>
						<input type="text" maxlength="8" placeholder="???????????? 8??????(010 / '-'??????)" id="inputPhone" name="inputPhone"/>
					</div>
				
					<div class="title">?????????</div>
					<div>
						<input type="text" id="inputEmail" name="inputEmail" disabled="disabled"/>
						<span id="txtAt">@</span>
						<input type="text" id="inputDomain" name="inputDomain" disabled="disabled"/>
						
						<select id="selectDomain" name="selectDomain" disabled="disabled">
							<option value="">????????????</option>
							<option value="naver.com">naver.com</option>
							<option value="nate.com">nate.com</option>
							<option value="gmail.com">gmail.com</option>
						</select>
						<input type="button" value="????????????" id="sendCode" disabled="disabled"/>
					</div>
					
					<div class="title">?????????</div>
					<select id="selectKeyword" name="selectKeyword">
							<option value="0">????????? ????????? ???????????????</option>
							<option value="1">????????? ??? ????????? ??????????</option>
							<option value="2">????????? ????????? ??? ?????? ?????? ??????????</option>
							<option value="3">???????????? ????????? ??????????</option>
							<option value="4">???????????? ??? ?????? ?????????</option>
							<option value="5">?????? ???????????? ????????? ??????????</option>
							<option value="6">????????? ?????? ??? ????????? ?????? ??????????</option>
							<option value="7">?????? ???????????? ?????? ??????????</option>
							<option value="8">?????? ??????????</option>
							<option value="9">?????? ??????????????? ?????? 1??????</option>
							<option value="10">????????? ????????? ??????????????? ?????????????</option>
					</select>
					<input type="text" id="inputKeyword" name="inputKeyword" placeholder="???????????? ???????????????."/>
					<input type="hidden" name="MEM_NO" value="${sMEM_NO}"/>
				</div>
			</form>
			
			<div id="btnWrap">
				<input id="preBtn" type="button" value="Prev"/>
				<input id="nextBtn" type="button" value="Next"/>
			</div>
		</div>
		<div id="deleteMem"><input type="button" id="delBtn" value="????????????"/></div>
		<div id="footer">
            <p>
               POPJOURNEY<br/>
               GDJ-35??? LEE Eun-Soo, LEE In-Bok, CHOI Jeong-Min<br/>
               Copyright?? POPJOURNEY. All Rights Reserved.
            </p>
        </div>         	
	</div>
</body>
</html>