<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test-list</title>
</head>
<body>
<%
Object obj = request.getAttribute("strList");
List<String> strList = (List<String>)obj;

for(String str : strList){
	out.println(str + "<br>");
}
%>
</body>
</html>