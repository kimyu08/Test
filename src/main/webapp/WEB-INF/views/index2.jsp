<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
	
	<input type="button" value="페이지 이동" onclick="location.href='index.do'">
	
	<h3>회원가입</h3>
	<form name="insert" action="join.do" method="post" onsubmit="return checkWrite()">
		<table>
		<tr>
			<td>이름</td>
			<td><input type="text" name="name" id="name"></td>
		</tr>
		<tr>
			<td>아이디</td>
			<td><input type="text" name="id" id="id"></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="pw" id="pw"></td>
		</tr>
		<tr>
			<td>비밀번호확인</td>
			<td><input type="password" name="pwcheck" id="pwcheck"></td>
		</tr>
		</table>		
		<input type="submit" value="회원가입">
		<input type="reset" value="취소">	
		<input type="button" value="확인창" onclick="fevent()">
	</form>
</body>
<script>
	function checkWrite() {
		if($("#name").val().length==0){alert("이름을 입력해주세요."); $("#name").focus();return false;}
		if($("#id").val().length==0){alert("ID를 입력해주세요."); $("#id").focus();return false;}
		if($("#pw").val().length==0){alert("비밃런호를 입력해주세요."); $("#pw").focus();return false;}
		if($("#pwcheck").val().length==0){alert("비밀번호 확인을 해주세요."); $("#pwcheck").focus();return false;}
		if($("#pw").val().trim()!=$("#pwcheck").val().trim()){
			alert("비밀번호가 맞지 않습니다.");
			$("#pw").focus();
			return false;
			}
	}
	
	function fevent(){
		alert("버튼클릭이용");
	}
	
</script>
</html>