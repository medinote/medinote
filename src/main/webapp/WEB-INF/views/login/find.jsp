<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="/css/bootstrap.css" />
<link type="text/css" rel="stylesheet" href="/css/bootstrap.min.css" />
<style type="text/css">
.find_wrap{
	width: 45%;
	position: absolute;
	left: 30%;
	top : 20%;
}

.login_card_out {
	width: 100%;
	position: relative;
	margin-top: 100px;
	display: inline-block;
	height: 280px;
	
} 

 .login_card_in_l{
 	display : inline-block;
 	width: 50%;
 	float: left;
 	padding: 10px;
	border-right: 1px solid #dcdcdc;
	height: 100%;
}
 .login_card_in_r{
 	display : inline-block;
 	width: 50%;
 	float: right;
 	padding: 10px;
 	height: 100%;
}

.find_btn{
	width: 100px;

}

.find_td_right{
	text-align: right;
	padding-right: 10px;
}


table{
	width: 100%
}

td{
	 height: 50px; 
	
}

</style>
</head>
<body>
	<div class="find_wrap">
		<div style="text-align: center">
			<img alt="" src="logo/logo2.png" width="500px">
		</div>
		<div class="card border-primary mb-3 login_card_out">
			<div class="login_card_in_l">
				<form>
					<table>
						<colgroup>
							<col width="20%">
							<col width="*">
						</colgroup>
						<tr>
							<td colspan="2">
								<h5 class="card-title">아이디 찾기</h5>
								<hr/>
							</td>
						</tr>
						<tr>
							<td class="find_td_right">
								<label>이름</label>
							</td>
							<td>
								<input type="text" id="s_name" class="form-control" />
							</td>
							</tr>
							<tr>
							<td class="find_td_right">
								<label>전화번호</label>
							</td>
							<td>
								<input type="text" id="s_name" class="form-control"/>
							</td>
							</tr>
							
							<tr><td/></tr>
						<tr>
							<td colspan="2" class="find_td_right">
								<input type="button" value="찾기" class="btn btn-primary find_btn" />
							</td>
						</tr>
					</table>
				</form>
			</div>
			<div class="login_card_in_r">
				<form>
					<table>
						<colgroup>
							<col width="20%">
							<col width="*">
						</colgroup>
						<tr>
							<td colspan="2">
								<h5 class="card-title">비밀번호 찾기</h5>
								<hr/>
							</td>
						</tr>
						<tr>
							<td class="find_td_right">
								<label>아이디</label>
							</td>
							<td>
								<input type="text" id="s_name" class="form-control" />
							</td>
							</tr>
							<tr>
							<td class="find_td_right">
								<label>이름</label>
							</td>
							<td>
								<input type="text" id="s_name" class="form-control"/>
							</td>

						</tr>
						<tr>
							<td class="find_td_right">
								<label>전화번호</label>
							</td>
							<td>
								<input type="text" id="s_name" class="form-control"/>
							</td>

						</tr>
						<tr>
							<td colspan="2" class="find_td_right">
								<input type="button" value="찾기" class="btn btn-primary find_btn" />
							</td>
						</tr>
					</table>
				</form>
			
			</div>
		</div>
	
	</div>

</body>
</html>