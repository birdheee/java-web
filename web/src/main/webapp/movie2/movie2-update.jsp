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
Connection con = DBCon.getCon();
String sql = "SELECT MI_TITLE, MI_GENRE, DATE_FORMAT(MI_CREDAT, '%Y-%m-%d') MI_CREDAT, MI_CNT, MI_DESC FROM MOVIE_INFO WHERE MI_NUM=?";
PreparedStatement pstmt = con.prepareStatement(sql);
pstmt.setString(1, miNum);
ResultSet rs = pstmt.executeQuery();
if(!rs.next()){
%>
	<script>
		alert('이미 삭제된 항목입니다.');
		history.back();
	</script>
<%
return;
}
%>
<form action="<%=root%>/movie2/movie2-update-ok.jsp">
	<input type="hidden" name="miNum" value=<%=miNum%>>
	<table border>
		<tr>
			<th>제목</th>
			<td><input type="text" id="miTitle" name="miTitle" value="<%=rs.getString("MI_TITLE")%>"></td>
		</tr>
		<tr>
			<th>장르</th>
			<td>
				<select id="miGenre" name="miGenre">
					<option value="">장르</option>
					<option value="액션"<%=rs.getString("MI_GENRE").equals("액션")?"selected":""%>>액션</option>
					<option value="코미디"<%=rs.getString("MI_GENRE").equals("코미디")?"selected":""%>>코미디</option>
					<option value="멜로"<%=rs.getString("MI_GENRE").equals("멜로")?"selected":""%>>멜로</option>
					<option value="S/F"<%=rs.getString("MI_GENRE").equals("S/F")?"selected":""%>>S/F</option>
					<option value="스릴러"<%=rs.getString("MI_GENRE").equals("스릴러")?"selected":""%>>스릴러</option>
				</select>
			</td>
		</tr>
		<tr>
			<th>상영일</th>
			<td><input type="date" id="miCredat" name="miCredat" value=<%=rs.getString("MI_CREDAT")%>></td>
		</tr>
		<tr>
			<th>관객수</th>
			<td><input type="number" id="miCnt" name="miCnt" value=<%=rs.getString("MI_CNT")%>></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea id="miDesc" name="miDesc" style="resize:none" cols="30" rows="15"><%=rs.getString("MI_DESC")%></textarea></td>
		</tr>
		<tr>
			<td colspan="2" align="right"><button onclick="location.href='<%=root%>/movie2/movie2-update-ok.jsp'">수정완료</button></td>
		</tr>
	</table>
</form>
</body>
</html>