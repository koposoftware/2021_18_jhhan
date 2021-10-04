<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<!DOCTYPE html>
<html lang="en">

<!-- script -->
<script  src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script>
	function myFunction() {
	var myWindow = window.open("http://localhost:9999/HN-Project/stock/playStock", "PlayStock-Hana", "width=1500,height=800");
	}
</script>

<!-- script end -->
					

<!-- HEAD -->
<jsp:include page="/WEB-INF/include/head.jsp"/>


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
				<div class="last-finger-item"><i></i></div>
			</div>
		</div>
	</div>
	<!-- END LOADER -->

   <!-- header -->
   
   	<jsp:include page="/WEB-INF/include/header.jsp"></jsp:include>
   	
   	<!-- main image -->
	
	<div class="all-title-box">
		<div class="container text-center">
			<h1>주식체험<span class="m_1">나도 이제 투자자! 주식체험으로 자유롭게, 확실하게!</span></h1>
		</div>
	</div>
	
	<div id="pricing" class="section lb">
        <div class="container">
            <div class="section-title text-center">
                <h3>인기순위 30개 종목</h3>
                <p class="lead"> <strong style="color:#008485">15분 </strong> 마다 실시간 정보를 제공합니다.
                 </p>
            </div><!-- end title -->

            <div class="row">
                <div class="col-md-6 col-md-offset-3">
                    <div class="message-box">
                        <ul class="nav nav-pills nav-stacked" id="myTabs">
                            <li class="active" style="color:#008485"><a href="#tab1" data-toggle="pill">현재 인기종목순위</a></li>
                            <li><a href="#tab2" data-toggle="pill">과거 인기종목순위</a></li>
                        </ul>
                    </div>
                </div><!-- end col -->
            </div>

            <hr class="invis">

            <div class="row">
                <div class="col-md-12">
                    <div class="tab-content">
                        <div class="tab-pane active fade in" id="tab1">
                            <div class="row text-center">
                                <div class="">
                               <p style="float:right">출처: 네이버증권 </p>
                               <p style="float:left ; color:black;font-weight: bold"><c:out value="${list[0].crawl_date}"/> 기준</p>
                               <!-- 현재 주식 인기 검색 순위(30개) -->
                               <table class="table table-striped table-hover table-bordered">
								  <thead>
								    <tr style="color: #008485">
								      <th scope="col">#</th>
								      <th scope="col" style="font-size: 15px; text-align: center">이름</th>
								   <!--    <th scope="col">검색비율</th> -->
								      <th scope="col" style="font-size: 15px; text-align: center">현재가</th>
								      <th scope="col" style="font-size: 15px; text-align: center">전일비</th>
								      <th scope="col" style="font-size: 15px; text-align: center">등략률</th>
								      <th scope="col" style="font-size: 15px; text-align: center">거래량</th>
								      <th scope="col" style="font-size: 15px; text-align: center">시가</th>
								      <th scope="col" style="font-size: 15px; text-align: center">고가</th>
								      <th scope="col" style="font-size: 15px; text-align: center">저가</th>
								    </tr>
								  </thead>
								  <tbody>
								  <c:forEach items="${list }" var="stockVO" varStatus="loop">
								  	
								  
								    <tr>
										
								      <th scope="row"><c:out value="${stockVO.no}"/></th>
								      <td style="color:black;font-weight: bold"><c:out value="${stockVO.name}"/></td>
								     <%--  <td><c:out value="${stockVO.search_per}"/></td> --%>
								      <td style="color:black; "><c:out value="${stockVO.now_p}"/></td>
								      <td style="color:black; "><c:out value="${stockVO.ntob}"/></td>
								      <td><c:out value="${stockVO.updown}"/></td>
								      <td><c:out value="${stockVO.howmany}"/></td>
								      <td><c:out value="${stockVO.start_p}"/></td>
								      <td><c:out value="${stockVO.high_p}"/></td>
								      <td><c:out value="${stockVO.low_p}"/></td>
								     
								      
								    </tr>
								   </c:forEach> 
								   
								   
								   
								  </tbody>
								</table>
								                               
                               
                               
                               
                               
                                </div>
                             
                                
                            </div><!-- end row -->
                        </div><!-- end pane -->

                        <div class="tab-pane fade" id="tab2">
                            <div class="row text-center">
                                <div class="col-md-6">
                                    <div class="pricing-table pricing-table-highlighted">
                                        <div class="pricing-table-header grd1">
                                            <h2>Dedicated Server</h2>
                                            <h3>$85/month</h3>
                                        </div>
                                        <div class="pricing-table-space"></div>
                                        <div class="pricing-table-features">
                                            <p><i class="fa fa-envelope-o"></i> <strong>250</strong> Email Addresses</p>
                                            <p><i class="fa fa-rocket"></i> <strong>125GB</strong> of Storage</p>
                                            <p><i class="fa fa-database"></i> <strong>140</strong> Databases</p>
                                            <p><i class="fa fa-link"></i> <strong>60</strong> Domains</p>
                                            <p><i class="fa fa-life-ring"></i> <strong>24/7 Unlimited</strong> Support</p>
                                        </div>
                                        <div class="pricing-table-sign-up">
                                            <a href="#contact" data-scroll class="btn btn-light btn-radius btn-brd grd1 effect-1">Order Now</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="pricing-table pricing-table-highlighted">
                                        <div class="pricing-table-header grd1">
                                            <h2>VPS Server</h2>
                                            <h3>$59/month</h3>
                                        </div>
                                        <div class="pricing-table-space"></div>
                                        <div class="pricing-table-text">
                                            <p>This is a perfect choice for small businesses and startups.</p>
                                        </div>
                                        <div class="pricing-table-features">
                                            <p><i class="fa fa-envelope-o"></i> <strong>150</strong> Email Addresses</p>
                                            <p><i class="fa fa-rocket"></i> <strong>65GB</strong> of Storage</p>
                                            <p><i class="fa fa-database"></i> <strong>60</strong> Databases</p>
                                            <p><i class="fa fa-link"></i> <strong>30</strong> Domains</p>
                                            <p><i class="fa fa-life-ring"></i> <strong>24/7 Unlimited</strong> Support</p>
                                        </div>
                                        <div class="pricing-table-sign-up">
                                            <a href="#contact" data-scroll class="btn btn-light btn-radius btn-brd grd1 effect-1">Order Now</a>
                                        </div>
                                    </div>
                                </div>
                            </div><!-- end row -->
                        </div><!-- end pane -->
                    </div><!-- end content -->
                </div><!-- end col -->
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->
	
    <div id="overviews" class="section wb">
        <div class="container">
            <div class="section-title row text-center">
                <div class="col-md-8 col-md-offset-2">
                    <h3 style="font-weight: bold">나도 시작하러가기!</h3>
                    <p class="lead">
						주식체험으로 주린이도 손쉽게!<br>
						해보고 싶었던 주식! 모의체험으로 금융 상식도 쑥쑥!<br>
						내 돈으로 투자하기, 복잡하고 어렵지 않아요~!<br>
						원하는 종목 담아담아~ 친구들과 함께 결과 공유! 질문사항은 피드백으로 고고!
					</p>
							
                </div>
               
            </div><!-- end title -->
             <div >
					<div style=" display:flex;" >
					<button type="button" onclick="location.href='${pageContext.request.contextPath}/stock/resisterStock'" style=" display:flex; margin:20px;height:200">
					<img src="${pageContext.request.contextPath }/resources/images/stockMain01.png" alt=""></button>
					<br>
					
					<button type="button" onclick="myFunction()" style="display:flex; margin:20px; height:200">
					<img src="${pageContext.request.contextPath }/resources/images/stockMain02.png" alt=""></button>
					</div>
				</div>

            <hr class="invis"> 

            
            <hr class="hr3"> 

            
        </div><!-- end container -->
    </div><!-- end section -->

   

  
    <div class="parallax section db parallax-off" style="background-image:url('uploads/parallax_02.jpg');">
        <div class="container">
            <div class="row logos">
                <div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
                    <a href="#"><img src="uploads/logo_01.png" alt="" class="img-repsonsive"></a>
                </div>
                <div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
                    <a href="#"><img src="uploads/logo_02.png" alt="" class="img-repsonsive"></a>
                </div>
                <div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
                    <a href="#"><img src="uploads/logo_03.png" alt="" class="img-repsonsive"></a>
                </div>
                <div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
                    <a href="#"><img src="uploads/logo_04.png" alt="" class="img-repsonsive"></a>
                </div>
                <div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
                    <a href="#"><img src="uploads/logo_05.png" alt="" class="img-repsonsive"></a>
                </div>
                <div class="col-md-2 col-sm-2 col-xs-6 wow fadeInUp">
                    <a href="#"><img src="uploads/logo_06.png" alt="" class="img-repsonsive"></a>
                </div>
            </div><!-- end row -->
        </div><!-- end container -->
    </div><!-- end section -->

    <section class="section nopad cac text-center">
        <a href="#"><h3>Interesting our awesome web design services? Just drop an email to us and get quote for free!</h3></a>
    </section>



<!-- footer -->
  <jsp:include page="/WEB-INF/include/footer.jsp"></jsp:include>

</body>
</html>