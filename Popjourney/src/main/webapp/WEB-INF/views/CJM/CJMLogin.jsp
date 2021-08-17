<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0,
							  		   maximum-scale=1.0, user-scalable=no" />
		<title>로그인</title>
		<style type="text/css">
			html {
				max-height: 731px;
			}
			body {
				background-image: url("resources/images/sero.jpg");
				margin: 0px;
				font-size: 10pt;
				max-height: 731px;
				height: 100%;
			}
			.login_box {
				display: block;
				margin: 38vh auto;
				width: 80%;
				height: 23vh;
			}
			.login {
				width: 100%;
				height: 8vh;
				margin-bottom: 10px;
				border: 0px;
				border-radius: 5px;
				outline-style: none;
				font-size: 1.4em;
				text-indent: 15px;
			}
			.btn {
				width: 20vw;
				height: 6vh;
				font-size: 1.2em;
				font-weight: bold;
				background-color: #e6f2ff;
				border: 0px;
				float: right;
				margin-left: 20px;
				border-radius: 5px;
			}
		</style>
		<script type="text/javascript"
				src="resources/script/jquery/jquery-1.12.4.min.js"></script>
		<script type="text/javascript">
			$(document).ready(function() {
				
				$("#loginBtn").on("click", function() {
					if($.trim($("#inputID").val()) == "") {
						alert("아이디를 입력해주세요!!");
						$("#inputID").focus();
					} else if($.trim($("#inputPW").val()) == "") {
						alert("비밀번호를 입력해 주세요!!");
						$("#inputPW").focus();
					} else {
						
						var params = $("#loginForm").serialize();

						$.ajax({
							url: "CJMLogins",
							type: "post",
							dataType: "json",
							data: params,
							success: function(res) {
								if(res.msg == "success") {
									//location.href = "CJMMyPage";
									$("#loginForm").attr("action", "CJMMyPage");
									$("#loginForm").submit();
								} else {
									alert("아이디 또는 비밀번호가 일치하지 않습니다.");
								}
							},
							error: function(request, status, error) {
								console.log(error);
							}
						});
					}
				});
			});
		</script>
	</head>
	<body>
		<form action="#" id="loginForm" method="post">
			<div class="login_box">
				<input type="text" id="inputID" name="inputID" placeholder="아이디를 입력하세요." class="login" /><br/>
				<input type="password" id="inputPW" name="inputPW" placeholder="비밀번호를 입력하세요." class="login" /><br/>
				<input type="button" value="로그인" id="loginBtn" class="btn" />
			</div>
		</form>
	</body>
</html>