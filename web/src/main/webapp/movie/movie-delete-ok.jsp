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
<title>영화 삭제</title>
</head>
<body>
<%
String miNum = request.getParameter("miNum");
Connection con = DBCon.getCon();
String sql = "DELETE FROM MOVIE_INFO WHERE MI_NUM=?";
PreparedStatement pstmt = con.prepareStatement(sql);
pstmt.setString(1, miNum);
int result = pstmt.executeUpdate();
if(result != 1){
%>
<script>
	alert('이미 삭제된 영화입니다.');
	location.href='<%=root%>/movie/movie-list.jsp';
</script>
<%
return;
}
%>
<script>
	alert('정상적으로 삭제되었습니다.');
	location.href='<%=root%>/movie/movie-list.jsp';
</script>
</body>
</html>