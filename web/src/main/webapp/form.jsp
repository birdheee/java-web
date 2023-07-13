<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
if(id != null){
	out.print("니가 준 id : " + id + "<br>");
	out.print("니가 준 pwd : " + pwd + "<br>");
}
%>
<form>
	<label for="uiId">아이디</label> <!-- for 속성은 id 속성과 일치해야 함 -->
	<input type="text" id="uiId" name="id"><br> <!-- name 속성이 값을 전달함 -->
	<label for="uiPwd">비밀번호</label>
	<input type="password" id="uiPwd" name="pwd"><br>
	<button>등록</button>
</form>
</body>
</html>
<!-- ?를 기준으로 왼쪽은 요청 주소, 오른쪽은 Key, Value. 내부가 map으로 되어있음-->