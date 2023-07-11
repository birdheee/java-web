<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>user.jsp</title>
</head>
<%
Class.forName("org.mariadb.jdbc.Driver");
String url = "jdbc:mariadb://localhost:3306/kd";
String userName = "root";
String pwd = "kd1824java";
Connection con = DriverManager.getConnection(url, userName, pwd);
Statement stmt = con.createStatement();
String sql = "SELECT * FROM USER_INFO";
ResultSet rs = stmt.executeQuery(sql);
%>
<body>
	<table border="1">
		<tr>
			<td>번호</td>
			<td>아이디</td>
			<td>패스워드</td>
			<td>이름</td>
		</tr>
<%
while(rs.next()){
%>
	<%= "<tr>" %>
	<%= "<td>" + rs.getString("UI_NUM") + "</td>" %>
	<%= "<td>" + rs.getString("UI_ID") + "</td>" %>
	<%= "<td>" + rs.getString("UI_PWD") + "</td>" %>
	<%= "<td>" + rs.getString("UI_NAME") + "</td>" %>
	<%= "</tr>" %>
<%
}
%>
	</table>
</body>
</html>