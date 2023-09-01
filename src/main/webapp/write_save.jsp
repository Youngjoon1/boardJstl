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
	<% request.setCharacterEncoding("utf-8"); %>
	<jsp:useBean id="dto" class="test.TestDTO"></jsp:useBean>
	<jsp:useBean id="dao" class="test.TestDAO"></jsp:useBean>
	
	<jsp:setProperty property="*" name="dto"/>
	
	
	
	<c:choose>
		<c:when test="${dao.writeSave(dto) == 1 }">
			<script>
				alert("등록 성공!!!");
				location.href="list.jsp";
			</script>
		</c:when>
		<c:otherwise>
			<script>
				alert("등록 실패!!!");
				history.back();
			</script>
		</c:otherwise>
	
	</c:choose>
	
</body>
</html>