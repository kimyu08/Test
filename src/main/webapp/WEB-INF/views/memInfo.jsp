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
	
	<h3>회원정보</h3>
		<table>
		<tr>
			<td>이름</td>
			<td><input type="text" name="name" id="name" value="${dto.name}"></td>
		</tr>
		<tr>
			<td>아이디</td>
			<td><input type="text" name="id" id="id" value="${dto.id}"></td>
		</tr>
		<tr>
			<td>비밀번호</td>
			<td><input type="text" name="pw" id="pw" value="${dto.pw}"></td>
		</tr>

		</table>		
		<input type="button" value="확인창" onclick="fevent()">

</body>
<script>

	function fevent(){
		alert("버튼클릭이용");
	}
	
</script>
</html>