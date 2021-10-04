<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>

<link ="stylesheet" type="text/css"
	href="path/to/font-awesome/css/font-awesome.min.css">
<!-- HEAD -->
<jsp:include page="/WEB-INF/include/head.jsp" />



<body class="host_version">

<!-- 카카오 이체알림 -->
<script type="text/JavaScript" src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript">
    function sendLinkCustom() {
        Kakao.init("3be42087f9ef6ce4e9bf0ead0f4319f3");
        Kakao.Link.sendCustom({
            templateId: 62246
        });
    }
</script>

<script>
try {
  function sendLinkDefault() {
    Kakao.init("3be42087f9ef6ce4e9bf0ead0f4319f3")
    Kakao.Link.sendDefault({
      objectType: 'feed',
      content: {
        title: '딸기 치즈 케익',
        description: '#케익 #딸기 #삼평동 #카페 #분위기 #소개팅',
        imageUrl:
          'http://k.kakaocdn.net/dn/Q2iNx/btqgeRgV54P/VLdBs9cvyn8BJXB3o7N8UK/kakaolink40_original.png',
        link: {
          mobileWebUrl: 'https://developers.kakao.com',
          webUrl: 'https://developers.kakao.com',
        },
      },
      social: {
        likeCount: 286,
        commentCount: 45,
        sharedCount: 845,
      },
      buttons: [
        {
          title: '웹으로 보기',
          link: {
            mobileWebUrl: 'https://developers.kakao.com',
            webUrl: 'https://developers.kakao.com',
          },
        },
        {
          title: '앱으로 보기',
          link: {
            mobileWebUrl: 'https://developers.kakao.com',
            webUrl: 'https://developers.kakao.com',
          },
        },
      ],
    })
  }
; window.kakaoDemoCallback && window.kakaoDemoCallback() }
catch(e) { window.kakaoDemoException && window.kakaoDemoException(e) }
</script>



</head>

	<!-- login -->


	<!-- LOADER -->
	
	<!-- END LOADER -->

	<!-- header -->

	<jsp:include page="/WEB-INF/include/header.jsp"></jsp:include>


	<!-- main image -->

	<div class="all-title-box">
		<div class="container text-center">
			<h1 style="font-size: 500%">
				계좌이체<span class="m_1"></span>
			</h1>
		</div>
	</div>

	<div class="row">
		<div class="mb-3"></div>
	</div>




	<div id="overviews" class="section wb">
		<div class="container">
			<div class="section-title row text-center">
				<div class="col-md-8 col-md-offset-2">
					<h3>
						<c:out value="${userVO.name}" />
						님 이체진행
					</h3>
				</div>
			</div>
			<!-- end title -->
			<div>
				<div class="container">
					<div class="input-form-backgroud row" style="margin-left: 50px; margin-right: 50px">
						<div class="input-form forms">
							<h2 class="mb-3" style="font-weight: blod">이체진행</h2>
							<input type="button" class="btn btn-info"
								style="float: right; width: 120px; background-color:#008485;height: 25px; display: relative; font-size: small; padding: 2px; margin-right:50px; margin-bottom: 10px"
								value="다른은행계좌 이체" />

							<hr>

							<form method="post" action="${pageContext.request.contextPath}/account/accountTrans" class="validation-form" novalidate>
								<div class="row" style="margin:30px">
									<div class="col-md-6 mb-3">
										<label for="name"><h3>출금정보</h3></label>

									</div>


									<div class="col-md-9 mb-3">
									<label for="nickname" style=" font-size: 15px">하나은행 출금계좌</label>
									<input type="text" style="width:500px; height:50px" class="form-control" name="bank_id" id="text"
											placeholder="출금 계좌번호를 입력하세요"  value="" required>
										<!-- <select class="" style="width: 80%; height: 45px; ">
											<option selected>선택하세요</option>
											<option value="1">
											</option>
											<option value="2">Two</option>
											<option value="3">Three</option>
										</select> -->

									</div>
									<br>
									<div class="col-md-9 mb-3">
										<label for="nickname"  style=" font-size: 15px">비밀번호</label> 
										<input type="password" style="width:500px; height:50px"  class="form-control" name="bank_password" id="password"
											placeholder="비밀번호 4자리를 입력하세요" value="" required>
										
									</div>
									<br>

									<div class="col-md-9 mb-3" >
										<br> <label for="phone" style=" font-size: 15px">이체금액</label> 
										<input id="phoneNumber" placeholder="이체금액을 입력하세요" name="trans_money" type="text" class="form-control" style="width:500px; height:50px"></input> 
										<input type="button" class="btn btn-primary btn-lg btn-block" value="이체한도 조회" style="display: flex;background-color: #008485;width:70px; height:30px; font-size:10px;padding:2px;margin:inherit"> <br> 
										
										<label for="phone" style="font-size: 15px">내통장 표시</label> 
										<input placeholder="30자 이내" name="" type="text"class="form-control" style="width: 80%;font-size: 15px"></input>
									</div>
								</div>
						<!-- ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ  -->
						
						<br><br><br>
						<hr>
								<div class="row" style="margin:30px">
									<div class="col-md-6 mb-3">
										<label for="name" style=" font-size: 15px">입금은행</label>

									</div>



									<div class="col-md-9 mb-3" >
										<select class="" style="width: 80%; height: 45px;font-size: 15px;font-size: 15px">
											<option selected>하나은행</option>
											<option value="1">하나은행</option>
											<option value="2">Two</option>
											<option value="3">Three</option>
										</select>

									</div>

									<div class="col-md-9 mb-3">
										<label for="nickname" style="font-size: 15px">입금 계좌번호</label> 
									</div>
										<div class="col-md-9 mb-3">
										<select class="" style="width: 80%; height: 45px;font-size: 15px">
											<option selected>계좌번호</option>
										<c:forEach items="${select}" var="a" varStatus="loop">
											<option value="acc"><c:out value="${a.bank_username}"></c:out><c:out value="${a.bank_id}"></c:out></option>
										</c:forEach>
										</select>
										<br><br>
										    <input type="password" class="form-control" style="width: 80%;" name="your_bank_id" id="your_bank_id"
											placeholder="- 없이 계좌번호를 입력하세요" value="" required>

										</div>
									

									
								
							<button class="btn btn-primary btn-lg btn-block" type="submit" onclick = "locatin.href='${pageContext.request.contextPath}/account/accountTransFin'"  style="width:200px; margin-top: 30px; background-color:#008485 ">이체</button>
							 <input class="btn btn-primary btn-lg btn-block" type="button" onClick="sendLinkCustom();"  style="width:200px; margin-top: 30px;background-color: gold; color:black " value="카톡으로 알림보내기!"/>
							</form>
						</div>
					


					</div>

				</div>




			</div>

			<hr class="invis">

			
		</div>
		<!-- end icon-wrapper -->

		<!-- end col -->





		<!-- end icon-wrapper -->
	</div>
	<!-- end col -->

	
	<!-- end col -->
	</div>
	<!-- end row -->

	<hr class="hr3">

	
	<!-- end row -->
	</div>
	<!-- end container -->
	</div>
	<!-- end section -->

	<div id="hosting" class="section wb"
		style="background: rgb(248, 248, 248)">
		<div class="container">
			<div class="section-title text-center">
				<h3>Hosting Packages</h3>
				<p class="lead">
					All the Lorem Ipsum generators on the Internet tend to repeat
					predefined chunks as necessary, true generator<br> on the
					Internet. It uses a dictionary of over..
				</p>
			</div>
			<!-- end title -->

			<div class="row dev-list text-center">
				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 wow fadeIn"
					data-wow-duration="1s" data-wow-delay="0.2s">
					<div class="widget clearfix">
						<img src="uploads/hosting_01.jpg" alt="" class="img-responsive">
						<div class="widget-title">
							<h3>Shared Hosting</h3>
							<small>Starting from $40/month</small>
						</div>
						<!-- end title -->
						<p>Lorem Ipsum generators on the Internet tend to repeat
							predefined chunks as necessary, true dont miss this one!</p>

						<hr>

						<div class="footer-social">
							<a href="#" class="btn global-radius" data-toggle="tooltip"
								data-placement="top" title="Free Page Builder"><i
								class="flaticon-coding"></i></a> <a href="#"
								class="btn global-radius" data-toggle="tooltip"
								data-placement="top" title="WordPress Support"><i
								class="flaticon-wordpress-logo"></i></a> <a href="#"
								class="btn global-radius" data-toggle="tooltip"
								data-placement="top" title="1 Domain Free"><i
								class="flaticon-world-wide-web"></i></a> <a href="#"
								class="btn global-radius" data-toggle="tooltip"
								data-placement="top" title="50MB Bandwdith"><i
								class="flaticon-cloud-computing-1"></i></a>
						</div>

						<hr>

						<a href="#pricing" data-scroll
							class="btn btn-light grd1 effect-1 btn-radius btn-brd">Order
							Now</a>

					</div>
					<!--widget -->
				</div>
				<!-- end col -->

				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 wow fadeIn"
					data-wow-duration="1s" data-wow-delay="0.4s">
					<div class="widget clearfix">
						<img src="uploads/hosting_02.jpg" alt="" class="img-responsive">
						<div class="widget-title">
							<h3>Reseller Hosting</h3>
							<small>Starting from $80/month</small>
						</div>
						<!-- end title -->
						<p>Internet lorem Ipsum generators on the tend to repeat
							predefined chunks as necessary, finally its release!</p>

						<hr>

						<div class="footer-social">
							<a href="#" class="btn global-radius" data-toggle="tooltip"
								data-placement="top" title="Free Page Builder"><i
								class="flaticon-coding"></i></a> <a href="#"
								class="btn global-radius" data-toggle="tooltip"
								data-placement="top" title="WordPress Support"><i
								class="flaticon-wordpress-logo"></i></a> <a href="#"
								class="btn global-radius" data-toggle="tooltip"
								data-placement="top" title="1 Domain Free"><i
								class="flaticon-world-wide-web"></i></a> <a href="#"
								class="btn global-radius" data-toggle="tooltip"
								data-placement="top" title="150MB Bandwdith"><i
								class="flaticon-cloud-computing-1"></i></a> <a href="#"
								class="btn global-radius" data-toggle="tooltip"
								data-placement="top" title="Money Back Guarentee"><i
								class="flaticon-money"></i></a>
						</div>
						<hr>

						<a href="#pricing" data-scroll
							class="btn btn-light grd1 effect-1 btn-radius btn-brd">Order
							Now</a>

					</div>
					<!--widget -->
				</div>
				<!-- end col -->

				<div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 wow fadeIn"
					data-wow-duration="1s" data-wow-delay="0.6s">
					<div class="widget clearfix">
						<img src="uploads/hosting_03.jpg" alt="" class="img-responsive">
						<div class="widget-title">
							<h3>Dedicated Server</h3>
							<small>Starting from $120/month</small>
						</div>
						<!-- end title -->
						<p>Predefined internet lorem Ipsum generators on the tend to
							repeat chunks as necessary, true and more..</p>

						<hr>

						<div class="footer-social">
							<a href="#" class="btn global-radius" data-toggle="tooltip"
								data-placement="top" title="Free Page Builder"><i
								class="flaticon-coding"></i></a> <a href="#"
								class="btn global-radius" data-toggle="tooltip"
								data-placement="top" title="WordPress Support"><i
								class="flaticon-wordpress-logo"></i></a> <a href="#"
								class="btn global-radius" data-toggle="tooltip"
								data-placement="top" title="1 Domain Free"><i
								class="flaticon-world-wide-web"></i></a> <a href="#"
								class="btn global-radius" data-toggle="tooltip"
								data-placement="top" title="Unlimited Bandwdith"><i
								class="flaticon-cloud-computing-1"></i></a> <a href="#"
								class="btn global-radius" data-toggle="tooltip"
								data-placement="top" title="Money Back Guarentee"><i
								class="flaticon-money"></i></a> <a href="#"
								class="btn global-radius" data-toggle="tooltip"
								data-placement="top" title="24/7 Support"><i
								class="flaticon-lifesaver-security-sportive-tool"></i></a>
						</div>
						<hr>

						<a href="#pricing" data-scroll
							class="btn btn-light grd1 effect-1 btn-radius btn-brd">Order
							Now</a>

					</div>
					<!--widget -->
				</div>
				<!-- end col -->
			</div>
			<!-- end row -->
		</div>
		<!-- end container -->
	</div>
	<!-- end section -->

	<div id="pricing" class="section cl">
		<div class="container">
			<div class="row text-left stat-wrap">
				<div class="col-md-4 col-sm-4 col-xs-12">
					<span data-scroll
						class="global-radius icon_wrap effect-1 alignleft"><i
						class="flaticon-hosting"></i></span>
					<p class="stat_count">12000</p>
					<h3>Hosted Sites</h3>
				</div>
				<!-- end col -->

				<div class="col-md-4 col-sm-4 col-xs-12">
					<span data-scroll
						class="global-radius icon_wrap effect-1 alignleft"><i
						class="flaticon-domain-registration"></i></span>
					<p class="stat_count">24000</p>
					<h3>Sold Domains</h3>
				</div>
				<!-- end col -->

				<div class="col-md-4 col-sm-4 col-xs-12">
					<span data-scroll
						class="global-radius icon_wrap effect-1 alignleft"><i
						class="flaticon-mail"></i></span>
					<p class="stat_count">5000</p>
					<h3>Email Accounts</h3>
				</div>
				<!-- end col -->
			</div>
			<!-- end row -->
		</div>
		<!-- end container -->
	</div>
	<!-- end section -->

	<div id="pricing" class="section lb">
		<div class="container">
			<div class="section-title text-center">
				<h3>Ready to get started?</h3>
				<p class="lead">
					Get the red carpet treatment <strong>just $39 per month!</strong>
					It is estimated that 3.5 million established by personal blogs.<br>
					From each other, we share paid WordPress themes WP Service...
				</p>
			</div>
			<!-- end title -->
		</div>
		<!-- end container -->
	</div>
	<!-- end section -->

	<div id="testimonials" class="parallax section db parallax-off"
		style="background-image: url('uploads/parallax_04.jpg');">
		<div class="container">
			<div class="section-title text-center">
				<h3>Testimonials</h3>
				<p class="lead">
					We thanks for all our awesome testimonials! There are hundreds of
					our happy customers! <br>Let's see what others say about
					Landigoo website template!
				</p>
			</div>
			<!-- end title -->

			<div class="row">
				<div class="col-md-12 col-sm-12">
					<div class="testi-carousel owl-carousel owl-theme">
						<div class="testimonial clearfix">
							<div class="desc">
								<h3>
									<i class="fa fa-quote-left"></i> Wonderful Support!
								</h3>
								<p class="lead">They have got my project on time with the
									competition with a sed highly skilled, and experienced &
									professional team.</p>
							</div>
							<div class="testi-meta">
								<img src="uploads/testi_01.png" alt=""
									class="img-responsive alignleft">
								<h4>
									James Fernando <small>- Manager of Racer</small>
								</h4>
							</div>
							<!-- end testi-meta -->
						</div>
						<!-- end testimonial -->

						<div class="testimonial clearfix">
							<div class="desc">
								<h3>
									<i class="fa fa-quote-left"></i> Awesome Services!
								</h3>
								<p class="lead">Explain to you how all this mistaken idea of
									denouncing pleasure and praising pain was born and I will give
									you completed.</p>
							</div>
							<div class="testi-meta">
								<img src="uploads/testi_02.png" alt=""
									class="img-responsive alignleft">
								<h4>
									Jacques Philips <small>- Designer</small>
								</h4>
							</div>
							<!-- end testi-meta -->
						</div>
						<!-- end testimonial -->

						<div class="testimonial clearfix">
							<div class="desc">
								<h3>
									<i class="fa fa-quote-left"></i> Great & Talented Team!
								</h3>
								<p class="lead">The master-builder of human happines no one
									rejects, dislikes avoids pleasure itself, because it is very
									pursue pleasure.</p>
							</div>
							<div class="testi-meta">
								<img src="uploads/testi_03.png" alt=""
									class="img-responsive alignleft">
								<h4>
									Venanda Mercy <small>- Newyork City</small>
								</h4>
							</div>
							<!-- end testi-meta -->
						</div>
						<!-- end testimonial -->
						<div class="testimonial clearfix">
							<div class="desc">
								<h3>
									<i class="fa fa-quote-left"></i> Wonderful Support!
								</h3>
								<p class="lead">They have got my project on time with the
									competition with a sed highly skilled, and experienced &
									professional team.</p>
							</div>
							<div class="testi-meta">
								<img src="uploads/testi_01.png" alt=""
									class="img-responsive alignleft">
								<h4>
									James Fernando <small>- Manager of Racer</small>
								</h4>
							</div>
							<!-- end testi-meta -->
						</div>
						<!-- end testimonial -->

						<div class="testimonial clearfix">
							<div class="desc">
								<h3>
									<i class="fa fa-quote-left"></i> Awesome Services!
								</h3>
								<p class="lead">Explain to you how all this mistaken idea of
									denouncing pleasure and praising pain was born and I will give
									you completed.</p>
							</div>
							<div class="testi-meta">
								<img src="uploads/testi_02.png" alt=""
									class="img-responsive alignleft">
								<h4>
									Jacques Philips <small>- Designer</small>
								</h4>
							</div>
							<!-- end testi-meta -->
						</div>
						<!-- end testimonial -->

						<div class="testimonial clearfix">
							<div class="desc">
								<h3>
									<i class="fa fa-quote-left"></i> Great & Talented Team!
								</h3>
								<p class="lead">The master-builder of human happines no one
									rejects, dislikes avoids pleasure itself, because it is very
									pursue pleasure.</p>
							</div>
							<div class="testi-meta">
								<img src="uploads/testi_03.png" alt=""
									class="img-responsive alignleft">
								<h4>
									Venanda Mercy <small>- Newyork City</small>
								</h4>
							</div>
							<!-- end testi-meta -->
						</div>
						<!-- end testimonial -->
					</div>
					<!-- end carousel -->
				</div>
				<!-- end col -->
			</div>
			<!-- end row -->
		</div>
		<!-- end container -->
	</div>
	<!-- end section -->



	<div class="parallax section db parallax-off"
		style="background-image: url('uploads/parallax_02.jpg');">
		<div class="container">
			<div class="row logos">
				<div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
					<a href="#"><img src="uploads/logo_01.png" alt=""
						class="img-repsonsive"></a>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
					<a href="#"><img src="uploads/logo_02.png" alt=""
						class="img-repsonsive"></a>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
					<a href="#"><img src="uploads/logo_03.png" alt=""
						class="img-repsonsive"></a>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
					<a href="#"><img src="uploads/logo_04.png" alt=""
						class="img-repsonsive"></a>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
					<a href="#"><img src="uploads/logo_05.png" alt=""
						class="img-repsonsive"></a>
				</div>
				<div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
					<a href="#"><img src="uploads/logo_06.png" alt=""
						class="img-repsonsive"></a>
				</div>
			</div>
			<!-- end row -->
		</div>
		<!-- end container -->
	</div>
	<!-- end section -->

	<section class="section nopad cac text-center">
		<a href="#"><h3>Interesting our awesome web design services?
				Just drop an email to us and get quote for free!</h3></a>
	</section>

	<jsp:include page="/WEB-INF/include/footer.jsp"></jsp:include>



</body>

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
</html>