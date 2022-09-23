<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome to JiSutay</title>

<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/common.css">
<link rel="shorcut icon" href="${pageContext.request.contextPath }/Jisutayimage/Logo_Icon/favicon.ico">
<script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.1/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/modify.js" ></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/common.js" ></script>
<script src="https://player.vimeo.com/api/player.js"></script>

</head>

<body id="rooms_pv" class="preview">
	<!-- navbar include -->
	<jsp:include page="/resources/include/navbar.jsp"></jsp:include>
	<section>
		<!-- 메인 비디오 -->
		<div class="section video" id="Videos">
			<div class="MyFrame">
				<iframe id="MyVideo" width="100%" height="100%" frameborder="0" allowfullscreen="" src="https://player.vimeo.com/video/657699201?h=cdf409edf9?autoplay=1&amp;loop=1&amp;background=1" style="width: 1340px; height: 449px;" data-ready="true"></iframe>
			</div>
			<div class="title">
				<h2 style="transform: translateY(0px); opacity: 1;"><img src="${pageContext.request.contextPath }/Jisutayimage/Logo_Icon/welcome.png" width="600" height="150" alt=""></h2>
			</div><div class="line" style="transform: translateY(0px); opacity: 1;"></div>
		</div>
		
		<!-- 객실 바로가기 -->
		<div class="section lists">
			<div class="InBox">
			<c:forEach var="tmp" items="${requestScope.list }">
				<div>
					<div class="img">
						<div style="background-image:url(${pageContext.request.contextPath }${tmp.img_path })"></div>
					</div>
					<div class="btn">
						<a href="room/detail.do?num=${tmp.num }&sort=regdate">
							<h3>
								<img src="${pageContext.request.contextPath }/Jisutayimage/Logo_Icon/logo_wh.png" width="230" height="31" alt="">
								<strong>${tmp.room_name }</strong>
								<br />
							</h3>
							<div>
								<div></div>
								<span>Detail</span>
							</div>
						</a>
					</div>
				</div>
			</c:forEach>		
			</div>
		</div>
	</section>
	
	<a href="${pageContext.request.contextPath }/room_SH/list.do?num=1">객실</a>
	<a href="${pageContext.request.contextPath}/room/list.do">Go to list</a>
	<!-- footer include -->
	<jsp:include page="/resources/include/footer.jsp"></jsp:include>
</body>
</html>