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
<title>영화 등록</title>
</head>
<body>
<jsp:include page="/include/header.jsp"/>
<form>
	<table border="1">
		<tr>
			<th>제목</th>
			<td><input type="text" id="miTitle" name="miTitle"></td>
		</tr>
		<tr>
			<th>장르</th>
			<td>
				<select id="miGenre" name="miGenre">
					<option value="">장르</option>
					<option value="액션">액션</option>
					<option value="코미디">코미디</option>
					<option value="멜로">멜로</option>
					<option value="S/F">S/F</option>
					<option value="스릴러">스릴러</option>
				</select>
			</td>
		</tr>
		<tr>
			<th>상영일</th>
			<td><input type="date" id="miCredat" name="miCredat"></td>
		</tr>
		<tr>
			<th>관객수</th>
			<td><input type="number" id="miCnt" name="miCnt"></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea id="miDesc" name="miDesc" style="resize:none" cols="30" rows="15"></textarea></td>
		</tr>
		<tr>
			<td colspan ="2" align="right"><button>등록</button></td>
		</tr>
	</table>
</form>
<%
String miTitle = request.getParameter("miTitle");
if(miTitle!=null && !miTitle.isEmpty()){
	String miGenre = request.getParameter("miGenre");
	String miCredat = request.getParameter("miCredat");
	String miCnt = request.getParameter("miCnt");
	String miDesc = request.getParameter("miDesc");
	Connection con = DBCon.getCon();
	String sql = "INSERT INTO MOVIE_INFO(MI_TITLE, MI_GENRE, MI_CREDAT, MI_CNT, MI_DESC) ";
	sql += " VALUES(?, ?, ?, ?, ?)";
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, miTitle);
	pstmt.setString(2, miGenre);
	pstmt.setString(3, miCredat);
	pstmt.setString(4, miCnt);
	pstmt.setString(5, miDesc);
	int result = pstmt.executeUpdate();
	if(result==1){
%>
	<script>
		alert('등록 완료');
		location.href='/web/movie2/movie2-list.jsp';
	</script>
<%
	}
}
%>
</body>
</html>