<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

 <header class="header header_style_01">
        <nav class="megamenu navbar navbar-default">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="${ pageContext.request.contextPath }/"><img src="${ pageContext.request.contextPath }/resources/images/logos/hanaya.png" style="width:140px; " ></a>
                </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a class="active" href="${ pageContext.request.contextPath }/index">Home</a></li>
                       
                        <li class="dropdown">
						   <a href="${pageContext.request.contextPath }/accountMain" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">금융거래 <span class="navbar-collapse collapse"></span></a>
						    <ul class="dropdown-menu" role="menu">
						       <li><a href="${pageContext.request.contextPath }/account/accountMain">계좌개설</a></li>
						       <li><a href="${pageContext.request.contextPath }/account/accountSearch">조회</a></li>
						       <li><a href="${pageContext.request.contextPath }/account/accountTrans">이체</a></li>
						    </ul>
						</li>
                        <li class="dropdown">
                        	<a href="${pageContext.request.contextPath }/stock/stockMain" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">주식<span class="navbar-collapse collapse"></span></a>
	                        	<ul class="dropdown-menu" role="menu">
							       <li><a href="${pageContext.request.contextPath }/stock/stockMain">개설</a></li>
							       <li><a href="${pageContext.request.contextPath }/">조회</a></li>
							       <li><a href="${pageContext.request.contextPath }/stock/playStock">투자시작</a></li>
							    </ul>
                        </li>
                        <li><a href="${pageContext.request.contextPath }/member/rank">친구순위</a></li>
                        <li class="dropdown">
                        	<a href="${pageContext.request.contextPath }/member/mbti" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">유퀴즈?!<span class="navbar-collapse collapse"></span></a>
                        		<ul class="dropdown-menu" role="menu">
                        		<li><a href="${pageContext.request.contextPath }/member/quiz">퀴즈시작</a></li>
                        		<li><a href="${pageContext.request.contextPath }/member/mbti">나의 결과</a></li>
                        		</ul>
                        </li>
                        <li><a href="${pageContext.request.contextPath }/media/hanaTV">하나티비</a></li>
                    
                        <li><a href="http://www.bok.or.kr/portal/bbs/B0000273/list.do?menuNo=201037">머니뉴스</a></li>
                        
                       
                        
                    </ul>
                     <div class="nav navbar-nav navbar-right">
                    
						<select class="lang-select">
							<option>한국어</option>
							<option>중국어</option>
							<option>영어</option>
						</select>
					</div>
					
                     
                                        <c:if test="${empty userVO }">
	                    <ul class="nav navbar-nav navbar-right">
	                        <li><a class="btn-light btn-radius btn-brd log" href="${pageContext.request.contextPath }/login" ><i class="flaticon-padlock"></i>로그인</a></li>
	                    </ul>
	                    <ul class="nav navbar-nav navbar-right">
	                        <li><a class="btn-light btn-radius btn-brd log" href="${pageContext.request.contextPath }/member/resister" ><i class="flaticon-padlock"></i>회원가입</a></li>
	                    </ul>
                    </c:if>
                     <c:if test ="${not empty userVO }">
	                     <ul class="nav navbar-nav navbar-right">
	                   <%--   <c:if test="${userVO.type == s}">
	                     <li>
	                     	<a href="${pageContext.request.contextPath }/admin/index">관리자화면</a>
	                     </li>
	                 	</c:if> --%>
	 
	  						<li><a class="btn-light btn-radius btn-brd log" href="#" ><c:out value="${userVO.name}"/>님</a></li>
	                        <li><a class="btn-light btn-radius btn-brd log" href="${pageContext.request.contextPath }/logout" ><i class="flaticon-padlock"></i>로그아웃</a></li>
	  					 </ul>
  					 </c:if>
  					
                </div>
            </div>
        </nav>
    </header>