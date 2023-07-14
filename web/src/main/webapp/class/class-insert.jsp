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
<title>클래스</title>
</head>
<body>
<jsp:include page="/include/header.jsp"/>
<%
String ciName = request.getParameter("ciName");
if(ciName!=null && ciName.length()!=0){
	String ciDesc = request.getParameter("ciDesc");
	Connection con = DBCon.getCon();
	Statement stmt = con.createStatement();
	String sql = "INSERT INTO CLASS_INFO(CI_NAME, CI_DESC)";
	sql += "VALUES('" + ciName + "', '" + ciDesc + "')";
	int result = stmt.executeUpdate(sql);
	if(result == 1){
%>
<script>
	alert("<%=ciName%>님의 정보가 추가되었습니다.");
	location.href="/web/class/class-list.jsp";
</script>
<%
	}
}
%>
<form>
	<table>
		<tr>
			<th>이름</th>
			<td><input type="text", id="ciName", name="ciName"></td>
		</tr>
		<tr>
			<th>설명</th>
			<td><textarea id="ciDesc", name="ciDesc", style="resize:none" cols="30" rows="15"></textarea></td>
		</tr>
		<tr>
			<td colspan="2"><button>등록</button></td>
		</tr>
	</table>
</form>
</body>
</html>