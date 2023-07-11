<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>class.jsp</title>
</head>
<%
Class.forName("org.mariadb.jdbc.Driver");
String url = "jdbc:mariadb://localhost:3306/kd";
String userName = "root";
String pwd = "kd1824java";
Connection con = DriverManager.getConnection(url, userName, pwd);
Statement stmt = con.createStatement();
String sql = "SELECT * FROM CLASS_INFO";
ResultSet rs = stmt.executeQuery(sql);
%>
<body>
	<table border="1">
		<tr>
			<td>번호</td>
			<td>이름</td>
			<td>설명</td>
		</tr>
<%
while(rs.next()){
%>
	<%="<tr>" %>
	<%="<td>" + rs.getString("CI_NUM") + "</td>"%>
	<%="<td>" + rs.getString("CI_NAME") + "</td>"%>
	<%="<td>" + rs.getString("CI_DESC") + "</td>"%>
	<%="</tr>" %>
<%
}
%>
	</table>
</body>
</html>