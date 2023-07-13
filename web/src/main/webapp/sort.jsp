<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.ArrayList"%>
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
// 1차원 배열
List<Integer> numList = new ArrayList<>();
numList.add(10);
numList.add(5);
numList.add(21);

int tmp = 0;
for(int i=0; i<numList.size(); i++){
	for(int j=i+1; j<numList.size(); j++){
		if(numList.get(i)>numList.get(j)){
			tmp = numList.get(i);
			numList.set(i, numList.get(j)); // 해당 인덱스 값을 넣는 set!!!
			numList.set(j, tmp);
		}
	}
}

// 출력
for(int i=0; i<numList.size(); i++){
	%>
	<%= numList.get(i) %><br>
<%
}
%>


<%
List<Map<String, Integer>> mapList = new ArrayList<>();
Map<String, Integer> map = new HashMap<>();
map.put("age", 10);
mapList.add(map);
map = new HashMap<>();
map.put("age", 5);
mapList.add(map);
map = new HashMap<>();
map.put("age", 21);
mapList.add(map);

Map<String, Integer> tempMap = new HashMap<>();
for(int i=0; i<mapList.size(); i++){
	for(int j=i+1; j<mapList.size(); j++){
		if(mapList.get(i).get("age")>mapList.get(j).get("age")){
			tempMap = mapList.get(i);
			mapList.set(i, mapList.get(j));
			mapList.set(j, tempMap);
		}
	}
}

//출력
for(int i=0; i<mapList.size(); i++){
	%>
	<%= mapList.get(i).get("age") %><br>
<%
}
%>
</body>
</html>