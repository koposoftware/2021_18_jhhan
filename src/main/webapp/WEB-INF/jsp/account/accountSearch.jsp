<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<head>
<link ="stylesheet" type="text/css" href="path/to/font-awesome/css/font-awesome.min.css">
<!-- MDBootstrap Datatables  -->
<link href="css/addons/datatables.min.css" rel="stylesheet">
<!-- MDBootstrap Datatables  -->
<script type="text/javascript" src="js/addons/datatables.min.js"></script>

<!--테이블관련  -->
 <!-- DATA TABLE CSS -->
    <link href="${pageContext.request.contextPath}/chart/css/table.css" rel="stylesheet">

<!-- 필요함 -->
    <script type="text/javascript" src="${pageContext.request.contextPath}/chart/footable/js/footable.js"></script>    
   
    <script type="text/javascript" src="${pageContext.request.contextPath}/chart/footable/js/footable.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/chart/footable/css/footable.bootstrap.css"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/chart/footable/css/footable.bootstrap.css"></script>
  			<script type="text/javascript" charset="utf-8">
  			    $(document).ready(function () {
  			        $('#dt1').dataTable();
  			    });
	</script>
	
	
	<!-- 다안됨 -->
<jsp:include page="/WEB-INF/include/head.jsp" />
</head>



<body class="host_version">

	<!-- login -->


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
			<h1 style="font-size:500%">계좌조회<span class="m_1"></span></h1>
		</div>
	</div>

	


	

	<div id="overviews" class="section wb">
		<div class="container">
			<div class="section-title row text-center">
				<div class="col-md-8 col-md-offset-2">
					<h3><c:out value="${userVO.name}" />님 보유계좌</h3>
					
					<p class="lead">계좌목록</p>
				</div>
			</div>
			<!-- end title -->

			<hr class="invis">

		<c:forEach items="${bankVO}" var="bank" varStatus="loop">
			<div class="row"  style="float:left; padding:20px">
				<div class="col-md-4 col-sm-6 col-xs-12">
				<div class="card bg-c-green order-card" style="width: 350px;">
					<div class="card-block" style="height: 100px">
					
						<h4 class="m-b-20" id="" style="font-size: 15px"><c:out value="${bank.bank_type}" /> 
						      <span style="color:white; font-size: 18px"><c:out value="${bank.bank_id}" /></span></h4>
						<h2 class="text-right">
							<i class="fa fa-credit-card-alt" aria-hidden="true"></i>
							<fmt:formatNumber value="${bank.bank_id_bal}" pattern="#,###,###"/>	 
						 
						</h2>
						
						<p class="m-b-0">
							<span class="f-right"><c:out value="${bank.bank_id_date}" /></span>
						</p>
					</div>
				</div>
			</div>
			</div>
		</c:forEach>
		</div>
					<!-- end icon-wrapper -->
				
				<!-- end col -->

					
					
					
					
					<!-- end icon-wrapper -->
				</div>
				<!-- end col -->

		
				<!-- end col -->
		
	<!-- end section -->

	<div id="hosting" class="section wb"
		style="background: rgb(248, 248, 248)">
		<div class="container">
			<div class="section-title text-center">
				<h3>이체내역 조회</h3>
				<p class="lead">
					<c:out value="${userVO.name }"></c:out>님의<br>
					최근 이체내역입니다.
				</p>
			</div>
			<!-- end title -->

			<div class="row dev-list text-center">

				<div class="display"
					data-wow-duration="1s" data-wow-delay="0.4s">
					<div class="widget clearfix">
						<img src="uploads/hosting_02.jpg" alt="" class="img-responsive">
						<div>
                   
                      <input type = "submit" value="검색" class="btn btn-secondary" id="search" style="float:right; margin:5px">
                      <input type = "text" placeholder="검색어를 입력하세요" id="keyword" name="name" style="float:right;margin:10px; height:30px; width:200px; ">
                      <select style="float:right; margin:5px;height:30px;margin-top:9px;font-size: 14px ">
						<option selected>날짜</option>
						<option>이름</option>
						<option>학교</option>
						<option>아이디</option>
					  </select>
                      </div>
						<!-- end title -->
						
						<hr>

						<div class="footer-social">
						
							<table class="table" id="dt1" >
							  <thead style="text-align: center">
							    <tr>
							      <th scope="col" style="font-size: 15px; text-align: center">통장명</th>
							      <th scope="col" style="font-size: 15px; text-align: center">내계좌</th>
							      <th scope="col" style="font-size: 15px; text-align: center">이체금액</th>
							      <th scope="col" style="font-size: 15px; text-align: center">상대계좌</th>
							      <th scope="col" style="font-size: 15px; text-align: center">입출금여부</th>
							      <th scope="col" style="font-size: 15px; text-align: center">잔액</th>
							      <th scope="col" style="font-size: 15px; text-align: center">일시</th>
							    </tr>
							  </thead>
							  <c:forEach items="${transVO}" var="trans" varStatus="loop">
							  <tbody>
							    <tr>
							      
							      <td style="font-size: 14px;"><c:out value="${trans.bank_type}" /></td>
							      <td style="font-size: 14px;"><c:out value="${trans.bank_id}" /></td>
							      <td style="font-size: 14px;"><c:out value="${trans.trans_money}" /></td>
							      <td style="font-size: 14px;"><c:out value="${trans.your_bank_id}" /></td>
							      <td style="font-size: 14px; font-weight: bold;"><c:out value="${trans.trans_info}" /></td>
							      <td style="font-size: 14px;"><c:out value="${trans.bank_id_bal}" /></td>
							      <td style="font-size: 14px;"><c:out value="${trans.trans_date}" /></td>
							    </tr>
							 </tbody>
							 </c:forEach>
							</table>
						</div>
						<hr>

						<a href="#pricing" data-scroll
							class="btn btn-light grd1 effect-1 btn-radius btn-brd">이체바로가기</a>

					</div>
					<!--widget -->
				</div>
				<!-- end col -->

				
				<!-- end col -->
			</div>
			<!-- end row -->
		</div>
		<!-- end container -->
	</div>
	<!-- end section -->

	

	
	
		

      <!-- CONTENT -->
	 </div> <!-- /container -->
		<!-- end container -->





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