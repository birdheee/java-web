<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>join</title>
</head>
<body>
<jsp:include page="/include/header.jsp"/>
<h3>회원가입 페이지</h3>
<%
String uiId = request.getParameter("id");
if(uiId!=null && uiId.length()!=0){
	String uiPwd = request.getParameter("pwd");
	String uiName = request.getParameter("name");
	out.print("uiId : " + uiId + "<br>");
	out.print("uiPwd : " + uiPwd + "<br>");
	out.print("uiName : " + uiName + "<br>");
}
%>
<form> <!-- action="/web/join.jsp" method="GET" 속성이 생략되어 있음-->
	<label for="uiId">아이디</label> <!-- for 속성은 id 속성과 일치해야 함 -->
	<input type="text" id="uiId" name="id"><br> <!-- name 속성이 값을 전달함 -->
	<label for="uiPwd">비밀번호</label>
	<input type="password" id="uiPwd" name="pwd"><br>
	<label for="uiName">이름</label>
	<input type="text" id="uiName" name="name"><br>
	<button>등록</button> <!-- 버튼의 default 값은 submit -->
</form>
</body>
</html>