<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.web.common.DBCon"%>
<%@page import="java.sql.Connection"%>
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
String biNum = request.getParameter("biNum");
String biTitle = request.getParameter("biTitle");
String biWriter = request.getParameter("biWriter");
String biContent = request.getParameter("biContent");
Connection con = DBCon.getCon();
Statement stmt = con.createStatement();
String sql = "UPDATE BOARD_INFO ";
sql += " SET BI_TITLE=?, BI_CONTENT=?, BI_WRITER=? ";
sql += " WHERE BI_NUM=?";
PreparedStatement pstmt = con.prepareStatement(sql);
pstmt.setString(1, biTitle);
pstmt.setString(2, biContent);
pstmt.setString(3, biWriter);
pstmt.setString(4, biNum);
int result = pstmt.executeUpdate(); // 이미 sql 문이 있어서 넣지 않음
if(result == 1){
%>
<script>
	alert('수정이 완료되었습니다.');
	location.href='/web/board/board-view.jsp?biNum=<%=biNum%>'
</script>
<%
}
%>
</body>
</html>