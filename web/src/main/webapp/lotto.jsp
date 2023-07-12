<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>lotto</title>
</head>
<body>
<% 
List<Integer> list = new ArrayList<>();
Random ra = new Random();
for(int i=0; i<6; i++){
	list.add(ra.nextInt(45) + 1);
}
%>
<table border="1">
	<tr>
<%for(int i=0; i<list.size(); i++){%>
		<td><%= list.get(i) %></td>
<%}%>
	</tr>
</table>
</body>
</html>