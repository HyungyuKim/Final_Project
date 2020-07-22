<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<style>
header {
	position: fixed;
	width: 1155px;
	z-index: 9999;
	top: 0;
	background-color: white;
	margin: 0px auto;
}
</style>

<style type=text/css>
#navbarDropdown:hover {
	color: #5882FA;
}
</style>
<header>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	&nbsp;&nbsp;
<c:if test="${empty sessionScope.id }">
	<nav class="navbar navbar-expand-lg navbar-light bg-whtile">
		<a class="navbar-brand" href="index.do"><img
			src="<%=request.getContextPath()%>/resources/img/MAIN Logo.png"
			style="width: 70px; height: 70px;"></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="navbar-brand" href="commuNotice.do"
					style="color: #2E9AFE;">Home <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item dropdown"><a class="navbar-brand" href="#"
					id="navbarDropdown" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false">커뮤니티 </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#">방등록</a> <a class="dropdown-item"
							href="#">방구경</a>
						<!--  <div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Something else here</a>-->
					</div></li>
				<li class="nav-item dropdown"><a class="navbar-brand" href="#"
					id="navbarDropdown" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> STORE </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#">스토어홈</a> <a
							class="dropdown-item" href="#">가구</a> <a class="dropdown-item"
							href="#">패브릭</a> <a class="dropdown-item" href="#">홈데코</a> <a
							class="dropdown-item" href="#">수납/정리</a> <a class="dropdown-item"
							href="#">조명</a> <a class="dropdown-item" href="#">러그/카페트</a> <a
							class="dropdown-item" href="#">데스크</a>
					</div></li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="스토어 통합검색" aria-label="Search" size="30">
				<button class="btn btn-outline-primary my-2 my-sm-0" type="submit">Search</button>
			</form>
			<div style="font-size: 15px;">
				&nbsp;&nbsp; <a href="#"><img
					src="<%=request.getContextPath()%>/resources/img/cart.png"
					style="width: 30px; height: 35px;"></a> <a href="loginForm.do"
					style="height: 35px; color: black;">로그인</a> | <a href="userJoin.do"
					style="height: 35px; color: black;">회원가입</a>
			</div>
		</div>
	</nav>
</c:if>
<c:if test="${!empty sessionScope.id }">


	<nav class="navbar navbar-expand-lg navbar-light bg-whtile">
		<a class="navbar-brand" href="index.do"><img
			src="<%=request.getContextPath()%>/resources/img/MAIN Logo.png"
			style="width: 70px; height: 70px;"></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="navbar-brand" href="commuNotice.do"
					style="color: #2E9AFE;">Home <span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item dropdown"><a class="navbar-brand" href="#"
					id="navbarDropdown" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false">커뮤니티 </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#">방등록</a> <a class="dropdown-item"
							href="#">방구경</a>
						<!--  <div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Something else here</a>-->
					</div></li>
				<li class="nav-item dropdown"><a class="navbar-brand" href="#"
					id="navbarDropdown" role="button" data-toggle="dropdown"
					aria-haspopup="true" aria-expanded="false"> STORE </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#">스토어홈</a>
						<a class="dropdown-item" href="#">가구</a>
						<a class="dropdown-item" href="#">패브릭</a>
						<a class="dropdown-item" href="#">홈데코</a>
						<a class="dropdown-item" href="#">수납/정리</a>
						<a class="dropdown-item" href="#">조명</a>
						<a class="dropdown-item" href="#">러그/카페트</a>
						<a class="dropdown-item" href="#">데스크</a>
					</div></li>
			</ul>
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="스토어 통합검색" aria-label="Search" size="30">
				<button class="btn btn-outline-primary my-2 my-sm-0" type="submit">Search</button>
			</form>
			<div style="font-size: 15px; width: 170px;">
				&nbsp;&nbsp; <div style="float: left; margin-left: 10px; margin-top: 5px;"><a href="#"><img
					src="<%=request.getContextPath()%>/resources/img/cart.png"
					style="width: 30px; height: 35px;"></a></div>




				<div style="float: right; width: 120px;" class="collapse navbar-collapse"
					id="navbarSupportedContent">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item dropdown" style="margin-left: 0px;">
						<div style="width: 120px;">
						<div style="float: left;">
							<a class="navbar-brand" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false" style="margin-right: 0px;">
								<img src="<%=request.getContextPath()%>/resources/img/user_1.png"></a></div>
								<div style="float: right; height: 52px; width: 75px; padding-top: 11px;">${sessionScope.name}님</div>
								</div>
									
									<c:choose>
									<c:when test="${sessionScope.usertype == 2}">
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										<a class="dropdown-item" href="#">관리자모드</a>
										<a class="dropdown-item" href="#">기업회원승인</a>
										<a class="dropdown-item" href="#">통계</a>
										<a class="dropdown-item" href="logout.do" style="color: red;">로그아웃</a>
									</div>
									</c:when>
									<c:when test="${sessionScope.usertype == 0 || sessionScope.usertype == 1 }">
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										<a class="dropdown-item" href="#">마이페이지</a>
										<a class="dropdown-item" href="logout.do" style="color: red;">로그아웃</a>
									</div>
									</c:when>
									</c:choose>
						</li>
								
					</ul>



				</div>
			</div>
		</div>
	</nav>
</c:if>




	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="./webjars/bootstrap/4.3.1/js/bootstrap.js"></script>
</header>