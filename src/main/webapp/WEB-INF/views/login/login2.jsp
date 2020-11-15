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

.td_btn_right{
	text-align: right;
	padding-top: 10px;
}


.login_btn{
	margin-left: 10px;
	width: 80px;
	
}

.td_lb_right{
	text-align: right;
	padding-right: 10px;
}

.login_div_out{ 
	top: 400px;
	position: absolute;
}

.login_div_in{
	padding: 10px;
	padding-top: 20px;
}

.login_div_wrap{
	top : 200px;
	position:  relative; 
	text-align: center;
}

.wrap{

}


.input_txt{
	width: 100%
}

table td{
	/* border: 1px solid black */
}

</style>

</head>
<body>
<div class="login_div_wrap">
	<img alt="" src="logo/logo2.png" style="width: 500px; height: 100px">
</div>

<div class="card border-primary mb-3 login_div_out">
<div class="login_div_in">

<form>
	<table style="width: 100%" >
		<colgroup>
			<col width="50px">
			<col width="*">
		</colgroup>
		<tr>
			<td class="staticEmail td_lb_right">
				<label class="lb_right">ID</label>
			</td>
			<td>
				<input type="text" id="s_id" class="form-control input_txt"/>
			</td>
		</tr>
		<tr>
			<td class="staticEmail td_lb_right">
				<label>PW</label>
			</td>
			<td>
				<input type="text" id="s_pw" class="form-control input_txt"/>
			</td>
		</tr>
		<tr>
			<td colspan="2"  class="td_btn_right">
				<input type="button" value="로그인" class="btn btn-primary login_btn"/>
				<input type="button" value="취소" class="btn btn-primary login_btn"/>
			</td>
		</tr>
		<tr>
			<td colspan="2" class="td_btn_right">
				<a href=""><font size="2">아이디/비밀번호 찾기</font></a>
			</td>
		</tr>
	</table>
</form>
</div>
</div>

</body>
</html>