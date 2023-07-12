<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
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
List<Integer> list = new ArrayList<>();
Random ra = new Random();
while(list.size()<10){
	int rNum = ra.nextInt(100) + 1;
	if(list.indexOf(rNum) == -1){
		list.add(rNum);
	}
}

// 최댓값, 최솟값 구하기
int min = list.get(0);
int max = list.get(0);

for(int i=0; i<list.size(); i++){
	int num = list.get(i);
	if(max < num){
		max = num;
	}
}

for(int i=0; i<list.size(); i++){
	int num = list.get(i);
	if(min > num){
		min = num;
	}
}
%>
최댓값 : <%=max%>, 최솟값 : <%=min%>
</body>
</html>