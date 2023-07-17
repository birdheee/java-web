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
<title>Insert title here</title>
</head>
<body>
<%
String miNum = request.getParameter("miNum");
String miTitle = request.getParameter("miTitle");
String miGenre = request.getParameter("miGenre");
String miCredat = request.getParameter("miCredat");
String miCnt = request.getParameter("miCnt");
String miDesc = request.getParameter("miDesc");
Connection con = DBCon.getCon();
String sql = "UPDATE MOVIE_INFO SET MI_TITLE=?, MI_GENRE=?, MI_CREDAT=?, MI_CNT=?, MI_DESC=? ";
sql += " WHERE MI_NUM=?";
PreparedStatement pstmt = con.prepareStatement(sql);
pstmt.setString(1, miTitle);
pstmt.setString(2, miGenre);
pstmt.setString(3, miCredat);
pstmt.setString(4, miCnt);
pstmt.setString(5, miDesc);
pstmt.setString(6, miNum);
int result = pstmt.executeUpdate();
if(result==1){
%>
<script>
	alert('수정 완료');
	location.href='/web/movie/movie-list.jsp?miNum=<%=miNum%>';
</script>
<%
}
%>
</body>
</html>