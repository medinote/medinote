<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" 
href="/css/bootstrap.css"/>
<link type="text/css" rel="stylesheet" 
href="/css/bootstrap.min.css"/>
<style type="text/css">

.login_wrap {
	width: 500px;
	position: absolute;
	left: 35%;
	top : 20%;

}

.login_card_out {
	width: 100%;
    border: 1px solid black;
	position: relative;
	margin-top: 100px;
	
} 

 .login_card_in{
	margin: 5%
}

.login_card_in td{
	text-align: right;
	padding-right : 10px
}

.login_btn{
	margin-top: 10px;
	width: 100px;
} 

</style>
	</head>
<body>
	<div class="login_wrap">
		<div>
			<img alt="" src="logo/logo2.png" width="500px">
		</div>

		<div class="card border-primary mb-3 login_card_out">
			<div class="login_card_in">
				<form>
					<table style="width: 100%">
						<colgroup>
							<col width="50px">
							<col width="*">
						</colgroup>
						<tr>
							<td class="staticEmail"><label class="">ID</label>
							</td>
							<td><input type="text" id="s_id"
								class="form-control" /></td>
						</tr>
						<tr>
							<td class="staticEmail"><label>PW</label></td>
							<td><input type="text" id="s_pw"
								class="form-control" /></td>
						</tr>
						<tr>
							<td colspan="2" class=""><input type="button"
								value="로그인" class="btn btn-primary login_btn" /> <input
								type="button" value="취소" class="btn btn-primary login_btn" /></td>
						</tr>
						<tr>
							<td colspan="2" class=""><a href=""><font
									size="2">아이디/비밀번호 찾기</font></a></td>
						</tr>
					</table>
				</form>

			</div>
		</div>

	</div>


</body>
</html>