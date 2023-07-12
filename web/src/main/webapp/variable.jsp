<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!
private int i = 1; // 접근 제어자 가능
String str = "1"; // 클래스 안에서 선언
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
out.print(str);
String str = "2"; // 메소드 안에서 선언
out.print(str);
// private int i = 1; 접근 제어자 불가능
%>
</body>
</html>