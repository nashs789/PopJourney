<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
.profile{
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
#att{
	display:none;
}
#photoArea{
	width: 120px;
	height: 120px;
	border-radius: 50%;
	border: 1px thin rgb(242, 242, 242, 0.6);
	margin-left: 200px;
}
#photo{
	width: 140px;
	height: 120px;
	border-radius: 50%;
	border: 1px solid black;
	box-sizing: border-box;
}
#findPhotoBtn{
	margin: 20px 0px 0px 232px;
}
.title{
	font-weight: bold;
	margin-top: 15px;
	font-size: 14pt;
}
#inputNic{
	width: 400px;
	margin-top: 15px;
	height: 30px;
}
#inputIntro{
	width: 498px;
	margin-top: 15px;
	height: 300px;
}
input[type='text']:focus, #inputIntro:hover{
	outline-color: #fcba03;
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
#editProfile{
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
#admin{
	display:none;
}
</style>
<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js"/></script>
<script type="text/javascript" src="resources/script/jquery/jquery.form.js"/></script>
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
	
	var params = $("#form").serialize();
	
	$.ajax({
		url: "getInfo2",
		data: params,
		dataType: "json",
		type: "post",
		success:function(result)
		{
			if(result.msg == "success")
			{
				var path = "";
				
				if(result.PHOTO_PATH != null)
				{
					path = "resources/upload/"+result.PHOTO_PATH;
				}
				else
				{
					path = "./resources/images/profile.png";
				}
				
				$("#photo").attr("src", path);
				$("#photoPath").val(result.PHOTO_PATH);
				
				$("#inputNic").val(result.NIC);
				$("#inputIntro").val(result.INTRO);
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
	
	var popupText = ""; //?????? ????????????
	var nicCheck = "";  //????????? ?????? ?????????
	
	$("#nicDbCkBtn").on("click", function(){  //????????? ????????????
		$(".popup").remove();
		$(".bg").remove();
		if($.trim($("#inputNic").val()) == "")
		{
			popupText = "???????????? ???????????????.";
			commonPopup(popupText);
			$("#inputNic").focus();
			return false;
		}
		
		$("#valueStorage").val($("#inputNic").val());
		
		var params = $("#form").serialize();
		
		$.ajax({
			url: "nicDbCk",
			data: params,
			dataType:"json",
			type: "post",
			success:function(result)
			{
				if(result.msg == "success")
				{
					popupText = "?????? ????????? ??????????????????.";
					commonPopup(popupText);
					nicCheck = $("#inputNic").val();
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
	}); //nicDbCkBtn click end
	
	$("#findPhotoBtn").on("click", function() {
		$("#att").click();
	});
	
	$("#att").on("change", function() {
		$("#fileName").html($(this).val().substring($(this).val().lastIndexOf("\\") + 1));
		
		var fileForm = $("#fileForm");
		
		fileForm.ajaxForm({
				success : function(res) {
				if(res.result == "SUCCESS") {
					// ????????? ????????? ??????
					if(res.fileName.length > 0) 
					{
						$("#photoPath").val(res.fileName[0]);
						
						var path = "resources/upload/"+res.fileName[0];
						$("#photo").attr("src", path);
					}
				} 
				else 
				{
					alert("?????? ???????????? ?????? ??????");
				}
			},
			error : function() {
				alert("?????? ???????????? ?????? ??????");
			}
		}); // ajaxForm end
		fileForm.submit();
	}); //att change end
	
	$("#nextBtn").on("click", function(){
		var fileForm = $("#fileForm");
		
		fileForm.ajaxForm({
			beforeSubmit : function() { // ????????? ?????? ?????? ????????? ??????.
				if($.trim($("#inputIntro").val()) == "") //????????? ?????? ?????? ???
				{
					$("#inputIntro").val("???????????????~ ??? ??????????????????.");
				}
				if($.trim($("#inputNic").val()) == "")
				{
					popupText = "???????????? ???????????????.";
					commonPopup(popupText);
					$("#inputNic").focus();
					return false;
				}
				else if($("#inputNic").val() != nicCheck)
				{
					popupText = "????????? ??????????????? ????????????.";
					commonPopup(popupText);
					return false;
				}
			},success : function(res) {
				if(res.result == "SUCCESS") {
					// ????????? ????????? ??????
					if(res.fileName.length > 0) {
						$("#photoPath").val(res.fileName[0]);
					}
					// ??? ??????
					var params = $("#editInfoForm").serialize();
					
					$.ajax({
						url: "changeProfiles",
						data: params,
						dataType:"json",
						type: "post",
						success:function(result)
						{
							var params = $("#editInfoForm").serialize();
							
							$.ajax({
								url: "editProfiles",
								data: params,
								dataType:"json",
								type: "post",
								success:function(result)
								{
									var txt = "????????? ???????????? ???????????????.";
									endPopup(txt)
								}, //success end
								error: function(request, status, error) {
									console.log(error);
								} // error end
							}); //ajax end 
						}, //success end
						error: function(request, status, error) {
							console.log(error);
						} // error end
					}); //ajax end 
				} else {
					alert("?????? ???????????? ?????? ??????");
				}
			},
			error : function() {
				alert("?????? ???????????? ?????? ??????");
			}
		}); // ajaxForm end
		fileForm.submit();
	}); //nextBtn click end
		
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
	
	$("#preBtn").on("click", function(){ //???????????? ??????
		location.href="main";
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
  	
	$("#editInfo").on("click", function(){
		location.href = "editInfo";
  	}); //editInfo click end
  	
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
function endPopup(txt) //??????????????? ????????? ?????? , txt??? ????????? ????????? ????????? 
{
	var html = "";
	
	html +="<div class=\"popup\">";
	html	 +="	 <div class=\"popup_entity_txt\">"+ txt +"</div>";
	html	 +="     <div class=\"btn_list\">";
	html	 +="        <a href=\"main\" id=\"yesBtn\">???</a>";
	html	 +="     </div>";
	html	 +="</div>";
	html	 +="<div class=\"bg\"></div>";
	
	$("body").append(html);
	
	$("#yesBtn").on("click", function(){ 
		$(".popup").remove();
		$(".bg").remove();
	}); //yesBtn click end
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
<form id="fileForm" action="fileUploadAjax" method="post" enctype="multipart/form-data">
	<input type="file" name="att" id="att" /> <!-- attach : ?????? -->
</form>
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
			<div class="profile">[????????? ??????]</div>
			
			<div id="infoWrap">
				<form action="#" id="editInfoForm">
					<div id="photoArea">
						<img id="photo" src="./resources/images/profile.png">
						<input type="hidden" id="photoPath" name="photoPath" value=""/>
					</div>
					<input type="button" value="????????????" id="findPhotoBtn"/><span id="fileName"></span>
					
					<div class="title">?????????</div>
					<input type="text" placeholder="???????????? ???????????????." id="inputNic" name="inputNic"/>
					<input type="button" value="????????????" id="nicDbCkBtn"/>
					
					<div class="title">?????????</div>
					<input type="text" placeholder="???????????????~ ??? ??????????????????." id="inputIntro" name="inputIntro"/>
					<input type="hidden" id="MEM_NO" name="MEM_NO" value="${sMEM_NO}"/>
				</form>
			</div> <!-- infoWrap end -->
			
			<div id="btnWrap">
				<input id="preBtn" type="button" value="Prev"/>
				<input id="nextBtn" type="button" value="Next"/>
			</div> <!-- btnWrap -->
		</div><!-- container end -->
		<div id="footer">
            <p>
               POPJOURNEY<br/>
               GDJ-35??? LEE Eun-Soo, LEE In-Bok, CHOI Jeong-Min<br/>
               Copyright?? POPJOURNEY. All Rights Reserved.
            </p>
        </div>  
   </div> <!-- wrap end -->      
</body>
</html>