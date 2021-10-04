<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!doctype html>
<html lang="en">

<!-- HEAD -->
<jsp:include page="/WEB-INF/include/head.jsp" />

<body class="host_version">

	<!-- header -->
	<style>
	:root{
	--body-background-color: #f5f6f7;
	--font-color: #4e4e4e;
	--border-gray-color : #dadada;
	--naver-green-color: #04c75a;
	--naver-green-border-color: #06b350;
}


*{
	margin:0;
	padding:0;
}

body{
	background:var(--body-background-color);
}

.main-container{
	width:100%;
	display:flex;
	flex-direction:column;
	align-items:center;
	margin-top: 21px;
}
.main-container .main-wrap{
	width:768px;

}
.main-container .main-wrap .sel-lang-wrap .lang-select
{
	width: 96px;
	height: 30px;
	color: var(--font-color);
	border: solid 1px var(--border-gray-color);
}
.main-container .main-wrap .logo-wrap{
	padding-top:55px;
}
.main-container .main-wrap .logo-wrap img
{
	width: 231px;
	height: 44px;
}

.main-container .main-wrap header .sel-lang-wrap{
	display:flex;
	justify-content:flex-end;
}

.main-container .main-wrap header .logo-wrap{
	display:flex;	
	flex-direction: column;
	align-items: center;
}
.login-input-section-wrap{
	padding-top: 60px;
	display: flex;
	flex-direction: column;
	align-items: center;
}

.login-input-wrap {
	width: 465px;
	height :48px;
	border: solid 1px var(	--border-gray-color );
	background: white;
}
.password-wrap{
	margin-top: 13px;
}
.login-input-wrap input{
	border: none;
	width:430px;
	margin-top: 10px;
	font-size: 14px;
	margin-left: 10px;
	height:30px;
}
.login-button-wrap {
	padding-top: 13px;
}
.login-button-wrap button {
	width: 465px;
	height :48px;
	font-size: 18px;
	background-color:#008485 ;
	color: white;
	border: solid 1px #008485;
}
.login-stay-sign-in{
	width: 465px;
	height: 52px;
	
	display: flex;
	font-size: 15px;
	color: #4e4e4e;
	align-items: center;
	justify-content: flex-start;
	border-bottom: solid 1px #008485;
}
.login-stay-sign-in i{
	font-size: 25px;
	color: #9ba1a3;
}
.login-stay-sign-in span{
	padding-left: 5px;
	line-height: 25px;
}

.Easy-sgin-in-wrap{

	display: flex;
	flex-direction: column;
	align-items: center;
	padding-top: 40px;

}
.Easy-sgin-in-wrap h2{
	font-size: 20px;
}
.Easy-sgin-in-wrap .sign-button-list
{
	padding-top:25px;
	list-style: none;
	width: 465px;
	display: flex;
	flex-direction: column;
	align-items: center;
}
.Easy-sgin-in-wrap .sign-button-list li{
	padding-bottom: 10px;
}
.Easy-sgin-in-wrap .sign-button-list li button{
	width: 465px;
	height: 56px;
	border: solid 1px var(--border-gray-color);
	text-align: left;
	background: white;
}
.Easy-sgin-in-wrap .sign-button-list li button i{
	padding-left: 15px;
	font-size: 20px;
}
.fa-qrcode
{
	color:#008485;
}
.fa-line{
	color:var(--naver-green-color);
}
.fa-facebook-square
{
	color:#4064ac;
}
.Easy-sgin-in-wrap .sign-button-list li button span{
	padding-left: 20px;
	font-size: 15px;
}
.Easy-sgin-in-wrap .forget-msg{
	color:var(--font-color);
	font-size: 14px;
	padding-top: 10px;

}

.copyright-wrap{

	display: flex;
	flex-direction: column;
	align-items: center;
	height: 15px;


}
.copyright-wrap span img{
	width: 59px;
	
	height: 11px;
}
 .copyright-wrap span{
	font-size: 13px;
	line-height: 15px;
}
	
#kakao{
	
	height: 20px;
	padding-left: 15px;
}
	
#naver{
	
	height: 20px;
	padding-left: 15px;
}
#loginBtn {
	width: 465px;
	height :48px;
	border: solid 1px #008485;
	background: #008485;
	color: white;
}
	
	
	</style>
	
	<!-- LOADER -->
	

	<!-- END LOADER -->


	<jsp:include page="/WEB-INF/include/header.jsp"></jsp:include>

	<!-- Header End -->

	<main>
	<!-- 	<div class="all-title-box">
			<div class="container text-center">
				<h1>
					Login<span class="m_1">하나런 페이지에 오신걸 환영합니다.</span>
				</h1>
			</div>
		</div> -->

		<!--================login_part Area =================-->
		



	<script src="https://kit.fontawesome.com/51db22a717.js" crossorigin="anonymous"></script>


	<div class="main-container">
		<div class="main-wrap">
		<header>
			<div class="sel-lang-wrap">
				<select class="lang-select">
					<option>일반회원</option>
					<option>관리자</option>
				</select>
			</div>
			<div class="logo-wrap">
				<img src="${pageContext.request.contextPath }/resources/images/logos/hana.png">
			</div>
		</header>
		<section class="login-input-section-wrap">
		
		<form method="post" name="loginForm" onsubmit="return checkForm()">
			<div class="login-input-wrap">	
				<input placeholder="아이디" id="id" name="id" type="text"></input>
			</div>
			<div class="login-input-wrap password-wrap">	
				<input placeholder="비밀번호" id="password" name="password" type="password"></input>
			</div>
			<div class="login-button-wrap">
				<input type = "submit" value="로그인" id="loginBtn">
			</div>
			<div class="login-stay-sign-in">
				<i class="far fa-check-circle"></i>
				<span>아이디 저장</span>
			</div>
			</form>
		</section>
		<section class="Easy-sgin-in-wrap">
			<h2>소셜 로그인</h2>
			<ul class="sign-button-list">
				<li><button><img src="${pageContext.request.contextPath }/resources/images/kakao.png" id="kakao"><span>카카오 로그인</span></button></li>
				<li><button><img src="${pageContext.request.contextPath }/resources/images/naver.png" id="naver"><span>네이버 로그인</span></button></li>
				<li><button><i class="fas fa-qrcode"></i><span>QR 로그인</span></button></li>
				
				
			</ul>
			<p class="forget-msg">회원이 아니신가요? | 가입하러가기!</p>
		</section>
	
		</div>
	</div>

		
		
		
		
		
		
		
		<!--================login_part end =================-->
	</main>

	<br>
	<!-- Footer Start-->
	<jsp:include page="/WEB-INF/include/footer.jsp"></jsp:include>
	<!-- Footer End-->





	<%--   
    <!-- JS here -->
    <!-- Jquery, Popper, Bootstrap -->
    <!-- Jquery Mobile Menu -->

    --%>


	<%--   <!-- Scroll up, nice-select, sticky -->
    <script src="${ pageContext.request.contextPath }/assets/js/jquery.scrollUp.min.js"></script>
    <script src="${ pageContext.request.contextPath }/assets/js/jquery.nice-select.min.js"></script>
    <script src="${ pageContext.request.contextPath }/assets/js/jquery.sticky.js"></script>

    <!-- contact js -->
    <script src="${ pageContext.request.contextPath }/assets/js/jquery.magnific-popup.js"></script> --%>
	
	
	<%--     <!-- Jquery Plugins, main Jquery -->	
 --%>
</body>

</html>