<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>playhana 모의주식체험 </title>
    <!-- HTML5 Shim and Respond.js IE9 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
      <![endif]-->
      <!-- Meta -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <meta name="description" content="Gradient Able Bootstrap admin template made using Bootstrap 4. The starter version of Gradient Able is completely free for personal project." />
      <meta name="keywords" content="free dashboard template, free admin, free bootstrap template, bootstrap admin template, admin theme, admin dashboard, dashboard template, admin template, responsive" />
      <meta name="author" content="codedthemes">
      <!-- Favicon icon -->
      <link rel="icon" href="${pageContext.request.contextPath }/assets/images/favicon.ico" type="image/x-icon">
      <!-- Google font-->
      <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600" rel="stylesheet">
      <!-- Required Fremwork -->
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/css/bootstrap/css/bootstrap.min.css">
      <!-- themify-icons line icon -->
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/icon/themify-icons/themify-icons.css">
	  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/icon/font-awesome/css/font-awesome.min.css">
      <!-- ico font -->
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/icon/icofont/css/icofont.css">
      <!-- Style.css -->
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/css/style.css">
      <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/assets/css/jquery.mCustomScrollbar.css">
  </head>
  
  
  
 <!-- 매수량 모달 -->
	<script>
		function plus() {
			var td = document.getElementById("count");
			var n = Number(td.innerHTML);
			td.innerHTML = n + 1;
			
			$( "#model-price" ).attr( "title" );
			
			
			var price = parseInt($("#modal-stockprice").attr('title').split(',').join(''));
			var total = price* (n+1);
			
			console.log(total);
			
			$(document).ready(function() {
		         $("#total").val(total)
		         $("#stock").val(n+1).hide()
		         

		});	
			
		}
		function minus() {
			var td = document.getElementById("count");
			var n = Number(td.innerHTML);
			td.innerHTML = n -1;
			
			var now = $("#total").val();
			var minus = (now/n)*(n-1) 
			console.log(minus);
			
			
			$(document).ready(function() {
		         $("#total").val(minus)
		         $("#stock").val(n-1).hide()

		});	
				
		}
	
	</script>
	<!-- 매도 모달 -->
	<script>
		function plus2() {
			var td = document.getElementById("count_s");
			var n = Number(td.innerHTML);
			td.innerHTML = n + 1;
			
			$( "#model-price_s" ).attr( "title" );
			
			
			var price = parseInt($("#modal-stockprice_s").attr('title').split(',').join(''));
			var total = price* (n+1);
			
			console.log(total);
			
			$(document).ready(function() {
		         $("#total_s").val(total)
		         $("#stock_s").val(n+1).hide()
		         

		});	
			
		}
		function minus2() {
			var td = document.getElementById("count_s");
			var n = Number(td.innerHTML);
			td.innerHTML = n -1;
			
			var now = $("#total_s").val();
			var minus = (now/n)*(n-1) 
			console.log(minus);
			
			
			$(document).ready(function() {
		         $("#total_s").val(minus)
		         $("#stock_s").val(n-1).hide()

		});	
				
		}
	
	</script>
	  <style>
	    .carousel-control-prev-icon,
		.carousel-control-next-icon {
		  height: 60px;
		  width: 60px;
		  /* outline: black; */
		  background-size: 50%, 50%;
		  border-radius: 50%;
		 /*  border: 1px solid black; */
		  background-image: none;
		}
		
		.carousel-control-next-icon:after
		{
		  content: '>';
		  font-size: 55px;
		  color: red;
		}
		
		.carousel-control-prev-icon:after {
		  content: '<';
		  font-size: 55px;
		  color: red;
		}
	  
	  </style>

  <body>
  <body>
	  <div class="fixed-button">
		<a href="#">
			<i class="fa fa-" aria-hidden="true"></i> 돌아가기
		</a>
	  </div>
       <!-- Pre-loader start -->
    <div class="theme-loader">
        <div class="loader-track">
            <div class="loader-bar"></div>
        </div>
    </div>
    <!-- Pre-loader end -->
    <div id="pcoded" class="pcoded">
        <div class="pcoded-overlay-box"></div>
        <div class="pcoded-container navbar-wrapper">

            <nav class="navbar header-navbar pcoded-header">
               <div class="navbar-wrapper">
                   <div class="navbar-logo">
                       <a class="mobile-menu" id="mobile-collapse" href="#!">
                           <i class="ti-menu"></i>
                       </a>
                       <div class="mobile-search">
                           <div class="header-search">
                               <div class="main-search morphsearch-search">
                                   <div class="input-group">
                                       <span class="input-group-addon search-close"><i class="ti-close"></i></span>
                                       <input type="text" class="form-control" placeholder="Enter Keyword">
                                       <span class="input-group-addon search-btn"><i class="ti-search"></i></span>
                                   </div>
                               </div>
                           </div>
                       </div>
                       <a href="index.html">
                       		<h4 style="margin:10px">PlayHana</h4>
                          
                       </a>
                       <a class="mobile-options">
                           <i class="ti-more"></i>
                       </a>
                   </div>

                   <div class="navbar-container container-fluid">
                       <ul class="nav-left">
                           <li>
                               <div class="sidebar_toggle"><a href="javascript:void(0)"><i class="ti-menu"></i></a></div>
                           </li>
                           <li class="header-search">
                               <div class="main-search morphsearch-search">
                                   <div class="input-group">
                                       <span class="input-group-addon search-close"><i class="ti-close"></i></span>
                                       <input type="text" class="form-control">
                                       <span class="input-group-addon search-btn"><i class="ti-search"></i></span>
                                   </div>
                               </div>
                           </li>
                           <li>
                               <a href="#!" onclick="javascript:toggleFullScreen()">
                                   <i class="ti-fullscreen"></i>
                               </a>
                           </li>
                       </ul>
                       <ul class="nav-right">
                           <li class="header-notification">
                               <a href="#!">
                                   <i class="ti-bell"></i>
                                   <span class="badge bg-c-pink"></span>
                               </a>
                               <ul class="show-notification">
                                   <li>
                                       <h6>설정</h6>
                                       <label class="label label-danger">go</label>
                                   </li>
                                   <li>
                                       <div class="media">
                                           <img class="d-flex align-self-center img-radius" src="assets/images/avatar-2.jpg" alt="Generic placeholder image">
                                           <div class="media-body">
                                               <h5 class="notification-user"><a href="${pageContext.request.contextPath }/stock/stockMain">Round 종료하기</a></h5>
                                               <p class="notification-msg"></p>
                                              
                                           </div>
                                       </div>
                                   </li>
                                   
                                   
                               </ul>
                           </li>
                           
                           <li class="user-profile header-notification">
                               <a href="#!">
                                  
                                   <c:out value="${userVO.name}"/>님
                                   <i class="ti-angle-down"></i>
                               </a>
                               
                           </li>
                       </ul>
                   </div>
               </div>
           </nav>
           
            <div class="pcoded-main-container">
                <div class="pcoded-wrapper">
                    
                    <div class="pcoded-content">
                        <div class="pcoded-inner-content">
                            <div class="main-body">
                                <div class="page-wrapper">

                                    <div class="page-body">
                                      <div class="row">
                                      
                                      
                    <!-- 상단 메뉴 (나의잔액 등등) -->
                                            <div class="col-md-6 col-xl-3">
                                                <div class="card bg-c-blue order-card">
                                                    <div class="card-block">
                                                        <h6 class="m-b-20">다음 단계이동</h6>
                                                        <h2 class="text-right"><i class="fa fa-heartbeat" ></i>
                                                        <span id="spanspan">Round 1<button id="nextLvl" style="background-color:transparent; outline:0; "><i class="fa fa-sign-in" aria-hidden="true"></i></button></span></h2>
                                                        <p class="m-b-0">매수 완료시 버튼을 누르세요!<span class="f-right"></span></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-xl-3">
                                                <div class="card bg-c-green order-card">
                                                    <div class="card-block">
                                                        <h6 class="m-b-20">현재 나의잔액</h6>
                                                        <h2 class="text-right"><i class="ti-tag f-left"></i><span><c:out value="${mystock[0].stock_bal}"/>원</span></h2>
                                                        <p class="m-b-0">투자금액<span class="f-right"></span></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-xl-3">
                                                <div class="card bg-c-yellow order-card">
                                                    <div class="card-block">
                                                        <h6 class="m-b-20">내 계좌</h6>
                                                        <h2 class="text-right"><i class="ti-reload f-left"></i><span><c:out value="${mystock[0].stock_acc}"/></span></h2>
                                                        <p class="m-b-0"> <span class="f-right">$5,032</span></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-md-6 col-xl-3">
                                                <div class="card bg-c-pink order-card">
                                                    <div class="card-block">
                                                        <h6 class="m-b-20">시드머니</h6>
                                                        <h2 class="text-right"><i class="ti-wallet f-left"></i><span>\10,000,000</span></h2>
                                                        <p class="m-b-0">시작일<span class="f-right"><%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>

															<jsp:useBean id="toDay" class="java.util.Date" />
															
															<fmt:formatDate value="${toDay}" pattern="yyyy-MM-dd" /></span></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- order-card end -->
                                            
                                            
         		 <!-- 매수매도 거래 표 -->
         		 	
                                  <div class="col-lg-7 col-md-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h5>전체종목</h5>
                                            <span>use class <code>table</code> inside table element</span>
                                            <div class="card-header-right">
												<ul class="list-unstyled card-option">
													<li><i class="fa fa-chevron-left"></i></li>
													<li><i class="fa fa-window-maximize full-card"></i></li>
													<li><i class="fa fa-minus minimize-card"></i></li>
													<li><i class="fa fa-refresh reload-card"></i></li>
													<li><i class="fa fa-times close-card"></i></li>
												</ul>
											</div>

                                        </div>
                                        <div class="card-block table-border-style" style="width:100%; height:100%;">
                                            <div class="table-responsive">
                                                <table class="table">
                                                    <thead>
                                                        <tr>
                                                            
                                                            <th>종목코드</th>
                                                            <th>종목명</th>
                                                            <th>현재가</th>
                                                            <th>대비</th>
                                                            <th>시가총액</th>
                                                            <th>거래하기</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="getList">
													  <c:forEach items="${list }" var="stockVO" varStatus="loop">
													 
													    <tr>
															<%-- ${list[loop.index].stock_name } --%>
													      <th scope="row">
													      <c:out value="${stockVO.ticker}"/></th>
													      <td><c:out value="${stockVO.stock_name}"/></td>
													      <td><c:out value="${stockVO.end_p}"/></td>
													      <td><c:out value="${stockVO.compare}"/></td>
													      <td><c:out value="${stockVO.stocks_totalprice}"/></td>
													      <td><button data-toggle="modal" data-target="#buy"  onclick="test('${stockVO.stock_name}', '${stockVO.end_p}')">매수</button>
													      <button data-toggle="modal" data-target="#sell"  onclick="test2('${stockVO.stock_name}', '${stockVO.end_p}')">매도</button></td>
													    													    										      
													    </tr>
													   
													   </c:forEach> 
													  </tbody>
                                                </table>
                                            </div>
                                        </div>
                                    </div>
                                   </div>
           <!-- 상단 내용 끝 -->
                                    
                                 
                                    
									   <!-- Modal -->
										<div class="modal fade" id="buy" tabindex="-1" role="dialog"
											aria-labelledby="myModalLabel">
											<div class="modal-dialog" role="document">
												<div class="modal-content">
													<div class="modal-header tit-up">
														<button type="button" class="close" data-dismiss="modal"
															aria-hidden="true" >&times;</button>
														<h4 class="modal-title">거래하기</h4>
													</div>
													<div class="modal-body customer-box row">
														<div class="col-md-12">
															<div class="tab-content">
																<div class="tab-pane active" id="buy">
																	<form role="form" action="${pageContext.request.contextPath }/stock/playStock" class="form-horizontal" method="post" name="buyStock">
																		<div class="form-group">
																			<div class="col-sm-12">
																			
																				<table class="table table-bordered">
																				<tr>
																					<th><span>매수종목 </span></th>
																					<th>
																					<input type="text" name="stock_name" id="modal-stockname" readonly style="border:none" />
																					</th>
																				</tr>
																				<tr>
																					<th>수량: </th>
<!-- 																					<th><h4 name="count" id="count">1</h4><span>개</span><br> -->
																					<th>
																					<input type="text" name="count" id="stock" style="border:none"/>
																					<h4 id="count">1</h4>																				
																					<span>개</span><br>
																					<input type="button" value="-" onclick="minus()" />
																					<span><input type="button" value="+" onclick="plus()" /></span>
																					</th>
																				</tr>
																				<tr>
																					<th>현재가</th>
																					<th>
																					<input type="text" name="end_p" id="modal-stockprice" style="border:none; text-align:left" />
																					</th>
																			
																				</tr>
																				<tr>
																				 <th>총 금액</th>
																			
																				 <th><input type="text" name="input_cost" id="total" style="border:none" > </th>
																				
																				
																				</tr>
																				</table>
																				
																			</div>
																		</div>
																			
																		<div class="row">
																			<div class="col-sm-10">
																			<span>진행하시겠습니까? </span>
																				<button type="submit"
																					class="btn btn-light btn-radius btn-brd grd1">
																					매수</button>
									
																			</div>
																		</div>
																	</form>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									   <!-- Modal -->
										<div class="modal fade" id="sell" tabindex="-1" role="dialog"
											aria-labelledby="myModalLabel">
											<div class="modal-dialog" role="document">
												<div class="modal-content">
													<div class="modal-header tit-up">
														<button type="button" class="close" data-dismiss="modal"
															aria-hidden="true" >&times;</button>
														<h4 class="modal-title">거래하기</h4>
													</div>
													<div class="modal-body customer-box row">
														<div class="col-md-12">
															<div class="tab-content">
																<div class="tab-pane active" id="sell">
																	<form role="form" action="${pageContext.request.contextPath }/stock/playStock2" class="form-horizontal" method="post" name="sellStock">
																		<div class="form-group">
																			<div class="col-sm-12">
																			
																				<table class="table table-bordered">
																				<tr>
																					<th><span>매도종목 </span></th>
																					<th>
																					<input type="text" name="stock_name" id="modal-stockname_s" readonly style="border:none" />
																					</th>
																				</tr>
																				<tr>
																					<th>수량: </th>
<!-- 																					<th><h4 name="count" id="count">1</h4><span>개</span><br> -->
																					<th>
																					<input type="text" name="count" id="stock_s" style="border:none"/>
																					<h4 id="count_s">1</h4>																				
																					<span>개</span><br>
																					<input type="button" value="-" onclick="minus2()" />
																					<span><input type="button" value="+" onclick="plus2()" /></span>
																					</th>
																				</tr>
																				<tr>
																					<th>현재가</th>
																					<th>
																					<input type="text" name="end_p" id="modal-stockprice_s" style="border:none; text-align:left" />
																					</th>
																			
																				</tr>
																				<tr>
																				 <th>총 금액</th>
																			
																				 <th><input type="text" name="input_cost" id="total_s" style="border:none" > </th>
																				
																				
																				</tr>
																				</table>
																				
																			</div>
																		</div>
																			
																		<div class="row">
																			<div class="col-sm-10">
																			<span>진행하시겠습니까? </span>
																				<button type="submit"
																					class="btn btn-light btn-radius btn-brd grd1">
																					매도</button>
									
																			</div>
																		</div>
																	</form>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									                                            
                                            
                                            

                                            <!-- statustic and process start -->
                                         
                                       
                                            <!-- statustic and process end -->
					<!-- tabs card start -->
					
					<!-- 체결내역 기록 화면 -->
					
                                            <div class="col-lg-5 col-md-12">
                                             
                                            	<div class="card tabs-card">
                                                    <div class="card-block p-0">
                                                        <!-- Nav tabs -->
                                                        <ul class="nav nav-tabs md-tabs" role="tablist">
                                                            <li class="nav-item">
                                                                <a class="nav-link active" data-toggle="tab" href="#home3" role="tab"><i class="fa fa-home"></i>뉴스기사</a>
                                                                <div class="slide"></div>
                                                            </li>
                                                            <li class="nav-item">
                                                                <a class="nav-link" data-toggle="tab" href="#profile3" role="tab"><i class="fa fa-key"></i>Security</a>
                                                                <div class="slide"></div>
                                                            </li>
                                                            <li class="nav-item">
                                                                <a class="nav-link" data-toggle="tab" href="#messages3" role="tab"><i class="fa fa-play-circle"></i>Entertainment</a>
                                                                <div class="slide"></div>
                                                            </li>
                                                            <li class="nav-item">
                                                                <a class="nav-link" data-toggle="tab" href="#settings3" role="tab"><i class="fa fa-database"></i>Big Data</a>
                                                                <div class="slide"></div>
                                                            </li>
                                                        </ul>
                                                        <!-- Tab panes -->
                                                        
                                                        
                                                        
                                                        
                               <!-- newsssssssssssssss -->  
                                                       
                                                        <div class="tab-content card-block">
                                                        
                                                        
                                                        <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
														  <ol class="carousel-indicators">
														    <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
														    <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
														    <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
														  </ol>
														  <div class="carousel-inner">
														    <div class="carousel-item active">
														      <img class="d-block w-100" src="${ pageContext.request.contextPath }/resources/images/news01.png" alt="First slide">
														      <!-- <h3> 첫 번째 뉴스입니다.</h3> -->
														      
														    </div>
														    <div class="carousel-item">
														      <img class="d-block w-100" src="${ pageContext.request.contextPath }/resources/images/news02.png" alt="Second slide">
														      <h3> </h3>
														     
														    </div>
														    <div class="carousel-item">
														      <img class="d-block w-100" src="${ pageContext.request.contextPath }/resources/images/news03.png" alt="Third slide">
														      <h3> </h3>
														      
														    </div>
														  </div>
														  
														  <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
														    <span class="carousel-control-prev-icon"  aria-hidden="true"></span>
														    <span class="sr-only">Previous</span>
														  </a>
														  <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
														    <span class="carousel-control-next-icon" aria-hidden="true"></span>
														    <span class="sr-only">Next</span>
														  </a>
														</div>
                                                        
                                                        
                                                        
                                                        
                                                        
                                          					<!----------------->
                                               
                                              
                                                            <div class="tab-pane" id="profile3" role="tabpanel">

                                                                <div class="table-responsive">
                                                                    <table class="table">
                                                                        <tr>
                                                                            <th>Image</th>
                                                                            <th>Product Code</th>
                                                                            <th>Customer</th>
                                                                            <th>Purchased On</th>
                                                                            <th>Status</th>
                                                                            <th>Transaction ID</th>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><img src="assets/images/product/prod3.jpg" alt="prod img" class="img-fluid"></td>
                                                                            <td>PNG002653</td>
                                                                            <td>Eugine Turner</td>
                                                                            <td>04-01-2017</td>
                                                                            <td><span class="label label-danger">Delivered</span></td>
                                                                            <td>#7234417</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><img src="assets/images/product/prod4.jpg" alt="prod img" class="img-fluid"></td>
                                                                            <td>PNG002156</td>
                                                                            <td>Jacqueline Howell</td>
                                                                            <td>03-01-2017</td>
                                                                            <td><span class="label label-warning">Pending</span></td>
                                                                            <td>#7234454</td>
                                                                        </tr>
                                                                    </table>
                                                                </div>
                                                                <div class="text-center">
                                                                    <button class="btn btn-outline-primary btn-round btn-sm">Load More</button>
                                                                </div>
                                                            </div>
                                                            <div class="tab-pane" id="messages3" role="tabpanel">

                                                                <div class="table-responsive">
                                                                    <table class="table">
                                                                        <tr>
                                                                            <th>Image</th>
                                                                            <th>Product Code</th>
                                                                            <th>Customer</th>
                                                                            <th>Purchased On</th>
                                                                            <th>Status</th>
                                                                            <th>Transaction ID</th>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><img src="assets/images/product/prod1.jpg" alt="prod img" class="img-fluid"></td>
                                                                            <td>PNG002413</td>
                                                                            <td>Jane Elliott</td>
                                                                            <td>06-01-2017</td>
                                                                            <td><span class="label label-primary">Shipping</span></td>
                                                                            <td>#7234421</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><img src="assets/images/product/prod4.jpg" alt="prod img" class="img-fluid"></td>
                                                                            <td>PNG002156</td>
                                                                            <td>Jacqueline Howell</td>
                                                                            <td>03-01-2017</td>
                                                                            <td><span class="label label-warning">Pending</span></td>
                                                                            <td>#7234454</td>
                                                                        </tr>
                                                                    </table>
                                                                </div>
                                                                <div class="text-center">
                                                                    <button class="btn btn-outline-primary btn-round btn-sm">Load More</button>
                                                                </div>
                                                            </div>
                                                            <div class="tab-pane" id="settings3" role="tabpanel">

                                                                <div class="table-responsive">
                                                                    <table class="table">
                                                                        <tr>
                                                                            <th>Image</th>
                                                                            <th>Product Code</th>
                                                                            <th>Customer</th>
                                                                            <th>Purchased On</th>
                                                                            <th>Status</th>
                                                                            <th>Transaction ID</th>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><img src="assets/images/product/prod1.jpg" alt="prod img" class="img-fluid"></td>
                                                                            <td>PNG002413</td>
                                                                            <td>Jane Elliott</td>
                                                                            <td>06-01-2017</td>
                                                                            <td><span class="label label-primary">Shipping</span></td>
                                                                            <td>#7234421</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><img src="assets/images/product/prod2.jpg" alt="prod img" class="img-fluid"></td>
                                                                            <td>PNG002344</td>
                                                                            <td>John Deo</td>
                                                                            <td>05-01-2017</td>
                                                                            <td><span class="label label-danger">Faild</span></td>
                                                                            <td>#7234486</td>
                                                                        </tr>
                                                                    </table>
                                                                </div>
                                                                <div class="text-center">
                                                                    <button class="btn btn-outline-primary btn-round btn-sm">Load More</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                   
                                                </div>
                                                
                                                
              <!-------------------------------------------------체결내역----------------------------------------------  -->
              
                                                <div class="card tabs-card">
                                                    <div class="card-block p-0">
                                                        <!-- Nav tabs -->
                                                        <ul class="nav nav-tabs md-tabs" role="tablist">
                                                            <li class="nav-item">
                                                                <a class="nav-link active" data-toggle="tab" href="#home3" role="tab"><i class="fa fa-home"></i>체결내역</a>
                                                                <div class="slide"></div>
                                                            </li>
                                                            <li class="nav-item">
                                                                <a class="nav-link" data-toggle="tab" href="#profile3" role="tab"><i class="fa fa-key"></i>잔고</a>
                                                                <div class="slide"></div>
                                                            </li>
                                                            <li class="nav-item">
                                                                <a class="nav-link" data-toggle="tab" href="#messages3" role="tab"><i class="fa fa-play-circle"></i>Entertainment</a>
                                                                <div class="slide"></div>
                                                            </li>
                                                            <li class="nav-item">
                                                                <a class="nav-link" data-toggle="tab" href="#settings3" role="tab"><i class="fa fa-database"></i>Big Data</a>
                                                                <div class="slide"></div>
                                                            </li>
                                                        </ul>
                                                        <!-- Tab panes -->
                                                       
                                                        <div class="tab-content card-block">
                                                            <div class="tab-pane active" id="home3" role="tabpanel">

                                                                <div class="table-responsive">
                                                                    <table class="table">
                                                                    	<thead>
                                                                        <tr>
                                                                            <th>거래번호</th>
                                                                            <th>종목명</th>
                                                                            <th>구분</th>
                                                                            <th>가격</th>
                                                                            <th>수량</th>
                                                                            <th>상태</th>
                                                                        </tr>
                                                                        </thead>
                                                                        <tbody>
                                                                        
                                                                        <c:forEach items="${mystock }" var="mystockVO" varStatus="loop">
                                                                        <tr>
                                                                            
                                                                            <td><c:out value="${mystockVO.log_no}"/></td>
                                                                            <td><c:out value="${mystockVO.stock_name}"/></td>
                                                                            <td><c:out value="${mystockVO.state}"/></td>
                                                                            <td><c:out value="${mystockVO.end_p}"/></td>
                                                                            <td><c:out value="${mystockVO.count}"/></td>
                                                                            <td><span class="label label-success">체결</span></td>
                                                                            
                                                                        </tr>
                                                                        </c:forEach>
                                                                        <c:forEach items="${mystock2}" var="mystockVO2" varStatus="loop">
                                                                        <tr>
                                                                            
                                                                            <td><c:out value="${mystockVO2.log_no}"/></td>
                                                                            <td><c:out value="${mystockVO2.stock_name}"/></td>
                                                                            <td><c:out value="${mystockVO2.state}"/></td>
                                                                            <td><c:out value="${mystockVO2.end_p}"/></td>
                                                                            <td><c:out value="${mystockVO2.count}"/></td>
                                                                            <td><span class="label label-success">체결</span></td>
                                                                            
                                                                        </tr>
                                                                        </c:forEach>
                                                                        </tbody>
                                                                        
                                                                    </table>
                                                                </div>
                                                                <div class="text-center">
                                                                    <button class="btn btn-outline-primary btn-round btn-sm">Load More</button>
                                                                </div>
                                                            </div>
                                                            
                                      <!--  체결내역 끝 -->
                                              
                                              
                                              
                                      <!--  다른 항목 베너이동: 잔고페이지 ( 종목명, 수량, 매입단가 평가금액 평가손익-->
                                                            <div class="tab-pane" id="profile3" role="tabpanel">

                                                                <div class="table-responsive">
                                                                    <table class="table">
                                                                        <tr>
                                                                            <th>Image</th>
                                                                            <th>Product Code</th>
                                                                            <th>Customer</th>
                                                                            <th>Purchased On</th>
                                                                            <th>Status</th>
                                                                            <th>Transaction ID</th>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><img src="assets/images/product/prod3.jpg" alt="prod img" class="img-fluid"></td>
                                                                            <td>PNG002653</td>
                                                                            <td>Eugine Turner</td>
                                                                            <td>04-01-2017</td>
                                                                            <td><span class="label label-danger">Delivered</span></td>
                                                                            <td>#7234417</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><img src="assets/images/product/prod4.jpg" alt="prod img" class="img-fluid"></td>
                                                                            <td>PNG002156</td>
                                                                            <td>Jacqueline Howell</td>
                                                                            <td>03-01-2017</td>
                                                                            <td><span class="label label-warning">Pending</span></td>
                                                                            <td>#7234454</td>
                                                                        </tr>
                                                                    </table>
                                                                </div>
                                                                <div class="text-center">
                                                                    <button class="btn btn-outline-primary btn-round btn-sm">Load More</button>
                                                                </div>
                                                            </div>
                                                            <div class="tab-pane" id="messages3" role="tabpanel">

                                                                <div class="table-responsive">
                                                                    <table class="table">
                                                                        <tr>
                                                                            <th>Image</th>
                                                                            <th>Product Code</th>
                                                                            <th>Customer</th>
                                                                            <th>Purchased On</th>
                                                                            <th>Status</th>
                                                                            <th>Transaction ID</th>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><img src="assets/images/product/prod1.jpg" alt="prod img" class="img-fluid"></td>
                                                                            <td>PNG002413</td>
                                                                            <td>Jane Elliott</td>
                                                                            <td>06-01-2017</td>
                                                                            <td><span class="label label-primary">Shipping</span></td>
                                                                            <td>#7234421</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><img src="assets/images/product/prod4.jpg" alt="prod img" class="img-fluid"></td>
                                                                            <td>PNG002156</td>
                                                                            <td>Jacqueline Howell</td>
                                                                            <td>03-01-2017</td>
                                                                            <td><span class="label label-warning">Pending</span></td>
                                                                            <td>#7234454</td>
                                                                        </tr>
                                                                    </table>
                                                                </div>
                                                                <div class="text-center">
                                                                    <button class="btn btn-outline-primary btn-round btn-sm">Load More</button>
                                                                </div>
                                                            </div>
                                                            <div class="tab-pane" id="settings3" role="tabpanel">

                                                                <div class="table-responsive">
                                                                    <table class="table">
                                                                        <tr>
                                                                            <th>Image</th>
                                                                            <th>Product Code</th>
                                                                            <th>Customer</th>
                                                                            <th>Purchased On</th>
                                                                            <th>Status</th>
                                                                            <th>Transaction ID</th>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><img src="assets/images/product/prod1.jpg" alt="prod img" class="img-fluid"></td>
                                                                            <td>PNG002413</td>
                                                                            <td>Jane Elliott</td>
                                                                            <td>06-01-2017</td>
                                                                            <td><span class="label label-primary">Shipping</span></td>
                                                                            <td>#7234421</td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td><img src="assets/images/product/prod2.jpg" alt="prod img" class="img-fluid"></td>
                                                                            <td>PNG002344</td>
                                                                            <td>John Deo</td>
                                                                            <td>05-01-2017</td>
                                                                            <td><span class="label label-danger">Faild</span></td>
                                                                            <td>#7234486</td>
                                                                        </tr>
                                                                    </table>
                                                                </div>
                                                                <div class="text-center">
                                                                    <button class="btn btn-outline-primary btn-round btn-sm">Load More</button>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                   
                                                </div>
                                                
                         					
                                                
                                                
                                                
                                                
                                              
                                            </div>
                                            
                                       
                                            <!-- tabs card end -->

                                            <!-- social statustic start -->
                                            
                                           
                                            
                                            <!-- social statustic end -->

                                            <!-- users visite and profile start -->
                                           
                                            
                                            
                                            <!-- users visite and profile end -->

                                        <!-- </div> -->
                                    </div>

                                    <div id="styleSelector">

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        </div>
        </div>
      

        <!-- Warning Section Starts -->
        <!-- Older IE warning message -->
    <!--[if lt IE 9]>
<div class="ie-warning">
    <h1>Warning!!</h1>
    <p>You are using an outdated version of Internet Explorer, please upgrade <br/>to any of the following web browsers to access this website.</p>
    <div class="iew-container">
        <ul class="iew-download">
            <li>
                <a href="http://www.google.com/chrome/">
                    <img src="assets/images/browser/chrome.png" alt="Chrome">
                    <div>Chrome</div>
                </a>
            </li>
            <li>
                <a href="https://www.mozilla.org/en-US/firefox/new/">
                    <img src="assets/images/browser/firefox.png" alt="Firefox">
                    <div>Firefox</div>
                </a>
            </li>
            <li>
                <a href="http://www.opera.com">
                    <img src="assets/images/browser/opera.png" alt="Opera">
                    <div>Opera</div>
                </a>
            </li>
            <li>
                <a href="https://www.apple.com/safari/">
                    <img src="assets/images/browser/safari.png" alt="Safari">
                    <div>Safari</div>
                </a>
            </li>
            <li>
                <a href="http://windows.microsoft.com/en-us/internet-explorer/download-ie">
                    <img src="assets/images/browser/ie.png" alt="">
                    <div>IE (9 & above)</div>
                </a>
            </li>
        </ul>
    </div>
    <p>Sorry for the inconvenience!</p>
</div>
<![endif]-->
<!-- Warning Section Ends -->
<!-- Required Jquery -->
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery-ui/jquery-ui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/popper.js/popper.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/bootstrap/js/bootstrap.min.js"></script>
<!-- jquery slimscroll js -->
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/jquery-slimscroll/jquery.slimscroll.js"></script>
<!-- modernizr js -->
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/modernizr/modernizr.js"></script>
<!-- am chart -->
<script src="${pageContext.request.contextPath }/assets/pages/widget/amchart/amcharts.min.js"></script>
<script src="${pageContext.request.contextPath }/assets/pages/widget/amchart/serial.min.js"></script>
<!-- Chart js -->
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/chart.js/Chart.js"></script>
<!-- Todo js -->
<script type="text/javascript " src="${pageContext.request.contextPath }/assets/pages/todo/todo.js "></script>
<!-- Custom js -->

<script type="text/javascript" src="${pageContext.request.contextPath }/resources/js/next-stage.js"></script>


<script type="text/javascript" src="${pageContext.request.contextPath }/assets/pages/dashboard/custom-dashboard.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/assets/js/script.js"></script>
<script type="text/javascript " src="${pageContext.request.contextPath }/assets/js/SmoothScroll.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/pcoded.min.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/vartical-demo.js"></script>
<script src="${pageContext.request.contextPath }/assets/js/jquery.mCustomScrollbar.concat.min.js"></script>
<script>
 function test(name, end){
	 console.log(name, end)
	 $("#modal-stockname").text(name)
	 $("#modal-stockname").val(name)
	 $("#modal-stockprice").text(end)
	 $("#modal-stockprice").val(end)
	 $("#modal-stockprice").attr('title',end)
	 $("#cost").text(cost)
	 
 }
 
 var notified="";
 $(document).ready(function(){
 	$('#buy').on('show.bs.modal',function(event){
 		
 		notified = $(event.realtedTarget).data('notified');
 		console.log(notified)
 	});
 	
 });
 
 $('#buy').on('hidden.bs.modal', function (e) {
	    console.log('modal close');
	  $(this).find('form')[0].reset();
	});
 

</script>

<script type="text/javascript">
function test2(name, end){
	 console.log(name, end)
	 $("#modal-stockname_s").text(name)
	 $("#modal-stockname_s").val(name)
	 $("#modal-stockprice_s").text(end)
	 $("#modal-stockprice_s").val(end)
	 $("#modal-stockprice_s").attr('title',end)
	 $("#cost_s").text(cost)
	 
}

var notified="";
$(document).ready(function(){
	$('#sell').on('show.bs.modal',function(event){
		
		notified = $(event.realtedTarget).data('notified');
		console.log(notified)
	});
	
});

$('#sell').on('hidden.bs.modal', function (e) {
	    console.log('modal close');
	  $(this).find('form')[0].reset();
	});

</script>
</body>


</html>
