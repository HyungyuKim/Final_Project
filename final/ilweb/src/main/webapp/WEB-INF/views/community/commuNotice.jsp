<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="./webjars/bootstrap/4.3.1/css/bootstrap.css">
<style>

body {
	width: 1150px;
	margin: 0px auto;
}

input::placeholder {
	color: #A4A4A4;
	font-size: 18px;
}
</style>
</head>
<body>
	<div style="width: 80px; height: 80px; margin-bottom: 30px;">
		<img src="<%=request.getContextPath()%>/resources/img/MAIN Logo.png"
			style="width: 80px; height: 80px;">
	</div>
	<div style="width: 1000px; height: 400px; margin: 0px auto;">

		<div style="width: 1000px; height: 50px; margin-bottom: 30px;">
			<h1>사진 올리기</h1>
		</div>

		<div style="width: 1000px; height: 300px;">

			<div
				style="border: 1px solid gray; width: 500px; height: 300px; float: left;">
				사진을 등록하세요</div>

			<div
				style="border: 1px solid gray; width: 470px; height: 300px; float: right; text-align: center;">
				<input type="text" name="subject" placeholder="제목을 입력해주세요."
					size="51"
					style="text-align: center; height: 35px; font-size: 18px; margin-top: 5px;">


				<div style="width: 470px; height: 50px; text-align: center; padding-top:13px;">
					
					
							<select id="ex_select" style="height:30px; width:100px;">
							<option selected>평수</option>
							<option>10평 미만</option>
							<option>20평</option>
							<option>30평</option>
							<option>40평</option>
							<option>50평</option>
							<option>50평 이상</option>
						</select>
					
					
							<select id="ex_select" style="height:30px; width:100px;">
							<option selected>주거형태</option>
							<option>원룸&오피스텔</option>
							<option>아파트</option>
							<option>빌라&연립</option>
							<option>단독주택</option>
							<option>사무공간</option>
							<option>기타</option>
						</select>
					
							<select id="ex_select" style="height:30px; width:125px;">
							<option selected>인테리어 비용</option>
							<option>100만원 미만</option>
							<option>200만원</option>
							<option>300만원</option>
							<option>400만원</option>
							<option>500만원</option>
							<option>500만원 이상</option>
						</select>
					
					
				</div>
					
					<div style="width: 410px; height: 300px; margin: auto;">
						<textarea rows="8" cols="54"></textarea>
					</div>
					
					
				</div>


			</div>


		</div>
		<div style="width: 1100px; height: 200px;">
			<div style="width: 470px; float: right;">
			<input class = "btn btn-info" type = "submit" value = "자랑하기" style="width: 300px; margin-right: 40px; height: 50px;">
			<button type="button" class="btn btn-warning" style="height: 50px;">취소하기</button>
			</div>
		</div>
	<script
		src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="./webjars/bootstrap/4.3.1/js/bootstrap.js"></script>
</body>
</html>