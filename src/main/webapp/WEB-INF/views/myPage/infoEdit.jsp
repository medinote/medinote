<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!--외부 css파일 연결 -->
<link rel="stylesheet" type="text/css" href="css/js/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="css/js/bootstrap.min.css" />
<style>
	.wrap{
		position: absolute;
		width : 100%;
		height: 100%;
	}
	.btn-group-vertical{
		position: relative;
		display : inline-block;
		width : 15%;
		height: 300px;
		padding-top : 15px;
	}
	.pwCheck{
		position : relative;
		display : inline-block;
		width : 75%;
		padding : 10% 10%;
		margin-left: 15px;
	}
</style>
</head>
<body>
	<header>
		<%@ include file="../header.jsp"%> 
	</header>
	
	<div class="wrap">
		<div class="btn-group-vertical">
			<%@ include file="sideBar.jsp"%>
		</div>
	
		<div class="pwCheck">
			<h3>내 정보 수정</h3>
			<div class="pwCheck_2">
				<table>
					<tr>
						<td>
							<label for="pwCheck"> 비밀번호 : </label>
							<input type="password" id="pwCheck"/>
						</td>
					</tr>
					<tr>
						<td><input type="button" value="확인" onclick="infoEdit_ok()"/></td>
					</tr>
				</table>
			</div>
		</div>
	</div>
<script>
	function infoEdit_ok(){
		location.href="infoEdit_ok";
	}
</script>
</body>
</html>