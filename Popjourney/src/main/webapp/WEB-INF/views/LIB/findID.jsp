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
#mainSearchTxt{
	margin-top: 20px;
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
   border-radius: 0px;
}
#loginBtn:hover{
   color: #FFFFFF;
   background-color: #f37321;
}
#container{
	width: 1280px;
	margin: 0px auto;
}
.findID{
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
input[type='text']{
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
select{
	height: 36px;
}
.title{
	font-weight: bold;
	margin-top: 15px;
	font-size: 14pt;
}
#inputEmail, #inputDomain{
	width: 180px;
}
#txtAt{
	font-weight: bold;
	font-size: 12pt;
}
#selectDomain{
	width: 100px;
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
#search {
   float: right;
   margin: 20px 20px 20px 0px; 
   width: 250px;
   height: 29px;
}   
#filter {
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
   cursor: pointer;
}
#yesBtn:hover {
   background-color: #f37321;
   color: white;
}
.bg {
	display: inline-block;
	width: 100%;
	height: 927.4px;
	position: absolute;
	top: 0px;
	left: 0px;
	background-color: #000000;
	z-index: 400;
	opacity: 0.2;
}
.popup2 {
   display: inline-block;
   width: 600px;
   height: 180px;
   background-color: #fcfcfc;
   box-shadow: rgba(0, 0, 0, 0.09) 0 6px 9px 0;
   position: fixed;
   top: calc(50% - 75px); 
   left: calc(50% - 300px); 
   z-index: 500;
   font-size: 16pt;
   border-radius: 10px;
   font-size: 0px;
   border: 0px;
}
.list{
	font-size: 12pt;
}
#listTable{
	text-align: center;
}
#listTable tr{
	height: 35px;
}
#cancelImg{
	margin-top: 20px;
	width: 40px;
	margin-left: 280px;
	cursor: pointer;
}
#cancelImg2{
	margin-top: 10px;
	width: 30px;
	margin-left: 135px;
	cursor: pointer;
}
.send_finish{
	display: none;
	color: red;
	padding-bottom: 3px;
}
table{
	border-collapse: collapse;
}
</style>
<script type="text/javascript" src="resources/script/jquery/jquery-1.12.4.min.js"/></script>
<script type="text/javascript">
$(document).ready(function(){
	if("${sMEM_NO}" != "")
	{	
		location.href="main";
	}
	
	var pattern1 = /[0-9]/;
    var pattern2 = /[a-zA-Z]/;
	var pattern3 = /[~!@\#$%<>^&*]/; 
	
	$("#preBtn").on("click", function(){
		location.href="main";
	}); //preBtn click end
	
	$("#selectDomain").change(function(){  //????????? ????????? ????????? ?????????????????? ??? ??????
		$("#inputDomain").val("");
		$("#inputDomain").val($("#selectDomain").val());
	}); //selectDomain change end
	
	$("#nextBtn").on("click", function(){
		if($.trim($("#inputName").val()) == "")
		{
			popupText = "????????? ???????????????.";
			commonPopup(popupText);
			$("#inputName").focus();
		}
		else if(pattern3.test($("#inputName").val()))
		{
			popupText = "????????? ???????????? ?????? ??????????????????.";
			commonPopup(popupText);
			$("#inputName").val("");
			$("#inputName").focus();
		}
		else if(pattern1.test($("#inputName").val()))
		{
			popupText = "????????? ????????? ?????? ??????????????????.";
			commonPopup(popupText);
			$("#inputName").val("");
			$("#inputName").focus();
		}
		else if($.trim($("#inputEmail").val()) == "")
		{
			popupText = "???????????? ???????????????.";
			commonPopup(popupText);
			$("#inputEmail").focus();
		}
		else if($.trim($("#inputDomain").val()) == "")
		{
			popupText = "????????? ????????? ???????????????.";
			commonPopup(popupText);
			$("#inputDomain").focus();
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
			var params = $("#infoForm").serialize();
			
			$.ajax({
				url: "findIDs",
				data: params,
				dataType:"json",
				type: "post",
				success:function(result)
				{
					if(result.msg == "success")
					{
						findIDPopup(result.ID, result.NAME);
					}
					else
					{
						popupText = "???????????? ???????????? ????????????.";
						commonPopup(popupText);
					}
				}, //success end
				error: function(request, status, error) {
					console.log(error);
				} // error end
			}); //ajax end 
		} // if ~ else end
	}); //nextBtn click end
	
	$("#inputPW, #inputID").on("keypress", function(){
		$(".popup").remove();
		$(".bg").remove();
		if(event.keyCode == 13)
			$("#loginBtn").click();
	});
	
	$("#loginBtn").on("click", function(){  //????????? ?????? ??????
		if($.trim($("#inputID").val()) == "")
		{
			popupText = "???????????? ???????????????.";
			commonPopup(popupText);
		}
		else if($.trim($("#inputPW").val()) == "")
		{
			popupText = "??????????????? ???????????????.";
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
					if(result.msg == "success")
						location.href="main";
					else
					{
						popupText = "ID??? PW??? ???????????? ????????????.";
						commonPopup(popupText);
						$("#inputID").val("");
						$("#inputPW").val("");
					} 
				}, //success end
				error: function(request, status, error) {
					console.log(error);
				} // error end
			}); //ajax end 
		}// if ~ else end
	}); //loginBtn click end
	
	$("#join").on("click", function(){  //???????????? ?????? ??????
		location.href="terms";
	}); // join click end
	
	$("#find").on("click", function(){
		findBtnPopup();
	}); //find click end
	
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
}); //document ready end

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
function findBtnPopup()
{
	var html = "";
	
	html +="<div class=\"popup\">";
	html +="	   <div class=\"popup_entity_txt\">????????? ???????????????????</div>";
	html +="       <div class=\"btn_list\">";
	html +="       		<a href=\"findID\">ID??????</a>";
	html +="      		<a href=\"findPW\">PW??????</a>";
	html +="       <img src=\"./resources/images/cancel.png\" id=\"cancelImg2\"/>";
	html +="    </div>";
	html +="</div>";
	html +="<div class=\"bg\"></div>";
	
	$("body").append(html);
	
	$("#cancelImg2").on("click", function(){ 
		$(".popup").remove();
		$(".bg").remove();
	}); //cancelImg click end
}
function findIDPopup(ID, name)
{
	var html = "";
	
	html+="  <div class=\"popup2\">";
	html+=" 	   <div class=\"popup_entity_txt\">[????????? ????????? ??????]</div>";
	html+="      <div class=\"list\">";
	html+="	       <table id=\"listTable\">";
	html+="		       	<colgroup>";
	html+="					<col width=\"360\" />";
	html+="					<col width=\"60\" />";
	html+="					<col width=\"80\" />";
	html+="				</colgroup>";
	html+="				<thead>";
	html+="	       			<tr>";
	html+="	       				<th>?????????</th>";
	html+="	       				<th>??????</th>";
	html+="	       			</tr>";
	html+="	       		</thead>";
	html+="	       		<tbody>";
	html+="	       			<tr>";
	html+="	       				<td>"+ ID  +"</td>";
	html+="	       				<td>"+ name +"</td>";
	html+="	       				<td><input type=\"button\" class=\"send_btn\" value=\"??????\"/></td>";
	html+="						<td class=\"send_finish\">????????????</td>";
	html+="	       			</tr>";
	html+="	       		</tbody>";
	html+="	       	</table>";
	html+="      </div>";
	html+="      <img src=\"./resources/images/cancel.png\" id=\"cancelImg\"/>";
	html+=" </div>";
	html+=" <div class=\"bg\"></div>";
	
	$("body").append(html);
	
	$("table").on("mouseover", ".send_btn", function(){
		$(this).parent().parent().children(":nth-child(1)").css("background-color", "#d1e0e0");
	}); //table send_btn mouseover end 
	
	$("table").on("mouseout", ".send_btn", function(){
		$(this).parent().parent().children(":nth-child(1)").css("background-color", "#fcfcfc");
	}); //table send_btn mouseover end 
	
	$("table").on("click", ".send_btn", function(){
		$(this).attr("disabled", true);
		$(this).css("cursor", "default");
		$(this).css("color", "white");
		$(this).css("background-color", "#2e3459");
		$(this).parent().parent().children(":nth-child(4)").css("display", "inline");
	
		var params = $("#infoForm").serialize();
		
		$.ajax({
			url: "sendIDs",
			data: params,
			dataType: "json",
			type: "post",
			success:function(result)
			{
					location.href="main";
			}, //success end
			error: function(request, status, error) {
				console.log(error);
			} // error end
		}); //ajax end  
	}); //table send_btn click end
	
	$("#cancelImg").on("click", function(){ 
		$(".popup2").remove();
		$(".bg").remove();
		location.href="main";
	}); //yesBtn click end
}                                                                                                   
</script>                                                                                           
</head>
<body>
<div id="wrap">
         <!-- header?????? ?????? -->
         <div id="header">
            <div class="banner">
               <div class="top">
                  <div class="logo_area">
                     <a href="main"><img alt="??????" src="./resources/images/logo.png" class="logo_photo"></a>
                     <div class="site_name">???????????? ????????????</div>
                  </div>
                  <div class="logins">
                     <div class="sub_login1">
                         <form action="#" id="loginForm">
	                        <input type="button" id="loginBtn" value="?????????" />
	                        <input type="password" id="inputPW" name="inputPW" placeholder="PW" />
	                        <input type="text" id="inputID" name="inputID" placeholder="ID" />
                        </form>
                     </div>
                     <div class="sub_login2">
                        <span id="join">????????????</span>
                        <span id="find">ID/PW ??????</span>
                     </div>
                  </div>
               </div>
            </div>
            <nav class="menu">
               <ul>
                  <li id="journalBoard">???????????????</li>
                  <li id="community">???????????????</li>
                  <li id="travelWriter">????????????</li>
				  <li id="clientCenter">????????????</li>
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
			<div class="findID">[????????? ??????]</div>
			
			<div id="infoWrap">
				<div class="title">??????</div>
				<form action="#" id="infoForm">
					<input type="text" id="inputName" name="inputName" placeholder="????????? ????????? ?????????."/> 

					<div class="title">?????????</div>
					<div>
						<input type="text" id="inputEmail" name="inputEmail"/>
						<span id="txtAt">@</span>
						<input type="text" id="inputDomain" name="inputDomain"/>
						
						<select id="selectDomain" name="selectDomain">
							<option value="">????????????</option>
							<option value="naver.com">naver.com</option>
							<option value="nate.com">nate.com</option>
							<option value="gmail.com">gmail.com</option>
						</select>
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
				</form>
			
				<div id="btnWrap">
					<input id="preBtn" type="button" value="Prev"/>
					<input id="nextBtn" type="button" value="Next"/>
				</div>
			</div>
		</div>
		
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