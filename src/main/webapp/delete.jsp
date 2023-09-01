<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="dao" class="test.TestDAO"></jsp:useBean>
	${dao.Del(param.id)}
	<% response.sendRedirect("list.jsp"); %>
</body>
</html>