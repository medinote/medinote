<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MediNote</title>
<link type="text/css" rel="stylesheet" href="/css/layout.css"/>
<link rel="stylesheet" type="text/css" href="/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="/css/bootstrap.min.css" />
<style>
	.pwCheck{
		border : 1px solid black;
		position : relative;
		width : 75%;
		padding : 10% 10%;
		margin-left: 15px;
	}
</style>
</head>
<body>
	<%@include file="../header.jsp" %>
	<div class="content_wrap">
		<div class="content">
			<div class="content_side" >
				<%@ include file="sideBar.jsp"%>
			</div>
			<div class="content_center">
				<h3>내 정보 수정</h3>
				<div class="pw_check">
					<h5>비밀 번호 확인</h5>
					<table>
						<tbody>
							<tr>
								<td>
									<label for="pw_check"> 비밀번호 : </label>
									<input type="password" id="pw_check" name="pw_check"/>
								</td>
							</tr>
							<tr>
								<td><input type="button" value="확인" id="pwChk_btn" onclick="infoEdit_ok()"/></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
	<script>
		function infoEdit_ok(){
			location.href="/infoEdit_ok";
		}

	</script>
</body>
</html>