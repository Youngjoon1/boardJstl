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
	<jsp:useBean id="dao" class="test.TestDAO"></jsp:useBean>
	<form action="reply.jsp" method="post">
		
		<input type="text" readonly name="id" value="${param.id }"><br>
		<input type="text" name="title" value="${param.title}" placeholder="title"><br>
		<input type="text" name="name" placeholder="name"><br>
		<textarea name="content"></textarea><br>
		<input type="submit" value="답글전송">
	</form>
	
	
</body>
</html>