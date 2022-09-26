<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>loginform</title>

<link rel="shortcut icon" href="${pageContext.request.contextPath }/Jisutayimage/Logo_Icon/favicon.ico">

<link rel="shorcut icon" href="${pageContext.request.contextPath }/Jisutayimage/Logo_Icon/favicon.ico">
<script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/common.css">

</head>
<body class="text-center">
	<!-- navbar include -->
	<jsp:include page="/resources/include/navbar.jsp"></jsp:include>
	<div class="container-fluid mb-5">
		<div class="row justify-content-md-center">
			<!-- nav 바 -->
			<jsp:include page="/resources/include/style.jsp"></jsp:include>
			<c:if test="${isFail eq true}">
				<div class="w-50 alert alert-warning alert-dismissible fade show text-center mt-3" role="alert" style="text-align:center;">
					<strong>
						아이디 비밀번호를 다시 확인해주세요!
					</strong>
					<button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
				</div>
			</c:if>
			<div>
				<br>
				<br>
				<br>
			</div>
			<!-- 페이지 제목 -->
	      	<h2 class="mt-5">로그인</h2>
			<!-- form -->
			<div class="col-md-7 col-lg-4">
				<form action="login.do" method="post" class="validation" novalidate>
				<!-- input 요소 -->
					<!-- 아이디 -->
					<div class="input-group mt-3 mb-3">
						<label class="form-label" for="id">
							<span class="visually-hidden">아이디</span>
						</label>
						<span class="input-group-text">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
							  <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"/>
							</svg>
						</span>
						<input class="form-control" id="id" type="text" name="id" placeholder="아이디" required/>
					</div>
					
					<!-- 비밀번호 -->
					<div class="input-group mb-3">
						<label class="form-label" for="password">
							<span class="visually-hidden">비밀번호</span>
						</label>
						<span class="input-group-text" id="basic-addon1">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-lock" viewBox="0 0 16 16">
						  		<path d="M8 1a2 2 0 0 1 2 2v4H6V3a2 2 0 0 1 2-2zm3 6V3a3 3 0 0 0-6 0v4a2 2 0 0 0-2 2v5a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V9a2 2 0 0 0-2-2zM5 8h6a1 1 0 0 1 1 1v5a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1V9a1 1 0 0 1 1-1z"/>
							</svg>
						</span>
						<input class="form-control" id="password" type="password" name="password" placeholder="비밀번호" required/>
					</div>
					
					<!-- 자동 로그인 -->
					<div align="left">
						<label for="autoLogin">
							<c:if test="${isAutoLogin eq 'on' }">
								<input id="autoLogin" type="checkbox" name="autoLogin" checked />
							</c:if>
							<c:if test="${isAutoLogin ne 'on' }">
								<input id="autoLogin" type="checkbox" name="autoLogin" />
							</c:if>
							자동 로그인
						</label>
					</div>
					
					<br>
					<br>
					<!-- button 요소 -->
					<button type="submit" name="btn" value="insert" class="w-100 btn btn-primary btn-lg mb-4">로그인</button>
				</form>
				<br>
			</div>
		</div>
	</div>
	<!-- footer include -->
	<jsp:include page="/resources/include/navbar.jsp"></jsp:include>
</body>
</html>