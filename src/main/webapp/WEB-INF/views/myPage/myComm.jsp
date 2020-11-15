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
	.myComm{
		position : relative;
		display : inline-block;
		width : 75%;
		padding : 0 15px;
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
	
		<div class="myComm">
			<h3>내가 쓴 게시판</h3>
			<select id="" name="" class="">
							<option value="title">제목</option>
							<option value="content">내용</option>
							<option value="date">작성일</option>
			</select>
			<input type="text" id="" name="" placeholder="취직하고 싶다아아아"/>
			<button type="button" class="btn btn-primary" style="height: 28px, margin-bottom: 5px, text-height: 100%">검색</button>
			<table class="table table-hover">
				<thead>
			    	<tr>
			      		<th scope="col">번호</th>
			      		<th scope="col">제목</th>
			      		<th scope="col">증상</th>
			      		<th scope="col">작성일</th>
			    	</tr>
			  	</thead>
			    <tbody>
				  	<tr class="table-success">
				    	<th scope="row">20</th>
				      	<td>Happy Birthday Philipp</td>
				      	<td>Have a good one :)</td>
				      	<td>2020-11-14</td>
				    </tr>
					<tr>
				    	<th scope="row">19</th>
				      	<td>복통이 심한 날</td>
				      	<td>왼쪽 아랫배 통증, 오른쪽 아랫배 통증</td>
				      	<td>2020-10-28</td>
				    </tr>
				    <tr class="table-success">
				    	<th scope="row">18</th>
				      	<td>I have too much on my plate</td>
				      	<td>life's hard</td>
				      	<td>2020-10-11</td>
				    </tr>
					<tr>
				    	<th scope="row">17</th>
				    	<td>어깨 아플 때 운동 추천</td>
				      	<td>어깨 통증</td>
				      	<td>2020-10-13</td>
				    </tr>
			    </tbody>
			</table>
		</div>
	</div>
</body>
</html>