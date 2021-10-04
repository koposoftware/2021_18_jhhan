<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

<!-- HEAD -->
<jsp:include page="/WEB-INF/include/head.jsp" />

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>



<body class="host_version">


	<!-- Modal -->




	<!-- LOADER -->
	<div id="preloader">
		<div class="loading">
			<div class="finger finger-1">
				<div class="finger-item">
					<span></span><i></i>
				</div>
			</div>
			<div class="finger finger-2">
				<div class="finger-item">
					<span></span><i></i>
				</div>
			</div>
			<div class="finger finger-3">
				<div class="finger-item">
					<span></span><i></i>
				</div>
			</div>
			<div class="finger finger-4">
				<div class="finger-item">
					<span></span><i></i>
				</div>
			</div>
			<div class="last-finger">
				<div class="last-finger-item">
					<i></i>
				</div>
			</div>
		</div>
	</div>
	<!-- END LOADER -->

	<!-- header -->

	<jsp:include page="/WEB-INF/include/header.jsp"></jsp:include>

	<!-- main image -->

	<div class="all-title-box">
		<div class="container text-center">
			<h1>
				STOCK 하나런<span class="m_1">하나런 주식계좌개설 페이지입니다.</span>
			</h1>
		</div>
	</div>

	<div id="pricing" class="section lb">
		<div class="container">
			<div class="section-title text-center">
				<h3>하나금융투자 계좌개설</h3>
				<p class="lead">쉽고 빠른 계좌개설을 통해 나도 투자해보기! 계좌개설은,</p>
			</div>
			<!-- modal -->

			<style>
:root { -
	-body-background-color: #f5f6f7; -
	-font-color: #4e4e4e; -
	-border-gray-color: #dadada; -
	-naver-green-color: #04c75a; -
	-naver-green-border-color: #06b350;
}

body {
	min-height: 100vh;
	background: var(- -body-background-color);
}

.input-form {
	max-width: 680px;
	margin-top: 80px;
	padding: 32px;
	background: #fff;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	-webkit-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	-moz-box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15);
	box-shadow: 0 8px 20px 0 rgba(0, 0, 0, 0.15)
}

.forms {
	margin-left: auto;
	margin-right: auto;
}
</style>
			<!-- end title -->

			<div class="container">
				<div class="input-form-backgroud row">
					<div class="input-form forms">
						<h4 class="mb-3">하나런 주식 계좌개설</h4>
						<form method="post"
							action="${pageContext.request.contextPath}/stock/resisterStock"
							class="validation-form" novalidate>
							<div class="row">
								<div class="col-md-6 mb-3">
									<label for="name">이름</label> <input type="text"
										class="form-control" name="user_name" id="name" placeholder=""
										value="" required>
									<div class="invalid-feedback">이름을 입력해주세요.</div>
								</div>
								<div class="col-md-6 mb-3">
									<label for="nickname">주민번호</label> <input type="text"
										class="form-control" name="user_res_no" id="res_no"
										placeholder="(-)를 제외하고 입력." value="" required>
									<div class="invalid-feedback">주민번호를 입력해주세요.</div>
								</div>
								<div class=" mb-3">
									<label for="password">주식계좌 비밀번호</label> <input type="password"
										class="form-control" name="user_pw" id="pw"
										onchange="pwCheck()" placeholder="문자와 숫자를 혼합하세요." required>
									<div class="invalid-feedback">비밀번호를 설정해주세요.</div>
								</div>
								<div class=" mb-3">
									<label for="password">비밀번호 확인</label> <input type="password"
										class="form-control" name="user_pw" id="pw"
										onchange="pwCheck()" placeholder="비밀번호를 다시한번 입력하세요." required>
									
								</div>
							</div>
							<hr class="mb-4">
							<div class="custom-control custom-checkbox">
								<input type="checkbox" class="custom-control-input"
									id="aggrement" required> <label
									class="custom-control-label" for="aggrement">개인정보 수집 및
									이용에 동의합니다.</label>
							</div>
							<div class="mb-4"></div>
							<button class="btn btn-primary btn-lg btn-block" type="submit"
								onclick="complete()">가입 완료</button>
						</form>
					</div>
				</div>
			</div>

		</div>
	</div>




	<!-- footer -->
	<jsp:include page="/WEB-INF/include/footer.jsp"></jsp:include>
</body>
</html>