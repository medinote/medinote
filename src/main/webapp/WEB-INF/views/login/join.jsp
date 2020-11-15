<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions"  %>
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

.join_wrap {
	width: 500px;
	position: absolute;
	left: 35%;
	top : 10%;

}

 .join_card_out {
	width: 100%;
    border: 1px solid black;
	position: relative;
	margin-top: 50px;
	
} 

 .join_card_in{
	margin: 5%
}


.join_td_right{
	text-align: right;
	padding-right: 10px;
}

.join_btn{
	width: 100px;
}

.join_td_valid{
	height: 20px;
}  


</style>
	</head>
<body>
	<div class="join_wrap">
		<div>
			<img alt="" src="logo/logo2.png" width="500px">
		</div>

		<div class="card border-primary mb-3 join_card_out">
			<div class="join_card_in">
				<form>
					<table style="width: 100%">
						<colgroup>
							<col width="*">
							<col width="120px">
							<col width="120px">
							<col width="120px">
						</colgroup>
						<tr>
							<td colspan="4">
								<h4 class="card-title">회원가입</h4>
								<hr/>
							</td>
						</tr>
						<tr>
							<td class="join_td_right"><label>아이디</label>
							</td>
							<td colspan="3"><input type="text" id="s_id" 
								class="form-control is-valid" /></td>
						</tr>
						<tr>
							<td />
							<td colspan="3" class="join_td_valid">
								<label><font size="2">아이디 유효성 검사 메시지</font></label>
							</td>
						</tr>
						<tr>
							<td class="join_td_right"><label>비밀번호</label></td>
							<td colspan="3"><input type="password" id="s_pw"
								class="form-control" /></td>
						</tr>
						<tr>
							<td />
							<td colspan="3">
								<label><font size="2">비밀번호 유효성 검사 메시지</font></label>
							</td>
						</tr>
						<tr>
							<td class="join_td_right"><label>이름</label></td>
							<td colspan="3"><input type="text" id="s_name"
								class="form-control" /></td>
						</tr>
						<tr>
							<td  class="join_td_valid"/>
						</tr>
						<tr>
							<td class="join_td_right"><label>생년월일</label></td>
							<td><input type="text" id="s_birth1" 
								class="form-control" />
							</td>
							<td>
								<select id="s_birth2" class="custom-select">
								<c:forEach begin="1" end="12" var="idx">
								<option>${idx }</option>
								</c:forEach>
								</select>
							</td>

							<td><input type="text" id="s_birth3"  
								class="form-control" />
							</td>
						</tr>
						<tr>
							<td  class="join_td_valid"/>
						</tr>
						<tr>
							<td class="join_td_right"><label>전화번호</label></td>
							<td colspan="3"><input type="text" id="s_phone"
								class="form-control" /></td>
						</tr>
						<tr>
							<td  class="join_td_valid"/>
						</tr>
						<tr>
							<td colspan="4" class="join_td_right"><input type="button"
								value="가입" class="btn btn-primary join_btn" /> <input
								type="button" value="취소" class="btn btn-primary login_btn" /></td>
						</tr>
					</table>
				</form>

			</div>
		</div>

	</div>


</body>
</html>