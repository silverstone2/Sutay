<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
	alert("방정보를 수정하였습니다.");
	location.href="${pageContext.request.contextPath}/room/detail.do?num=${param.num }&sort=regdate";
	</script>
</body>
</html>