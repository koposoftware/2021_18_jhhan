<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
 <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

 
<!DOCTYPE html>
<html lang="en">

<!-- HEAD -->
<jsp:include page="/WEB-INF/include/head.jsp"/>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/rank/css/style.css">


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
			<h1>나의 순위는??<span class="m_1">주식투자 랭킹비교</span></h1>
		</div>
	</div>
	
    
    
   
	
</head>
<body>
	<section class="main-content">
		<div class="container">
			<h1>Top 3</h1>
			<br>
			<br>

			<div class="row">
				<div class="col-sm-4">
					<div class="leaderboard-card">
						<div class="leaderboard-card__top">
							<h3 class="text-center"></h3>
						</div>
						<div class="leaderboard-card__body">
							<div class="text-center">
								<img src="${pageContext.request.contextPath }/resources/images/second.png" style="width:45%; height:45%">
								<h3 style="font-weight: bold" class="mb-0"><c:out value="${rank[1].name}"/></h3>
								<p class="text-muted mb-0"><c:out value="${rank[1].id}"/></p>
								<hr>
								<div class="d-flex justify-content-between align-items-center">
									<span> <i class="fas fa-wallet"></i><fmt:formatNumber value="${rank[1].stock_bal}" pattern="#,###,###"/></span><br>
									<button class="btn btn-outline-success btn-sm">Congratulate</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="leaderboard-card leaderboard-card--first">
						<div class="leaderboard-card__top">
							<h1 class="text-center"></h1>
						</div>
						<div class="leaderboard-card__body">
							<div class="text-center">
								<img src="${pageContext.request.contextPath }/resources/images/first.png" style="width:70%; height:70%">
								<h3 style="font-weight: bold" class="mb-0"><c:out value="${rank[0].name}"/></h3>
								<p class="text-muted mb-0"><c:out value="${rank[0].id}"/></p>
								<hr>
								<div class="d-flex justify-content-between align-items-center">
									<span><fmt:formatNumber value="${rank[0].stock_bal}" pattern="#,###,###"/>
									</span><br>
									<button class="btn btn-outline-success btn-sm">Congratulate</button>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-sm-4">
					<div class="leaderboard-card">
						<div class="leaderboard-card__top">
							<h3 class="text-center"></h3>
						</div>
						<div class="leaderboard-card__body">
							<div class="text-center">
								<img src="${pageContext.request.contextPath }/resources/images/third.png" style="width:38%; height:38%">
								<h3 style="font-weight: bold" class="mb-0"><c:out value="${rank[2].name}"/></h3>
								<p class="text-muted mb-0"><c:out value="${rank[2].id}"/></p>
								<hr>
								<div class="d-flex justify-content-between align-items-center">
									<span><fmt:formatNumber value="${rank[2].stock_bal}" pattern="#,###,###"/></span><br>
									<button class="btn btn-outline-success btn-sm">Congratulate</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>


			<h4>All Users</h4>

			<table class="table" style=" font-size:15px">
				<thead>
					<tr>
						<th style=" font-size:20px; font-weight: bold; color: #008485">순위</th>
						<th style=" font-size:20px; font-weight: bold; color: #008485">이름</th>
						<th style=" font-size:20px; font-weight: bold; color: #008485">아이디</th>
						<th style=" font-size:20px; font-weight: bold; color: #008485">잔액</th>
						<th style=" font-size:20px; font-weight: bold; color: #008485">계좌번호</th>
					</tr>
				</thead>
				
				<tbody>
				  <c:forEach items="${rank}" var="list" varStatus="loop">
					<tr>
						<td>
							<div class="d-flex align-items-center">
								
								<div class="user-info__basic">
									<h2 class="mb-0"><i class="fa fa-trophy" aria-hidden="true" style="color:gold"></i>  <c:out value="${list.rank}"/></h2>
									<p class="text-muted mb-0"><c:out value="${list.group}"/></p>
								</div>
							</div>
						</td>
						<td>
							<div class="d-flex align-items-baseline">
								<h3 class="mr-1"><i class="fa fa-user" aria-hidden="true" style="color:#008485"></i>  <c:out value="${list.name}"/></h3><small class="text-success"></small>
							</div>
						</td>
						<td><h3><c:out value="${list.id}"/></h3></td>
						<td><h3><fmt:formatNumber value="${list.stock_bal}" pattern="#,###,###"/></h3></td>
						<td>
							<h3><c:out value="${list.stock_acc}"/></h3>
						</td>
					</tr>
				</c:forEach>
				
				<table class="table" style="border:3px solid #008485; border-style:outset">
			<!-- 	<span style="vertical-align :center;"><i class="fa fa-circle" aria-hidden="true" ></i></span> -->
				<tr>
						<td>
							<div class="d-flex align-items-center" style="boarder:5px solid red">
								
								<div class="user-info__basic">
									<h1 class="mb-0"><i class="fa fa-trophy" aria-hidden="true" style="color:gold"></i>  5<c:out value=""/></h1>
									<p class="text-muted mb-0"><c:out value=""/></p>
								</div>
							</div>
						</td>
						<td>
							<div class="d-flex align-items-baseline">
								<h1 class="mr-1"> <i class="fa fa-user" aria-hidden="true" style="color:#008485"></i><c:out value="${rank[4].name}"/><c:out value=""/></h1><small class="text-success"></small>
							</div>
						</td>
						<td style=" font-size:20px; font-weight: bold;"><c:out value=""/>s20101</td>
						<td><c:out value=""/></td>
						<td style=" font-size:20px; font-weight: bold;">
							
							<fmt:formatNumber value="${rank[4].stock_bal}" pattern="#,###,###"/><c:out value=""/>
						</td>
						<td style=" font-size:20px; font-weight: bold;">
							11180435051934<c:out value=""/>
						</td>
					</tr>
					</table>
				</tbody>
			</table>
		</div>
	</section>
	
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	
	<script src="https://use.fontawesome.com/73d95e52a3.js"></script>

    
    
    
    
    
    
    
    
    
    
    
<!-- footer -->
  <jsp:include page="/WEB-INF/include/footer.jsp"></jsp:include>

</body>
</html>