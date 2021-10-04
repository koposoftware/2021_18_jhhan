<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 
<!DOCTYPE html>
<html lang="en">

<!-- HEAD -->
<jsp:include page="/WEB-INF/include/head.jsp"/>

  <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,500&amp;subset=latin-ext" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<style>
.card-custom {
  overflow: hidden;
  min-height: 450px;
  box-shadow: 0 0 15px rgba(10, 10, 10, 0.3);
}

.card-custom-img {
  height: 200px;
  min-height: 200px;
  background-repeat: no-repeat;
  background-size: cover;
  background-position: center;
  border-color: inherit;
}

/* First border-left-width setting is a fallback */
.card-custom-img::after {
  position: absolute;
  content: '';
  top: 161px;
  left: 0;
  width: 0;
  height: 0;
  border-style: solid;
  border-top-width: 40px;
  border-right-width: 0;
  border-bottom-width: 0;
  border-left-width: 545px;
  border-left-width: calc(575px - 5vw);
  border-top-color: transparent;
  border-right-color: transparent;
  border-bottom-color: transparent;
  border-left-color: inherit;
}

.card-custom-avatar img {
  border-radius: 50%;
  box-shadow: 0 0 15px rgba(10, 10, 10, 0.3);
  position: absolute;
  top: 100px;
  left: 1.25rem;
  width: 100px;
  height: 100px;
}




</style>


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
			<h1>금융 MBTI<span class="m_1">나만의 경제성향 찾기!</span></h1>
		</div>
	</div>
	
    <div id="pricing-box" class="section wb">
        <div class="container">
			<div class="">
				<div class="grid1">
					<span>제<small>1회</small></span>
					<div class="price-tit text-center">
						<h2><c:out value="${userVO.name}"/>님의</h2>
						<p>금융성향테스트 결과입니다</p>
					</div>
					<div class="para">
					<div style="display:center">
						<h1 style="font-weight:bold;text-align: center">맞은 개수: 총 3개</h1>
						
						<img src="${pageContext.request.contextPath }/resources/images/mbti01.png" style="width:450px; height:600px; margin-left: 320px">
						
					</div>
					<div class="sign text-center pricing-table-sign-up">
					<h1 style="text-align: center">친구에게 공유하기!</h1>
					</div>
				</div>
			</div>
			
			
			<div class="clear"> </div>
		</div>
    </div><!-- end section -->
	</div>
	
	

  

<style>
  html {
    font-size: 14px;
  }
  
  .container {
    font-size: 14px;
    color: #666666;
    font-family: "Open Sans";
  }
</style>


  <div class="container">
    <div class="row pt-5 m-auto">
      <div class="">
       <hr>
     <h1 style="text-align: center; color:#008485; font-weight: bold">다른 유형 살펴보기!</h1>
     
     <hr>
	<div style="float:left;margin-left:100px">
        <img src="${pageContext.request.contextPath }/resources/images/mbti02.png" style="width:450px; height:600px; float:left; display: flex">
    </div> 
      <div  style="float:left; margin-left:10px">
        <img src="${pageContext.request.contextPath }/resources/images/mbti03.png" style="width:450px; height:600px; display: flex">
        </div>
        <div style="float:left; margin-left:100px;margin-top: 10px">
        <img src="${pageContext.request.contextPath }/resources/images/mbti04.png" style="width:450px; height:600px; ">
        </div>
        <div style="float:left; margin-left:10px;margin-top: 10px">
        <img src="${pageContext.request.contextPath }/resources/images/mbti05.png" style="width:450px; height:600px; ">
		</div>

      </div>
    </div>
  </div>


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	

    <div class="section lb">
        <div class="container">
            <div class="section-title text-center">
                <h3>Ready to get started?</h3>
				<div class="dmoain-pricing">
					<div class="table-responsive-sm">
						<table>
							<thead>
								<tr class="domain-head">
									<th scope="col">
										Domain Name
									</th>
									<th scope="col">
										Registration Pricing
									</th>
									<th scope="col">
										Renewal Pricing
									</th>
									<th scope="col">
										Transfer Pricing
									</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td data-label="DOMAIN NAME">.com</td>
									<td data-label="registration pricing">15.00 / yr</td>
									<td data-label="renewal pricing">$30 / yr</td>
									<td data-label="transfer-price">$45.00</td>
								</tr>
								<tr>
									<td data-label="DOMAIN NAME">.net</td>
									<td data-label="registration pricing">15.00 / yr</td>
									<td data-label="renewal pricing">$20 / yr</td>
									<td data-label="transfer-price">$45.00</td>
								</tr>
								<tr>
									<td data-label="DOMAIN NAME">.org</td>
									<td data-label="registration pricing">15.00 / yr</td>
									<td data-label="renewal pricing">$19 / yr</td>
									<td data-label="transfer-price">$45.00</td>
								</tr>
								<tr>
									<td data-label="DOMAIN NAME">.in</td>
									<td data-label="registration pricing">15.00 / yr</td>
									<td data-label="renewal pricing">$18 / yr</td>
									<td data-label="transfer-price">$45.00</td>
								</tr>
								<tr>
									<td data-label="DOMAIN NAME">.biz</td>
									<td data-label="registration pricing">15.00 / yr</td>
									<td data-label="renewal pricing">$17 / yr</td>
									<td data-label="transfer-price">$45.00</td>
								</tr>
								<tr>
									<td data-label="Acount">.info</td>
									<td data-label="registration pricing">15.00 / yr</td>
									<td data-label="renewal pricing">$16 / yr</td>
									<td data-label="transfer-price">$45.00</td>
								</tr>
								<tr>
									<td data-label="DOMAIN NAME">.co.uk</td>
									<td data-label="registration pricing">15.00 / yr</td>
									<td data-label="renewal pricing">$15 / yr</td>
									<td data-label="transfer-price">$45.00</td>
								</tr>
								<tr>
									<td data-label="DOMAIN NAME">.name</td>
									<td data-label="registration pricing">15.00 / yr</td>
									<td data-label="renewal pricing">$14 / yr</td>
									<td data-label="transfer-price">$45.00</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
            </div><!-- end title -->
        </div><!-- end container -->
    </div><!-- end section -->

    
<!-- footer -->
  <jsp:include page="/WEB-INF/include/footer.jsp"></jsp:include>

</body>
</html>