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
<title>게시판 수정</title>
</head>
<body>
<jsp:include page="/include/header.jsp"/>
<%
String biNum = request.getParameter("biNum"); // getParameter의 기본 데이터 타입은 String임
Connection con = DBCon.getCon();
Statement stmt = con.createStatement();
String sql = "SELECT BI_NUM, BI_TITLE, BI_WRITER, BI_CONTENT, BI_CREDAT, BI_CNT FROM BOARD_INFO ";
sql += " WHERE BI_NUM=" + biNum;
ResultSet rs = stmt.executeQuery(sql); // rs가 반드시 한개임. 없을 수도 있으니 if문으로
if(!rs.next()){ // 없다는 것을 가정
%>
<script>
	alert('이미 삭제된 게시물입니다.');
	history.back(); // 다시 뒤로
</script>
<%
return;
}
%>
<form action="<%=root%>/board/board-update-ok.jsp">
<input type="hidden" name="biNum" value="<%=biNum%>">
	<table border="1">
		<tr>
			<th>제목</th>
			<td><input type="text" id="biTitle" name="biTitle" value="<%=rs.getString("BI_TITLE")%>"></td>
		</tr>
		<tr>
			<th>작성자</th>
			<td><input type="text" id="biWriter" name="biWriter" value="<%=rs.getString("BI_WRITER")%>"></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><textarea id="biContent" name="biContent" style="resize:none" cols="30" rows="15"><%=rs.getString("BI_CONTENT")%></textarea></td>
		</tr>
		<tr>
			<th>작성일</th>
			<td><%=rs.getString("BI_CREDAT") %></td>
		</tr>
		<tr>
			<th>조회수</th>
			<td><%=rs.getString("BI_CNT") %></td>
		</tr>
		<tr>
			<th colspan="2">
			<button onClick="location.href='<%=root%>/board/board-update-ok.jsp'">수정완</button></th>
		</tr>
	</table>
</form>
</body>
</html>