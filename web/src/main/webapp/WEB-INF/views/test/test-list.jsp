<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>test list</h3>
<%
// 여기서도 되어야 함
Object obj = request.getAttribute("strList");
List<String> list = (List<String>)obj; // 원래 데이터 타입인 list로 캐스팅

for(String str : list){
	out.println(str + "<br>");
}
%>
</body>
</html>