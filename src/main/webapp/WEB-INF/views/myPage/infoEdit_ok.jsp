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
	.infoEdit_ok{
		position : relative;
		display : inline-block;
		width : 75%;
		padding : 0 15px;
		margin-left: 15px;
	}
	#chk_box{
		width: 28px;
		height: 28px;
	}
	#lastrow{
		text-align : right;		
	}
	.s_td{
		padding-left : 20px;
	}
	.dob{
		width: 100px;
		text-align : center;
	}
	tr{
		padding : 10px 20px;
		height: 35px;
	}
	tr>td:first-child{
		text-align: right;
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
	
		<div class="infoEdit_ok">
			<h3>내 정보 수정 </h3>
			<table class="info_t">
				<tr class="infoEdit_box">
					<td>아이디</td>
					<td class="s_td"><input type="text" placeholder="사용자 아이디"/></td>
				</tr>
				<tr class="infoEdit_box">
					<td>비밀번호</td>
					<td class="s_td"><input type="password"/></td>
				</tr>
				<tr class="infoEdit_box">
					<td>비밀번호 확인</td>
					<td class="s_td"><input type="password"/></td>
				</tr>
				<tr class="infoEdit_box">
					<td>이름 </td>
					<td class="s_td"><input type="text"/></td>
				</tr>
				<tr class="infoEdit_box">
					<td>생년월일</td>
					<td class="s_td">
						<input type="text" placeholder="년(4자리)" class="dob"/>-
						<select id="b_year" name="b_year" class="dob">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
						</select>		
						-
						<input type="text" placeholder="일" class="dob"/>
					</td>
				</tr>
				<tr class="infoEdit_box">
					<td>전화번호 </td>
					<td class="s_td"><input type="text"/>-<input type="text"/>-<input type="text"/></td>
				</tr>
				<tr class="infoEdit_box">
					<td>검색내역 저장 </td>
					<td class="s_td">
						<input type="checkbox" id="chk_box"/>
      				</td>      				
				</tr>
				<tr>
					<td colspan="2" id="lastrow" class="s_td">
						<button type="button" class="btn btn-primary">수정</button>
						<button type="button" class="btn btn-primary">취소</button>
					</td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>