<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	list.jsp<br>
	<jsp:useBean id="dao" class="test.TestDAO"></jsp:useBean>
	
	<table border="1">
		<tr>
			<th>번호(id)</th>
			<th>이름(name)</th>
			<th>제목(title)</th>
			<th>날짜(savedate)</th>
			<th>조회수(hit)</th>
			<th>그룹번호(idgroup)</th>
			<th>step</th>
			<th>들여쓰기(indent)</th>
		</tr>
		<c:forEach var="dto" items="${dao.getList() }">
			<tr>
				<td>${dto.id }</td>
				<td>${dto.name }</td>
				<td>
				<c:forEach begin="1" end="${dto.indent}">
					->
				</c:forEach>
				<a href="content_view.jsp?id=${dto.id}">${dto.title }</a>
				
				</td>
				<td>${dto.savedate }</td>
				<td>${dto.hit}</td>
				<td>${dto.idgroup }</td>
				<td>${dto.step }</td>
				<td>${dto.indent }</td>
			</tr>
		</c:forEach>
		<tr>
			<td colspan="8">
				<a href="write_view.jsp">글 등록</a>
			</td>
		</tr>
	
	</table>
	
	
</body>
</html>