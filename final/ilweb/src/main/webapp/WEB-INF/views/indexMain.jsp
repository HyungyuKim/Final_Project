<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="./webjars/bootstrap/4.3.1/css/bootstrap.css">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@500&display=swap"
	rel="stylesheet">
<style>
/* banner */
.banner {
	position: relative;
	max-width: 100%;
	height: 200px;
	top: 50px;
	margin: -50px auto;
	padding: 0;
	overflow: hidden;
}

.banner ul {
	position: absolute;
	margin: 0px;
	padding: 0;
	list-style: none;
}

.banner ul li {
	float: left;
	max-width: 100%;
	height: 550px;
	margin: 0;
	padding: 0;
}

body {
	width: 1150px;
	margin: 0px auto;
	font-family: 'Noto Sans KR', sans-serif;
}

#header {
	font-size: 20px;
}

nav li {
	list-style-type: none;
	display: inline;
	margin-left: 50px;
	valign: center;
}

.dropdown:hover .dropdown-menu {
	display: block;
	margin-top: 0;
}

.sample_image  img {
	-webkit-transform: scale(1);
	-moz-transform: scale(1);
	-ms-transform: scale(1);
	-o-transform: scale(1);
	transform: scale(1);
	-webkit-transition: .3s;
	-moz-transition: .3s;
	-ms-transition: .3s;
	-o-transition: .3s;
	transition: .3s;
}

.sample_image:hover img {
	-webkit-transform: scale(1.2);
	-moz-transform: scale(1.2);
	-ms-transform: scale(1.2);
	-o-transform: scale(1.2);
	transform: scale(1.2);
	transition: all 0.3s ease-in-out;
}

.sample_image {
	overflow: hidden;
}

.joinevent a {
	display: block;
	text-decoration: none;
}

.joinevent a hover {
	color: white;
	background: red;
}

#nav-home-tab {
	width: 50%;
}

#nav-profile-tab {
	width: 50%;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script language="JavaScript">
	$(document).ready(
			function() {
				var $banner = $(".banner").find("ul");

				var $bannerWidth = $banner.children().outerWidth();//이미지의 폭
				var $bannerHeight = $banner.children().outerHeight(); // 높이
				var $length = $banner.children().length;//이미지의 갯수
				var rollingId;

				//정해진 초마다 함수 실행
				rollingId = setInterval(function() {
					rollingStart();
				}, 3000);//다음 이미지로 롤링 애니메이션 할 시간차

				function rollingStart() {
					$banner.css("width", $bannerWidth * $length + "px");
					$banner.css("height", $bannerHeight + "px");
					//alert(bannerHeight);
					//배너의 좌측 위치를 옮겨 준다.
					$banner.animate({
						left : -$bannerWidth + "px"
					}, 1500, function() { //숫자는 롤링 진행되는 시간이다.
						//첫번째 이미지를 마지막 끝에 복사(이동이 아니라 복사)해서 추가한다.
						$(this).append(
								"<li>" + $(this).find("li:first").html()
										+ "</li>");
						//뒤로 복사된 첫번재 이미지는 필요 없으니 삭제한다.
						$(this).find("li:first").remove();
						//다음 움직임을 위해서 배너 좌측의 위치값을 초기화 한다.
						$(this).css("left", 0);
						//이 과정을 반복하면서 계속 롤링하는 배너를 만들 수 있다.
					});
				}
			});
</script>
<script>
	function getPosX(targetPos) {
		var currentLeft = 0;
		if (targetPos.offwetParent)
			while (1) {
				currentLeft += obj.offsetLeft;
				if (!targetPos.offsetParent)
					break;
				targetPos = targetPos.offsetParent;
			}
		else if (targetPos.x)
			currentLeft += targetPos.x;
		return currentLeft;
	}
	function getPosY(targetPos) {
		var currentTop = 0;
		if (targetPos.offsetParent)
			while (1) {
				currentTop += targetPos.offsetTop;
				if (!targetPos.offsetParent)
					break;
				targetPos = targetPos.offsetparent;
			}
		else if (targetPos.y)
			currentTop += targetPos.y;
		return currentTop;
	}
</script>
<script>
	﻿function test() {
		alert("현재 좌표는 " + event.offsetX + "/" + event.offsetY)
	}
</script>
</head>
<body style="padding-top: 100px;">
	<%@include file="header.jsp"%>


<!-- 
	<div>	 
	<img src="<%=request.getContextPath()%>/resources/img/test.png" usemap="#Map">
	<map name="Map">
		<area shape="rect" coords="225,142,336,176" href="http://www.naver.com" target="_blank">		
	</map>
	</div> 
 -->



	<hr>
	<section style="height: 550px;">
		<article style="width: 850px; float: left; height: 550px;"
			class="scale">
			<div class="sample_image">
				<img
					src="<%=request.getContextPath()%>/resources/img/main_banner1.jpg"
					style="width: 850px; height: 550px;">
			</div>
		</article>
		<article style="width: 280px; float: right; height: 550px;">
			<div class="banner" style="width: 100%; height: 550px; float: right;">
				<ul>
					<li><img
						src="<%=request.getContextPath()%>/resources/img/banner1.png"
						style="height: 550px;"></li>
					<li><img
						src="<%=request.getContextPath()%>/resources/img/banner2.png"
						style="height: 550px;"></li>
					<li><img
						src="<%=request.getContextPath()%>/resources/img/banner3.png"
						style="height: 550px;"></li>
					<li><img
						src="<%=request.getContextPath()%>/resources/img/banner4.png"
						style="height: 550px;"></li>
				</ul>
			</div>
		</article>
	</section>
	<hr>
	<div style="text-align: center; height: 90px;">
		<a href="#"><img
			src="<%=request.getContextPath()%>/resources/img/sim_img.png"
			style="margin-right: 150px; height: 90px;"></a> <a href="#"><img
			src="<%=request.getContextPath()%>/resources/img/store_img.png"
			style="margin-right: 150px; height: 90px;"></a> <a href="#"><img
			src="<%=request.getContextPath()%>/resources/img/commu_img.png"
			style="margin-right: 150px; height: 90px;"></a> <a href="#"><img
			src="<%=request.getContextPath()%>/resources/img/qna_img.png"
			style="margin-right: 60px; height: 90px;"></a>
	</div>
	<hr>
	<div style="height: 430px;">
		<div
			style="height: 30px; text-align: justify; font-size: 17px; margin-right: auto; margin-left: auto; display: inline-block">
			<div style="height: 35px;">
				<div style="float: left; font-size: 20px;">
					<b>오늘의 스토리</b>
				</div>
				<div style="float: right; font-size: 13px;">
					<a href="#"
						style="color: red; text-decoration: none; color: #2E9AFE;">더보기</a>
				</div>
			</div>

			<div class="card-group">
				<div class="card">
					<img
						src="<%=request.getContextPath()%>/resources/img/todayroom1.jpg"
						class="card-img-top"
						style="width: 384px; height: 250px; text-align: center;">
					<div class="card-body" style="width: 384px;">
						<h5 class="card-title">오늘의 스토리1</h5>

						<div>
							<img src="<%=request.getContextPath()%>/resources/img/user_1.png"
								style="width: 25px; height: 25px; float: left;">
							<p style="float: left;">닉네임</p>
						</div>

					</div>
				</div>
				<div class="card">
					<img
						src="<%=request.getContextPath()%>/resources/img/todayroom2.jpg"
						class="card-img-top"
						style="width: 384px; height: 250px; text-align: center;">
					<div class="card-body" style="width: 384px;">
						<h5 class="card-title">오늘의 스토리2</h5>

						<div>
							<img src="<%=request.getContextPath()%>/resources/img/user_1.png"
								style="width: 25px; height: 25px; float: left;">
							<p style="float: left;">닉네임</p>
						</div>

					</div>
				</div>
				<div class="card">
					<img
						src="<%=request.getContextPath()%>/resources/img/todayroom3.jpg"
						class="card-img-top"
						style="width: 384px; height: 250px; text-align: center;">
					<div class="card-body" style="width: 384px;">
						<h5 class="card-title">오늘의 스토리3</h5>

						<div>
							<img src="<%=request.getContextPath()%>/resources/img/user_1.png"
								style="width: 25px; height: 25px; float: left;">
							<p style="float: left;">닉네임</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<hr>

	<div style="font-size: 20px; margin-bottom: 20px;">
		<b>카테고리별 상품 찾기</b>
	</div>
	<div style="width: 1150px; margin-bottom: 50px;">
		<button type="button" class="btn btn-outline-primary"
			style="height: 45px; margin-right: 8px;">가구</button>
		<button type="button" class="btn btn-outline-secondary"
			style="height: 45px; margin-right: 8px;">패브릭</button>
		<button type="button" class="btn btn-outline-success"
			style="height: 45px; margin-right: 8px;">홈데코</button>
		<button type="button" class="btn btn-outline-danger"
			style="height: 45px; margin-right: 8px;">수납/정리</button>
		<button type="button" class="btn btn-outline-warning"
			style="height: 45px; margin-right: 8px;">생활용품</button>
		<button type="button" class="btn btn-outline-info"
			style="height: 45px; margin-right: 8px;">가전</button>
		<button type="button" class="btn btn-outline-dark"
			style="height: 45px; margin-right: 8px;">그릇/홈세트</button>
		<button type="button" class="btn btn-outline-info"
			style="height: 45px; margin-right: 8px;">조명</button>
		<button type="button" class="btn btn-outline-warning"
			style="height: 45px; margin-right: 8px;">러그/카페트</button>
		<button type="button" class="btn btn-outline-success"
			style="height: 45px; margin-right: 8px;">데스크/디자인문구</button>
		<button type="button" class="btn btn-outline-secondary"
			style="height: 45px; margin-right: 8px;">수납가구</button>
		<button type="button" class="btn btn-outline-primary"
			style="height: 45px;">욕실용품</button>
	</div>
	<hr>
	<div style="height: 560px;">
		<div
			style="height: 30px; text-align: justify; font-size: 17px; margin-right: auto; margin-left: auto; display: inline-block">
			<div style="height: 35px;">
				<div style="float: left; font-size: 20px;">
					<b>오늘의 인기사진</b>
				</div>
				<div style="float: right; font-size: 13px;">
					<a href="#"
						style="color: red; text-decoration: none; color: #2E9AFE;">더보기</a>
				</div>
			</div>

			<!-- 오늘의 인기사진 상단 -->
			<div class="card-group"
				style="text-align: center; width: 1150px; border: 0 solid black;">
				<div class="card">
					<img src="<%=request.getContextPath()%>/resources/img/hot1.jpg"
						class="card-img-top"
						style="width: 275px; height: 250px; text-align: center; display: block; margin: 0 auto;">
				</div>
				<div class="card">
					<img src="<%=request.getContextPath()%>/resources/img/hot2.jpg"
						class="card-img-top"
						style="width: 275px; height: 250px; text-align: center; display: block; margin: 0 auto;">
				</div>
				<div class="card">
					<img src="<%=request.getContextPath()%>/resources/img/hot3.jpg"
						class="card-img-top"
						style="width: 275px; height: 250px; text-align: center; display: block; margin: 0 auto;">
				</div>
				<div class="card">
					<img src="<%=request.getContextPath()%>/resources/img/hot4.jpg"
						class="card-img-top"
						style="width: 275px; height: 250px; text-align: center; display: block; margin: 0 auto;">
				</div>
			</div>


			<!-- 오늘의 인기사진 하단 -->
			<div class="card-group"
				style="text-align: center; width: 1150px; border: 0 solid black; padding-top: 10px;">
				<div class="card">
					<img src="<%=request.getContextPath()%>/resources/img/hot5.jpg"
						class="card-img-top"
						style="width: 275px; height: 250px; text-align: center; display: block; margin: 0 auto;">
				</div>
				<div class="card">
					<img src="<%=request.getContextPath()%>/resources/img/hot6.jpg"
						class="card-img-top"
						style="width: 275px; height: 250px; text-align: center; display: block; margin: 0 auto;">
				</div>
				<div class="card">
					<img src="<%=request.getContextPath()%>/resources/img/hot7.jpg"
						class="card-img-top"
						style="width: 275px; height: 250px; text-align: center; display: block; margin: 0 auto;">
				</div>
				<div class="card">
					<img src="<%=request.getContextPath()%>/resources/img/hot8.jpg"
						class="card-img-top"
						style="width: 275px; height: 250px; text-align: center; display: block; margin: 0 auto;">
				</div>
			</div>





		</div>
	</div>

	<hr>

	<div class="joinevent"
		style="background-image:url(<%=request.getContextPath()%>/resources/img/e_banner1.jpg); width: 1150px; height: 90px; margin-bottom: 20px; text-align: center;">
		<a
			style="height: 90px; line-height: 90px; font-size: 30px; color: white;"
			href='userJoin.do'> 지금 가입하시면 회원가입기념 쿠폰을 드려요!</a>
	</div>

	<hr>

	<div style="height: 500px;">
		<div
			style="height: 30px; text-align: justify; font-size: 17px; margin-right: auto; margin-left: auto; display: inline-block">
			<div style="height: 35px; width: 1150px;">
				<div style="float: left; font-size: 20px;">
					<b>기업별 둘러보기</b>
				</div>
				<div style="float: right; font-size: 13px;">
					<a href="#"
						style="color: red; text-decoration: none; color: #2E9AFE;">더보기</a>
				</div>
			</div>
		</div>






		<div class="accordion" id="accordionExample">
			<div class="card">
				<div class="card-header" id="headingOne"
					style="background-image: linear-gradient(to right, #f6d365 0%, #fda085 51%, #f6d365 100%)">
					<h2 class="mb-0">
						<button class="btn btn-link btn-block text-left" type="button"
							data-toggle="collapse" data-target="#collapseOne"
							aria-expanded="true" aria-controls="collapseOne">
							Collapsible Group Item #1</button>
					</h2>
				</div>

				<div id="collapseOne" class="collapse show"
					aria-labelledby="headingOne" data-parent="#accordionExample">
					<div class="card-body">Anim pariatur cliche reprehenderit,
						enim eiusmod high life accusamus terry richardson ad squid. 3 wolf
						moon officia aute, non cupidatat skateboard dolor brunch. Food
						truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor,
						sunt aliqua put a bird on it squid single-origin coffee nulla
						assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer
						labore wes anderson cred nesciunt sapiente ea proident. Ad vegan
						excepteur butcher vice lomo. Leggings occaecat craft beer
						farm-to-table, raw denim aesthetic synth nesciunt you probably
						haven't heard of them accusamus labore sustainable VHS.</div>
				</div>
			</div>
			<div class="card">
				<div class="card-header" id="headingTwo"
					style="background-image: linear-gradient(to right, #fbc2eb 0%, #a6c1ee 51%, #fbc2eb 100%);">
					<h2 class="mb-0">
						<button class="btn btn-link btn-block text-left collapsed"
							type="button" data-toggle="collapse" data-target="#collapseTwo"
							aria-expanded="false" aria-controls="collapseTwo">
							Collapsible Group Item #2</button>
					</h2>
				</div>
				<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo"
					data-parent="#accordionExample">
					<div class="card-body">Anim pariatur cliche reprehenderit,
						enim eiusmod high life accusamus terry richardson ad squid. 3 wolf
						moon officia aute, non cupidatat skateboard dolor brunch. Food
						truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor,
						sunt aliqua put a bird on it squid single-origin coffee nulla
						assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer
						labore wes anderson cred nesciunt sapiente ea proident. Ad vegan
						excepteur butcher vice lomo. Leggings occaecat craft beer
						farm-to-table, raw denim aesthetic synth nesciunt you probably
						haven't heard of them accusamus labore sustainable VHS.</div>
				</div>
			</div>
			<div class="card">
				<div class="card-header" id="headingThree"
					style="background-image: linear-gradient(to right, #84fab0 0%, #8fd3f4 51%, #84fab0 100%);">
					<h2 class="mb-0">
						<button class="btn btn-link btn-block text-left collapsed"
							type="button" data-toggle="collapse" data-target="#collapseThree"
							aria-expanded="false" aria-controls="collapseThree">
							Collapsible Group Item #3</button>
					</h2>
				</div>
				<div id="collapseThree" class="collapse"
					aria-labelledby="headingThree" data-parent="#accordionExample">
					<div class="card-body">Anim pariatur cliche reprehenderit,
						enim eiusmod high life accusamus terry richardson ad squid. 3 wolf
						moon officia aute, non cupidatat skateboard dolor brunch. Food
						truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor,
						sunt aliqua put a bird on it squid single-origin coffee nulla
						assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer
						labore wes anderson cred nesciunt sapiente ea proident. Ad vegan
						excepteur butcher vice lomo. Leggings occaecat craft beer
						farm-to-table, raw denim aesthetic synth nesciunt you probably
						haven't heard of them accusamus labore sustainable VHS.</div>
				</div>
			</div>
		</div>
	</div>


	<hr>
	<hr>
<!-- 
<div style="border: 1px solid black; width:1000px; height: 500px; margin: 0px auto;">
	
	
	<div style="border: 1px solid red; width: 500px; height: 500px; float: left;">
		<div style="border: 1px solid green; width: 500px; height: 30px;">
		업체정보
		</div>
		<div style="border: 1px solid gray; width: 500px; height: 70px;">
		<img src= "<%=request.getContextPath()%>/resources/img/test.png" style="width: 60px; height: 60px;">
		</div>
	</div>	
		<div style="border: 1px solid blue; width: 450px; height: 500px; float: right;"></div >
		
				
</div>
 -->	

	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="./webjars/bootstrap/4.3.1/js/bootstrap.js"></script>
	<%@include file="footer.jsp"%>
</body>
</html>