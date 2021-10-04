<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="/WEB-INF/include/head.jsp" />


	<a href="#" data-toggle="modal" data-target="#buy"> 매수</a>

	<script type="text/javascript">
		function plus() {
			var td = document.getElementById("count");
			var n = Number(td.innerHTML);
			td.innerHTML = n + 1;
		}
		function minus() {
			var td = document.getElementById("count");
			var n = Number(td.innerHTML);
			td.innerHTML = n + 1;
		}
	</script>




	<!-- Modal -->
	<div class="modal fade" id="buy" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header tit-up">
					<button type="button" class="close" data-dismiss="modal"
						aria-hidden="true">&times;</button>
					<h4 class="modal-title">거래하기</h4>
				</div>
				<div class="modal-body customer-box row">
					<div class="col-md-12">



						<!-- Tab panes -->
						<div class="tab-content">
							<div class="tab-pane active" id="buy">
								<form role="form" class="form-horizontal">
									<div class="form-group">
										<div class="col-sm-12">
											<h3>매수종목:</h3>
											<br> 
											<p>개수:</p><h4 id="count">0</h4>
											<input type="button" value="-" onclick="minus()" />
											<input type="button" value="+" onclick="plus()" />
											

										</div>
									</div>

									<div class="row">
										<div class="col-sm-10">
											<button type="submit"
												class="btn btn-light btn-radius btn-brd grd1">
												Submit</button>

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
</body>

<!-- ALL JS FILES -->
<script src="${ pageContext.request.contextPath }/resources/js/all.js"></script>
<!-- ALL PLUGINS -->
<script
	src="${ pageContext.request.contextPath }/resources/js/custom.js"></script>
</html>