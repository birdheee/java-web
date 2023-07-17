<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.web.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 게시판</title>
</head>
<body>
<jsp:include page="/include/header.jsp"/>
<table border="1">
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>장르</th>
		<th>상영일</th>
		<th>관객수</th>
	</tr>
<%
Connection con = DBCon.getCon();
String sql = "SELECT MI_NUM, MI_TITLE, MI_DESC, MI_GENRE, MI_CREDAT, MI_CNT FROM MOVIE_INFO";
Statement stmt = con.createStatement();
ResultSet rs = stmt.executeQuery(sql);
while(rs.next()){
%>
	<tr>
		<td><%=rs.getInt("MI_NUM")%></td>
		<td><a href="<%=root%>/movie/movie-view.jsp?miNum=<%=rs.getString("MI_NUM")%>"><%=rs.getString("MI_TITLE")%></td>
		<td><%=rs.getString("MI_GENRE")%></td>
		<td><%=rs.getString("MI_CREDAT")%></td>
		<td><%=rs.getInt("MI_CNT")%></td>
		<td><button onclick="location.href='<%=root%>/movie/movie-delete-ok.jsp?miNum=<%=rs.getInt("MI_NUM")%>'">삭제</button></td>
	</tr>
<%
}
%>
	<tr>
		<td colspan="6" align="right" onclick="location.href='/web/movie/movie-insert.jsp'"><button>등록</button></td>
	</tr>
</table>
</body>
</html>