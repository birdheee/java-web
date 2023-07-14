<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.web.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/include/common.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>유저</title>
</head>
<body>
<jsp:include page="/include/header.jsp"/>
<table border="1">
	<tr>
		<td>번호</td>
		<td>아이디</td>
		<td>패스워드</td>
		<td>이름</td>
	</tr>
<%
Connection con = DBCon.getCon();
Statement stmt = con.createStatement();
String sql = "SELECT UI_NUM, UI_ID, UI_PWD, UI_NAME FROM USER_INFO";
ResultSet rs = stmt.executeQuery(sql);
while(rs.next()){
%>
	<tr>
		<td><%=rs.getInt("UI_NUM")%></td>
		<td><%=rs.getString("UI_ID")%></td>
		<td><%=rs.getString("UI_PWD")%></td>
		<td><%=rs.getString("UI_NAME") %></td>
	</tr>
<%	
}
%>
	<tr>
		<td colspan="4" align="right"><button onclick="location.href='/web/user/user-insert.jsp'">등록</button></td>
	</tr>
</table>
</body>
</html>