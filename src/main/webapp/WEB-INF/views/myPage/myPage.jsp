<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
	.searchHistory{
		position : relative;
		display : inline-block;
		width : 75%;
		padding : 0 15px;
		margin-left: 15px;
	}
	.btn-primary{
		height : 45px;
		border : 1px solid #efefef;
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
		<div class="searchHistory">
			<h3>최근검색내역</h3>
			<table class="table table-hover">
				<thead>
			    	<tr>
			      		<th scope="col">번호</th>
			      		<th scope="col">태그</th>
			      		<th scope="col">검색 일자</th>
			      		<th scope="col">삭제</th>
			    	</tr>
			  	</thead>
			    <tbody>
				  	<tr class="table-success">
				    	<th scope="row">20</th>
				      	<td>설사</td>
				      	<td>2020-11-13</td>
				      	<td><input type="button" id="delete" value="X" onclick=""/></td>
				    </tr>
					<tr>
				    	<th scope="row">19</th>
				      	<td>아랫배 통증</td>
				      	<td>2020-11-13</td>
				      	<td><input type="button" id="delete" value="X" onclick=""/></td>
				    </tr>
				    <tr class="table-success">
				    	<th scope="row">18</th>
				      	<td>편두통</td>
				      	<td>2020-11-07</td>
				      	<td><input type="button" id="delete" value="X" onclick=""/></td>
				    </tr>
					<tr>
				    	<th scope="row">17</th>
				      	<td>어깨 통증</td>
				      	<td>2020-10-30</td>
				      	<td><input type="button" id="delete" value="X" onclick=""/></td>
				    </tr>
			    </tbody>
			</table>
		</div>
	</div>
</body>
</html>