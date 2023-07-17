<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.web.common.DBCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/include/common.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>영화 상세보기</title>
</head>
<body>
<jsp:include page="/include/header.jsp"/>
<%
String miNum = request.getParameter("miNum");
if(miNum!=null && miNum.length()!=0){
	Connection con = DBCon.getCon();
	String sql = "SELECT MI_TITLE, MI_GENRE, MI_CNT, MI_CREDAT, MI_DESC FROM MOVIE_INFO ";
	sql += " WHERE MI_NUM=?";
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, miNum);
	ResultSet rs = pstmt.executeQuery();
	if(!rs.next()){
%>
	<script>
		alert('이미 삭제된 영화입니다.');
		history.back();
	</script>
<%
	return;
	}
%>
<table border="1">
	<tr>
		<th>제목</th>
		<td><%=rs.getString("MI_TITLE")%></td>
	</tr>
	<tr>
		<th>장르</th>
		<td><%=rs.getString("MI_GENRE")%></td>
	</tr>
	<tr>
		<th>개봉일</th>
		<td><%=rs.getString("MI_CREDAT")%></td>
	</tr>
	<tr>
		<th>관객수</th>
		<td><%=rs.getString("MI_CNT")%></td>
	</tr>
	<tr>
		<th>내용</th>
		<td><%=rs.getString("MI_DESC")%></td>
	</tr>
	<tr>
		<td colspan="2" align="right"><button onclick="location.href='<%=root%>/movie/movie-update.jsp?miNum=<%=miNum%>'">수정</button>
		<button onclick="location.href='<%=root%>/movie/movie-delete-ok.jsp?miNum=<%=miNum%>'">삭제</button></td>
	</tr>
</table>
<%
}
%>
</body>
</html>