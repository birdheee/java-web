<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>board.jsp</title>
</head>
<body>
<% 
//jsp에서 예외처리 해줌, 오류가 나지 않으면 driver를 찾은 것
// WAS는 jsp를 java로 바꾸어 컴파일 하여, 결과인 class를 전달함
Class.forName("org.mariadb.jdbc.Driver");

String str = "안녕 난 java String이야";
int num = 1;
if(num==2){
	out.println(str);
}else{
	out.println("아하~");
}
%>
<table border="1">
	<!-- table row -->
	<tr>
		<!-- table data -->
		<td>번호</td>
		<td>제목</td>
		<td>작성자</td>
		<td>조회수</td>
	</tr>
	<tr>
		<td>1</td>
		<td>첫번째 게시물</td>
		<td>재석</td>
		<td>1</td>
	</tr>
	<tr>
		<td>2</td>
		<td>두번째 게시물</td>
		<td>명수</td>
		<td>1</td>
	</tr>
	<tr>
		<td>3</td>
		<td>세번째 게시물</td>
		<td>준하</td>
		<td>1</td>
	</tr>
	<tr>
		<td colspan="4" align="center"><button>등록</button></td>
	</tr>
</table>
</body>
</html>