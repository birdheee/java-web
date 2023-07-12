<%@page import="java.sql.*"%>
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
<title>board.jsp</title>
</head>
<body>
<% 
// jsp에서 예외처리 해줌, 오류가 나지 않으면 driver를 찾은 것
// WAS는 jsp를 java로 바꾸어 컴파일 하여, 결과인 class를 전달함

Class.forName("org.mariadb.jdbc.Driver");
String url = "jdbc:mariadb://localhost:3306/kd";
String userName = "root";
String pwd = "kd1824java";
Connection con = DriverManager.getConnection(url, userName, pwd);
Statement stmt = con.createStatement();
String sql = "SELECT * FROM BOARD_INFO";
ResultSet rs = stmt.executeQuery(sql); // rs는 메타데이터와 실제데이터를 가지고 있음
%>
<table border="1">
	<!-- table row -->
	<tr>
		<!-- table data -->
		<td>번호</td>
		<td>제목</td>
		<td>내용</td>
		<td>작성자</td>
		<td>생성날짜</td>
		<td>조회수</td>
	</tr>
<%
while(rs.next()){
%>
	<%= "<tr>" %>
	<%= "<td>" + rs.getString("BI_NUM") + "</td>" %>
	<%= "<td>" + rs.getString("BI_TITLE") + "</td>" %>
	<%= "<td>" + rs.getString("BI_CONTENT") + "</td>" %>
	<%= "<td>" + rs.getString("BI_WRITER") + "</td>" %>
	<%= "<td>" + rs.getString("BI_CREDAT") + "</td>" %>
	<%= "<td>" + rs.getInt("BI_CNT") + "</td>" %>
	<%= "</tr>" %>
<%
}
%>
	<tr>
		<td colspan="6" align="center"><button>등록</button></td>
	</tr>
</table>
</body>
</html>