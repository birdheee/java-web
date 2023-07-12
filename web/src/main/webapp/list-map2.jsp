<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map"%>
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
<%
List<Map<String, String>> list = new ArrayList<>();
Map<String, String> map = new HashMap<>();
map.put("name", "김세희");
map.put("point", "80");
map.put("addr", "서울");
list.add(map);

map = new HashMap<>();
map.put("name", "김용준");
map.put("point", "77");
map.put("addr", "부산");
list.add(map);

map = new HashMap<>();
map.put("name", "이원준");
map.put("point", "99");
map.put("addr", "대전");
list.add(map);

map = new HashMap<>();
map.put("name", "이원기");
map.put("point", "66");
map.put("addr", "대구");
list.add(map);

map = new HashMap<>();
map.put("name", "이보성");
map.put("point", "55");
map.put("addr", "경기");
list.add(map);

map = new HashMap<>();
map.put("name", "이왕균");
map.put("point", "54");
map.put("addr", "광주");
list.add(map);

int min = Integer.parseInt(list.get(0).get("point"));
int max = Integer.parseInt(list.get(0).get("point"));
String minName = "";
String minAddr = "";
String maxName = "";
String maxAddr = "";

for(Map<String, String> m : list){
	int point = Integer.parseInt(m.get("point"));
	if(min > point){
		min = point;
		minName = m.get("name");
		minAddr = m.get("addr");
	}
	if(max < point){
		max = point;
		maxName = m.get("name");
		maxAddr = m.get("addr");
	}
}
%>
<table border="1">
	<tr>
		<th>최고점</th>
		<td><%=maxName%></td>
		<td><%=max%>점</td>
		<td><%=maxAddr%></td>
	</tr>
	<tr>
		<th>최저점</th>
		<td><%=minName%></td>
		<td><%=min%>점</td>
		<td><%=minAddr%></td>
	</tr>
</table>
</body>
</html>