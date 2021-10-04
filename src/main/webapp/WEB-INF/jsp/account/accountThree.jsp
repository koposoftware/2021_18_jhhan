<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<!-- HEAD -->
<jsp:include page="/WEB-INF/include/head.jsp" />

<script src="https://code.jquery.com/jquery-3.6.0.min.js"
	integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
	crossorigin="anonymous"></script>
<!-- modal -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

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


<script>
	function complete(){
		alert(${userVO.id}'님, 환영합니다! 회원가입이 완료되었습니다.')
	}

</script>




<script>


$(document).ready(function() {

	$('#phoneckBtn').click(function() {
		var phNum = $('#phoneNumber').val()

		$.ajax({
			type : 'GET',
			url : '${pageContext.request.contextPath }/send/sms/' + phNum ,
			success : function(data) {
				var checkNum = data
				alert(checkNum)

			},
			error : function() {
				alert('Err')
			}
		})

	})
})


</script>



<jsp:include page="/WEB-INF/include/head.jsp"></jsp:include>

<body class="host_version">
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



	<div class="all-title-box">
		<div class="container text-center">
			<h1>
				하나은행 계좌개설<span class="m_1"><br>비대면 계좌개설로 빠르고 간편하게!</span>
			</h1>
		</div>
	</div>

	<div id="overviews" class="section wb">

		<div
			class="container d-flex justify-content-center align-items-center">
			<div class="progresses" style="justify-content: center;">
				<div class="steps">
					<span><i class="fa fa-check"></i></span>
				</div>
				<span class="line"></span>
				<div class="steps">
					<span><i class="fa fa-check"></i></span>
				</div>
				<span class="line"></span>
				<div class="steps">
					<span><i class="fa fa-check"></i></span>
				</div>

			</div>
		</div>

		<!-- end title -->

		<hr class="invis">

		<!-- modal -->
		<link rel="stylesheet"
			href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
		<script
			src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script
			src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

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

/* progress */
@import
	url("https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800&display=swap")
	;

.progresses {
	display: flex;
	align-items: center
}

.line {
	width: 250px;
	height: 6px;
	background: #008485;
}

.steps {
	display: flex;
	background-color: #008485;
	color: #fff;
	font-size: 14px;
	width: 40px;
	height: 40px;
	align-items: center;
	justify-content: center;
	border-radius: 50%
}
</style>

		<!-- Required Fremwork -->

		<!-- themify-icons line icon -->
		<link rel="stylesheet" type="text/css"
			href="${pageContext.request.contextPath }/assets/icon/themify-icons/themify-icons.css">
		<link rel="stylesheet" type="text/css"
			href="${pageContext.request.contextPath }/assets/icon/font-awesome/css/font-awesome.min.css">
		<!-- ico font -->
		<link rel="stylesheet" type="text/css"
			href="${pageContext.request.contextPath }/assets/icon/icofont/css/icofont.css">
		<!-- Style.css -->
		<link rel="stylesheet" type="text/css"
			href="${pageContext.request.contextPath }/assets/css/style.css">
		<script>
	function complete(){
		alert($'{userVO.id}'님, 환영합니다! 회원가입이 완료되었습니다.')
	}

</script>

		</head>

		<body>

			<div class="container">
				<div class="input-form-backgroud row">
					<div class="input-form forms">
					<img src="${pageContext.request.contextPath }/resources/images/logos/hana.png" style="width:40%">
						<h2 class="mb-3" style="margin:30px">
							<c:out value="${userVO.name }"></c:out>
							님,
						<br> 신청절차가 성공적으로 완료되었습니다!
						</h2>

						<div class="row">
							<div class="mb-3">
							<button style="background-color: #008485; width:auto; margin-left:220px" class="btn btn-primary btn-lg btn-block" onclick="location.href='${pageContext.request.contextPath }/account/accountSearch'" >
							계좌 조회하러가기</button>
								

								
								<!-- template -->

								

							</div>
						</div>
					</div>
				</div>







				<hr class="hr3">

				
				<!-- end row -->
			</div>
			<!-- end container -->
	</div>
	<!-- end section -->

	<jsp:include page="/WEB-INF/include/footer.jsp"></jsp:include>

</body>
</html>