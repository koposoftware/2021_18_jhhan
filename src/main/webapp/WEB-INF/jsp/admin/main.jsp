<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="${pageContext.request.contextPath }/adminpage/favicon.ico">
    <script src="https://use.fontawesome.com/73d95e52a3.js"></script>
    <title>PlayHana Admin | 플레이하나 관리자페이지</title>
    <!-- Simple bar CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/adminpage/css/simplebar.css">
    <!-- Fonts CSS -->
    <link href="https://fonts.googleapis.com/css2?family=Overpass:ital,wght@0,100;0,200;0,300;0,400;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <!-- Icons CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/adminpage/css/feather.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/adminpage/css/select2.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/adminpage/css/dropzone.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/adminpage/css/uppy.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/adminpage/css/jquery.steps.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/adminpage/css/jquery.timepicker.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/adminpage/css/quill.snow.css">
    <!-- Date Range Picker CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/adminpage/css/daterangepicker.css">
    <!-- App CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/adminpage/css/app-light.css" id="lightTheme">
    <link rel="stylesheet" href="${pageContext.request.contextPath }/adminpage/css/app-dark.css" id="darkTheme" disabled>
  </head>
  <body class="vertical  light  ">
    <div class="wrapper">
      <nav class="topnav navbar navbar-light">
        <button type="button" class="navbar-toggler text-muted mt-2 p-0 mr-3 collapseSidebar">
          <i class="fe fe-menu navbar-toggler-icon"></i>
        </button>
        <form class="form-inline mr-auto searchform text-muted">
          <input class="form-control mr-sm-2 bg-transparent border-0 pl-4 text-muted" type="search" placeholder="Type something..." aria-label="Search">
        </form>
        <ul class="nav">
          <li class="nav-item">
            <a class="nav-link text-muted my-2" href="#" id="modeSwitcher" data-mode="light">
              <i class="fe fe-sun fe-16"></i>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link text-muted my-2" href="./#" data-toggle="modal" data-target=".modal-shortcut">
              <span class="fe fe-grid fe-16"></span>
            </a>
          </li>
          <li class="nav-item nav-notif">
            <a class="nav-link text-muted my-2" href="./#" data-toggle="modal" data-target=".modal-notif">
              <span class="fe fe-bell fe-16"></span>
              <span class="dot dot-md bg-success"></span>
            </a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle text-muted pr-0" href="#" id="navbarDropdownMenuLink" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
              <span class="avatar avatar-sm mt-2">
                <img src="./assets/avatars/face-1.jpg" alt="..." class="avatar-img rounded-circle">
              </span>
            </a>
            <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
              <a class="dropdown-item" href="#">Profile</a>
              <a class="dropdown-item" href="#">Settings</a>
              <a class="dropdown-item" href="#">Activities</a>
            </div>
          </li>
        </ul>
      </nav>
      <aside class="sidebar-left border-right bg-white shadow" id="leftSidebar" data-simplebar>
        <a href="#" class="btn collapseSidebar toggle-btn d-lg-none text-muted ml-2 mt-3" data-toggle="toggle">
          <i class="fe fe-x"><span class="sr-only"></span></i>
        </a>
        <nav class="vertnav navbar navbar-light">
          <!-- nav bar -->
          <div class="w-100 mb-4 d-flex">
            <a class="navbar-brand mx-auto mt-2 flex-fill text-center" href="${pageContext.request.contextPath}/admin/main ">
               <img src="${ pageContext.request.contextPath }/resources/images/logos/hanaek.png" style="width:140px; " >
            </a>
          </div>
          <ul class="navbar-nav flex-fill w-100 mb-2">
            <li class="nav-item dropdown">
              <a href="#dashboard" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle nav-link">
                <i class="fe fe-home fe-16"></i>
                <span class="ml-3 item-text">PlayHana</span><span class="sr-only">(current)</span>
              </a>
              <ul class="collapse list-unstyled pl-4 w-100" id="dashboard">
                <li class="nav-item active">
                  <a class="nav-link pl-3" href="${pageContext.request.contextPath }/index"><span class="ml-1 item-text">Home</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link pl-3" href="./dashboard-analytics.html"><span class="ml-1 item-text">Analytics</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link pl-3" href="./dashboard-sales.html"><span class="ml-1 item-text">E-commerce</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link pl-3" href="./dashboard-saas.html"><span class="ml-1 item-text">Saas Dashboard</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link pl-3" href="./dashboard-system.html"><span class="ml-1 item-text">Systems</span></a>
                </li>
              </ul>
            </li>
          </ul>
          <p class="text-muted nav-heading mt-4 mb-1">
            <span>협약학교</span>
          </p>
          <ul class="navbar-nav flex-fill w-100 mb-2">
            <li class="nav-item dropdown">
              <a href="#ui-elements" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle nav-link">
                <i class="fe fe-box fe-16"></i>
                <span class="ml-3 item-text">1사1교협약</span>
              </a>
              <ul class="collapse list-unstyled pl-4 w-100" id="ui-elements">
                <li class="nav-item">
                  <a class="nav-link pl-3" href="${pageContext.request.contextPath }/admin/table"><span class="ml-1 item-text">전체학교목록</span>
                  </a>
                </li>
                <li class="nav-item">
                  <a class="nav-link pl-3" href="./ui-typograpy.html"><span class="ml-1 item-text">학교별평균</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link pl-3" href="./ui-icons.html"><span class="ml-1 item-text">학교별진도</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link pl-3" href="./ui-buttons.html"><span class="ml-1 item-text">지역별학교</span></a>
                </li>
                
              </ul>
            </li>
            <li class="nav-item w-100">
              <a class="nav-link" href="widgets.html">
                <i class="fe fe-layers fe-16"></i>
                <span class="ml-3 item-text">담당관리자</span>
                <span class="badge badge-pill badge-primary">New</span>
              </a>
            </li>
            <li class="nav-item dropdown">
              <a href="#forms" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle nav-link">
                <i class="fe fe-credit-card fe-16"></i>
                <span class="ml-3 item-text">Reports</span>
              </a>
              <ul class="collapse list-unstyled pl-4 w-100" id="forms">
                <li class="nav-item">
                  <a class="nav-link pl-3" href="${pageContext.request.contextPath}/admin/report"><span class="ml-1 item-text">리포트 생성</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link pl-3" href="${pageContext.request.contextPath}/admin/email"><span class="ml-1 item-text">메일발송</span></a>
                </li>
               
              </ul>
            </li>
            
            
          </ul>
          
          
          
        
        </nav>
      </aside>
      
      
      
      <main role="main" class="main-content">
        <div class="container-fluid">
          <div class="row justify-content-center">
            <div class="col-12">
              <div class="row align-items-center mb-2">
                <div class="col">
                  <h2 class="h5 page-title"><c:out value="${userVO.name}"/>관리자님, 환영합니다.</h2>
                </div>
                <div class="col-auto">
                  <form class="form-inline">
                    <div class="form-group d-none d-lg-inline">
                      <label for="reportrange" class="sr-only">Date Ranges</label>
                      <div id="reportrange" class="px-2 py-2 text-muted">
                        <span class="small"></span>
                      </div>
                    </div>
                    <div class="form-group">
                      <button type="button" class="btn btn-sm"><span class="fe fe-refresh-ccw fe-16 text-muted"></span></button>
                      <button type="button" class="btn btn-sm mr-2"><span class="fe fe-filter fe-16 text-muted"></span></button>
                    </div>
                  </form>
                </div>
  
              </div>
              <div class="mb-2 align-items-center">
                <div class="card shadow mb-4">
                  <div class="card-body">
                    <div class="row mt-1 align-items-center">
                      <div class="col-12 col-lg-4 text-center pl-4">
                      
                        <p class="mb-1 small text-muted">총 회원수</p>
                        <span class="h3"><i class="fa fa-user" aria-hidden="true" style="color: #008485"></i>  <c:out value="${count.countMember}"/>명</span><br>
                        <span class="small text-muted">현재 <c:out value="${date}"/> 기준</span>
                        <span class="fe fe-arrow-up text-success fe-12"></span>
                        
                      </div>
                      <div class="col-6 col-lg-2 text-center py-4">
                        <p class="mb-1 small text-muted">협약 학교 수</p>
                        <span class="h3">총 <c:out value="${school.countSchool}"/>개</span><br />
                        <span class="small text-muted">일반회원 포함</span>
                        <span class="fe fe-arrow-up text-success fe-12"></span>
                      </div>
                      <div class="col-6 col-lg-2 text-center py-4 mb-2">
                        <p class="mb-1 small text-muted">은행계좌 참여수</p>
                        <span class="h3"><c:out value="${bank.bankCount}"/>개</span><br />
                        <span class="small text-muted">개설계좌 총 개수</span>
                        <span class="fe fe-arrow-up text-success fe-12"></span>
                      </div>
                      <div class="col-6 col-lg-2 text-center py-4">
                        <p class="mb-1 small text-muted">주식참여도</p>
                        <span class="h3"><c:out value="${stock.stockCount}"/>명</span><br />
                        <span class="small text-muted">계좌개설여부</span>
                        <span class="fe fe-arrow-up text-success fe-12"></span>
                      </div>
                      <div class="col-6 col-lg-2 text-center py-4">
                        <p class="mb-1 small text-muted">금융 MBTI 참여횟수</p>
                        <span class="h3"><c:out value="${mbti.countMbti}"/>번</span><br />
                        <span class="small text-muted">총회원대비</span>
                       
                      </div>
                    </div>
                    
                  </div> <!-- .card-body -->
                </div> <!-- .card -->
              </div>
              <div class="row items-align-baseline">
                <div class="col-md-12 col-lg-4">
                  <div class="card shadow eq-card mb-4">
                    <div class="card-body mb-n3">
                      <div class="row items-align-baseline h-100">
                        <div class="" style="padding:10px">
                          <p class="mb-0"><strong class="mb-0 text-uppercase text-muted">초,중,고</strong></p>
                          <h3><i class="fa fa-envelope-o" aria-hidden="true" style="color:#008485"></i>     학교별 리포트발송</h3>
                          <p class="text-muted">PlayHana를 모두 수료한 학생들의 리포트를 부모님, 선생님께 보내주세요</p>
                        </div>
                       
                        <div class="col-md-6 border-top py-3">
                          <p class="mb-1"><strong class="text-muted">발송건수</strong></p>
                          <h4 class="mb-0">108</h4>
                          <p class="small text-muted mb-0"><span></span></p>
                        </div> <!-- .col -->
                        <div class="col-md-6 border-top py-3">
                          <p class="mb-1"><strong class="text-muted"></strong></p>
                          <h4 class="mb-0"><i class="fa fa-share" aria-hidden="true" style="color:#008485">
	                          </i><button style="background-color: #008485; border: 1px solid white; border-radius: 10px;">
	                          <a href="${pageContext.request.contextPath}/admin/report" class="btn-gradient white small" style="color:white; padding:2px">리포트 생성</a></button>
                          </h4>
                          <p class="small text-muted mb-0"><span></span></p>
                        </div> <!-- .col -->
                      </div>
                    </div> <!-- .card-body -->
                  </div> <!-- .card -->
                </div> <!-- .col -->
                <div class="col-md-12 col-lg-4">
                  <div class="card shadow eq-card mb-4">
                    <div class="card-body">
                      <div class="chart-widget mb-2">
                        <div id="radialbar"></div>
                      </div>
                      <div class="row items-align-center">
                        <div class="col-4 text-center">
                          <p class="text-muted mb-1"></p>
                          <h6 class="mb-1"></h6>
                          <p class="text-muted mb-0"></p>
                        </div>
                        <div class="col-4 text-center">
                          <p class="text-muted mb-1">참여도</p>
                          <h6 class="mb-1"></h6>
                          <p class="text-muted mb-0"></p>
                        </div>
                        <div class="col-4 text-center">
                          <p class="text-muted mb-1"></p>
                          <h6 class="mb-1"></h6>
                          <p class="text-muted mb-0"></p>
                        </div>
                      </div>
                    </div> <!-- .card-body -->
                  </div> <!-- .card -->
                </div> <!-- .col -->
                <div class="col-md-12 col-lg-4">
                  <div class="card shadow eq-card mb-4">
                    <div class="card-body">
                      <div class="d-flex mt-3 mb-4">
                        <div class="flex-fill pt-2">
                          <p class="mb-0 text-muted">학년별 가입일</p>
                          <h4 class="mb-0">34</h4>
                          <span class="small text-muted"></span>
                        </div>
                        <div class="flex-fill chart-box mt-n2">
                          <div id="barChartWidget"></div>
                        </div>
                      </div> <!-- .d-flex -->
                      <div class="row border-top">
                        <div class="col-md-6 pt-4">
                          <h6 class="mb-0">34 <span class="small text-muted">+</span></h6>
                          <p class="mb-0 text-muted">명 기준</p>
                        </div>
                        <div class="col-md-6 pt-4">
                          <h6 class="mb-0">학생 조회 바로가기 <span class="small text-muted"></span></h6>
                          <p class="mb-0 text-muted">click!</p>
                        </div>
                      </div> <!-- .row -->
                    </div> <!-- .card-body -->
                  </div> <!-- .card -->
                </div> <!-- .col-md -->
              </div> <!-- .row -->
              <div class="row">
                <!-- Recent Activity -->
                <div class="col-md-12 col-lg-4 mb-4">
                 
                  <div class="card shadow eq-card ">
                    <div class="card-body mb-n3">
                      <div class="row items-align-baseline h-100">
                        <div class="" style="padding:10px">
                          <p class="mb-0"><strong class="mb-0 text-uppercase text-muted">초,중,고</strong></p>
                          <h3><i class="fa fa-search" aria-hidden="true" style="color:#008485"></i>학교별 평균 및 지역평가</h3>
                          <p class="text-muted">우리지점, 우리지역 학교 외의 학교와의 비교 리포트를 생성합니다.</p>
                        </div>
                       
                        <div class="col-md-6 border-top py-3">
                          <p class="mb-1"><strong class="text-muted">일산지점</strong></p>
                          <h4 class="mb-0"></h4>
                          <p class="small text-muted mb-0"><span></span></p>
                        </div> <!-- .col -->
                        <div class="col-md-6 border-top py-3">
                          <p class="mb-1"><strong class="text-muted"></strong></p>
                          <h4 class="mb-0"><button style="background-color: #008485; border: 1px solid white; border-radius: 10px; float:right">
	                          <a href="${pageContext.request.contextPath}/admin/report" class="btn-gradient white small" style="color:white; padding:2px">조회 하기</a></button>
                          </h4>
                          <p class="small text-muted mb-0"><span></span></p>
                        </div> <!-- .col -->
                      </div>
                    </div> <!-- .card-body -->
                  </div> <!-- .card -->
                </div> <!-- .col -->
                  
                  
                  
                  
                  


<!-- 학교협약 rows -->
                
                <div class="col-md-12 col-lg-8">
                  <div class="card shadow">
                    <div class="card-header">
                      <strong class="card-title">협약 학교조회 및 신청</strong>
                      <a class="float-right small text-muted" href="#!">더보기</a>
                    </div>
                    <div class="card-body my-n2">
                      <table class="table table-striped table-hover table-borderless">
                        <thead>
                          <tr>
                            <th>번호</th>
                            <th>학교명</th>
                            <th>주소</th>
                            <th>학생수</th>
                            <th>협약일</th>
                          </tr>
                        </thead>
                        <tbody>
                         <c:forEach items="${sList}" var="list" varStatus="loop">
                          <tr>
                            <td><c:out value="${list.no}"></c:out></td>
                            <th scope="col"><c:out value="${list.school}"></c:out></th>
                            <td><c:out value="${list.address}"></c:out></td>
                            <td><c:out value="${list.stu}"></c:out></td>
                            <td><c:out value="${list.add_date}"></c:out></td>
                            
                          </tr>
                          </c:forEach>
                      
                        </tbody>
                      </table>
                    </div>
                  </div>
                </div> <!-- Striped rows -->
              </div> <!-- .row-->
            </div> <!-- .col-12 -->
          </div> <!-- .row -->
        </div> <!-- .container-fluid -->
        <div class="modal fade modal-notif modal-slide" tabindex="-1" role="dialog" aria-labelledby="defaultModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-sm" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="defaultModalLabel">Notifications</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body">
                <div class="list-group list-group-flush my-n3">
                  <div class="list-group-item bg-transparent">
                    <div class="row align-items-center">
                      <div class="col-auto">
                        <span class="fe fe-box fe-24"></span>
                      </div>
                      <div class="col">
                        <small><strong>Package has uploaded successfull</strong></small>
                        <div class="my-0 text-muted small">Package is zipped and uploaded</div>
                        <small class="badge badge-pill badge-light text-muted">1m ago</small>
                      </div>
                    </div>
                  </div>
                  <div class="list-group-item bg-transparent">
                    <div class="row align-items-center">
                      <div class="col-auto">
                        <span class="fe fe-download fe-24"></span>
                      </div>
                      <div class="col">
                        <small><strong>Widgets are updated successfull</strong></small>
                        <div class="my-0 text-muted small">Just create new layout Index, form, table</div>
                        <small class="badge badge-pill badge-light text-muted">2m ago</small>
                      </div>
                    </div>
                  </div>
                  <div class="list-group-item bg-transparent">
                    <div class="row align-items-center">
                      <div class="col-auto">
                        <span class="fe fe-inbox fe-24"></span>
                      </div>
                      <div class="col">
                        <small><strong>Notifications have been sent</strong></small>
                        <div class="my-0 text-muted small">Fusce dapibus, tellus ac cursus commodo</div>
                        <small class="badge badge-pill badge-light text-muted">30m ago</small>
                      </div>
                    </div> <!-- / .row -->
                  </div>
                  <div class="list-group-item bg-transparent">
                    <div class="row align-items-center">
                      <div class="col-auto">
                        <span class="fe fe-link fe-24"></span>
                      </div>
                      <div class="col">
                        <small><strong>Link was attached to menu</strong></small>
                        <div class="my-0 text-muted small">New layout has been attached to the menu</div>
                        <small class="badge badge-pill badge-light text-muted">1h ago</small>
                      </div>
                    </div>
                  </div> <!-- / .row -->
                </div> <!-- / .list-group -->
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary btn-block" data-dismiss="modal">Clear All</button>
              </div>
            </div>
          </div>
        </div>
        <div class="modal fade modal-shortcut modal-slide" tabindex="-1" role="dialog" aria-labelledby="defaultModalLabel" aria-hidden="true">
          <div class="modal-dialog" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="defaultModalLabel">Shortcuts</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                  <span aria-hidden="true">&times;</span>
                </button>
              </div>
              <div class="modal-body px-5">
                <div class="row align-items-center">
                  <div class="col-6 text-center">
                    <div class="squircle bg-success justify-content-center">
                      <i class="fe fe-cpu fe-32 align-self-center text-white"></i>
                    </div>
                    <p>Control area</p>
                  </div>
                  <div class="col-6 text-center">
                    <div class="squircle bg-primary justify-content-center">
                      <i class="fe fe-activity fe-32 align-self-center text-white"></i>
                    </div>
                    <p>Activity</p>
                  </div>
                </div>
                <div class="row align-items-center">
                  <div class="col-6 text-center">
                    <div class="squircle bg-primary justify-content-center">
                      <i class="fe fe-droplet fe-32 align-self-center text-white"></i>
                    </div>
                    <p>Droplet</p>
                  </div>
                  <div class="col-6 text-center">
                    <div class="squircle bg-primary justify-content-center">
                      <i class="fe fe-upload-cloud fe-32 align-self-center text-white"></i>
                    </div>
                    <p>Upload</p>
                  </div>
                </div>
                <div class="row align-items-center">
                  <div class="col-6 text-center">
                    <div class="squircle bg-primary justify-content-center">
                      <i class="fe fe-users fe-32 align-self-center text-white"></i>
                    </div>
                    <p>Users</p>
                  </div>
                  <div class="col-6 text-center">
                    <div class="squircle bg-primary justify-content-center">
                      <i class="fe fe-settings fe-32 align-self-center text-white"></i>
                    </div>
                    <p>Settings</p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </main> <!-- main -->
    </div> <!-- .wrapper -->
      <script type="text/javascript" src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="${pageContext.request.contextPath }/adminpage/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath }/adminpage/js/popper.min.js"></script>
    <script src="${pageContext.request.contextPath }/adminpage/js/moment.min.js"></script>
    <script src="${pageContext.request.contextPath }/adminpage/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/adminpage/js/simplebar.min.js"></script>
    <script src='${pageContext.request.contextPath }/adminpage/js/daterangepicker.js'></script>
    <script src='${pageContext.request.contextPath }/adminpage/js/jquery.stickOnScroll.js'></script>
    <script src="${pageContext.request.contextPath }/adminpage/js/tinycolor-min.js"></script>
    <script src="${pageContext.request.contextPath }/adminpage/js/config.js"></script>
    <script src="${pageContext.request.contextPath }/adminpage/js/d3.min.js"></script>
    <script src="${pageContext.request.contextPath }/adminpage/js/topojson.min.js"></script>
    <script src="${pageContext.request.contextPath }/adminpage/js/datamaps.all.min.js"></script>
    <script src="${pageContext.request.contextPath }/adminpage/js/datamaps-zoomto.js"></script>
    <script src="${pageContext.request.contextPath }/adminpage/js/datamaps.custom.js"></script>
    <script src="${pageContext.request.contextPath }/adminpage/js/Chart.min.js"></script>
    <script>
      /* defind global options */
      Chart.defaults.global.defaultFontFamily = base.defaultFontFamily;
      Chart.defaults.global.defaultFontColor = colors.mutedColor;
    </script>

    <script src="${pageContext.request.contextPath }/adminpage/js/gauge.min.js"></script>
    <script src="${pageContext.request.contextPath }/adminpage/js/jquery.sparkline.min.js"></script>
    <script src="${pageContext.request.contextPath }/adminpage/js/apexcharts.min.js"></script>
    <script src="${pageContext.request.contextPath }/adminpage/js/apexcharts.custom.js"></script>
    <script src='${pageContext.request.contextPath }/adminpage/js/jquery.mask.min.js'></script>
    <script src='${pageContext.request.contextPath }/adminpage/js/select2.min.js'></script>
    <script src='${pageContext.request.contextPath }/adminpage/js/jquery.steps.min.js'></script>
    <script src='${pageContext.request.contextPath }/adminpage/js/jquery.validate.min.js'></script>
    <script src='${pageContext.request.contextPath }/adminpage/js/jquery.timepicker.js'></script>
    <script src='${pageContext.request.contextPath }/adminpage/js/dropzone.min.js'></script>
    <script src='${pageContext.request.contextPath }/adminpage/js/uppy.min.js'></script>
    <script src='${pageContext.request.contextPath }/adminpage/js/quill.min.js'></script>
    <script>
      $('.select2').select2(
      {
        theme: 'bootstrap4',
      });
      $('.select2-multi').select2(
      {
        multiple: true,
        theme: 'bootstrap4',
      });
      $('.drgpicker').daterangepicker(
      {
        singleDatePicker: true,
        timePicker: false,
        showDropdowns: true,
        locale:
        {
          format: 'MM/DD/YYYY'
        }
      });
      $('.time-input').timepicker(
      {
        'scrollDefault': 'now',
        'zindex': '9999' /* fix modal open */
      });
      /** date range picker */
      if ($('.datetimes').length)
      {
        $('.datetimes').daterangepicker(
        {
          timePicker: true,
          startDate: moment().startOf('hour'),
          endDate: moment().startOf('hour').add(32, 'hour'),
          locale:
          {
            format: 'M/DD hh:mm A'
          }
        });
      }
      var start = moment().subtract(29, 'days');
      var end = moment();

      function cb(start, end)
      {
        $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
      }
      $('#reportrange').daterangepicker(
      {
        startDate: start,
        endDate: end,
        ranges:
        {
          'Today': [moment(), moment()],
          'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
          'Last 7 Days': [moment().subtract(6, 'days'), moment()],
          'Last 30 Days': [moment().subtract(29, 'days'), moment()],
          'This Month': [moment().startOf('month'), moment().endOf('month')],
          'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
        }
      }, cb);
      cb(start, end);
      $('.input-placeholder').mask("00/00/0000",
      {
        placeholder: "__/__/____"
      });
      $('.input-zip').mask('00000-000',
      {
        placeholder: "____-___"
      });
      $('.input-money').mask("#.##0,00",
      {
        reverse: true
      });
      $('.input-phoneus').mask('(000) 000-0000');
      $('.input-mixed').mask('AAA 000-S0S');
      $('.input-ip').mask('0ZZ.0ZZ.0ZZ.0ZZ',
      {
        translation:
        {
          'Z':
          {
            pattern: /[0-9]/,
            optional: true
          }
        },
        placeholder: "___.___.___.___"
      });
      // editor
      var editor = document.getElementById('editor');
      if (editor)
      {
        var toolbarOptions = [
          [
          {
            'font': []
          }],
          [
          {
            'header': [1, 2, 3, 4, 5, 6, false]
          }],
          ['bold', 'italic', 'underline', 'strike'],
          ['blockquote', 'code-block'],
          [
          {
            'header': 1
          },
          {
            'header': 2
          }],
          [
          {
            'list': 'ordered'
          },
          {
            'list': 'bullet'
          }],
          [
          {
            'script': 'sub'
          },
          {
            'script': 'super'
          }],
          [
          {
            'indent': '-1'
          },
          {
            'indent': '+1'
          }], // outdent/indent
          [
          {
            'direction': 'rtl'
          }], // text direction
          [
          {
            'color': []
          },
          {
            'background': []
          }], // dropdown with defaults from theme
          [
          {
            'align': []
          }],
          ['clean'] // remove formatting button
        ];
        var quill = new Quill(editor,
        {
          modules:
          {
            toolbar: toolbarOptions
          },
          theme: 'snow'
        });
      }
      // Example starter JavaScript for disabling form submissions if there are invalid fields
      (function()
      {
        'use strict';
        window.addEventListener('load', function()
        {
          // Fetch all the forms we want to apply custom Bootstrap validation styles to
          var forms = document.getElementsByClassName('needs-validation');
          // Loop over them and prevent submission
          var validation = Array.prototype.filter.call(forms, function(form)
          {
            form.addEventListener('submit', function(event)
            {
              if (form.checkValidity() === false)
              {
                event.preventDefault();
                event.stopPropagation();
              }
              form.classList.add('was-validated');
            }, false);
          });
        }, false);
      })();
    </script>
    <script>
      var uptarg = document.getElementById('drag-drop-area');
      if (uptarg)
      {
        var uppy = Uppy.Core().use(Uppy.Dashboard,
        {
          inline: true,
          target: uptarg,
          proudlyDisplayPoweredByUppy: false,
          theme: 'dark',
          width: 770,
          height: 210,
          plugins: ['Webcam']
        }).use(Uppy.Tus,
        {
          endpoint: 'https://master.tus.io/files/'
        });
        uppy.on('complete', (result) =>
        {
          console.log('Upload complete! We’ve uploaded these files:', result.successful)
        });
      }
    </script>
    <script src="js/apps.js"></script>
    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-56159088-1"></script>
    <script>
      window.dataLayer = window.dataLayer || [];

      function gtag()
      {
        dataLayer.push(arguments);
      }
      gtag('js', new Date());
      gtag('config', 'UA-56159088-1');
    </script>
  </body>
</html>