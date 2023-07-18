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
<title>Insert title here</title>
</head>
<body>
<jsp:include page="/include/header.jsp"/>
<%
String miNum = request.getParameter("miNum");
if(miNum!=null && !miNum.isEmpty()){
	Connection con = DBCon.getCon();
	String sql = "SELECT MI_NUM, MI_TITLE, MI_GENRE, DATE_FORMAT(MI_CREDAT, '%Y-%m-%d') MI_CREDAT, MI_CNT, MI_DESC FROM MOVIE_INFO WHERE MI_NUM=?";
	PreparedStatement stmt = con.prepareStatement(sql);
	stmt.setString(1, miNum);
	ResultSet rs = stmt.executeQuery();
	if(!rs.next()){
%>
	<script>
		alert('이미 삭제된 항목입니다.);
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
		<th>상영일</th>
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
		<td colspan="2" align="right">
			<button onclick="location.href='<%=root%>/movie2/movie2-update.jsp?miNum=<%=rs.getString("MI_NUM")%>'">수정</button>
			<button>삭제</button>
		</td>
	</tr>
</table>
<%
}
%>
</body>
</html>