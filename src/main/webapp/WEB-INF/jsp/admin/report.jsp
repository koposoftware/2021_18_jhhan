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
    <link rel="icon" href="favicon.ico">
    <script src="https://use.fontawesome.com/73d95e52a3.js"></script>
    <title>PlayHana Admin | 플레이하나 관리자페이지</title>
    <style>
    #my_modal {
        display: none;
        width: 300px;
        padding: 20px 60px;
        background-color: #fefefe;
        border: 1px solid #888;
        border-radius: 3px;
    }

    #my_modal .modal_close_btn {
        position: absolute;
        top: 10px;
        right: 10px;
    }
	</style>
	
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
                <c:out value="${userVO.name}"></c:out>
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
                <li class="nav-item">
                  <a class="nav-link pl-3" href="./form_validation.html"><span class="ml-1 item-text">Validation</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link pl-3" href="./form_wizard.html"><span class="ml-1 item-text">Wizard</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link pl-3" href="./form_layouts.html"><span class="ml-1 item-text">Layouts</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link pl-3" href="./form_upload.html"><span class="ml-1 item-text">File upload</span></a>
                </li>
              </ul>
            </li>
            <li class="nav-item dropdown">
              <a href="#tables" data-toggle="collapse" aria-expanded="false" class="dropdown-toggle nav-link">
                <i class="fe fe-grid fe-16"></i>
                <span class="ml-3 item-text">Tables</span>
              </a>
              <ul class="collapse list-unstyled pl-4 w-100" id="tables">
                <li class="nav-item">
                  <a class="nav-link pl-3" href="./table_basic.html"><span class="ml-1 item-text">Basic Tables</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link pl-3" href="./table_advanced.html"><span class="ml-1 item-text">Advanced Tables</span></a>
                </li>
                <li class="nav-item">
                  <a class="nav-link pl-3" href="./table_datatables.html"><span class="ml-1 item-text">Data Tables</span></a>
                </li>
              </ul>
            </li>
            
          </ul>
      
          
        
        </nav>
      </aside>


<!-- 모달창 -->


 
<div id="my_modal">
   입력하신 정보로 리포트를 구성합니다.
   
    <a class="modal_close_btn"><i class="fa fa-times-circle-o fa-lg" aria-hidden="true" style="color:#008485"></i></a>
</div>
 

 
 
    
 <!--report start  -->
      <main role="main" class="main-content">
        <div class="container-fluid">
          <div class="row justify-content-center">
            <div class="col-12 col-lg-10 col-xl-8">
            
              <div class="row align-items-center mb-4">
                <div class="col">
                  <h2 class="h5 page-title"><small class="text-muted text-uppercase">PlayHana</small><br />#1806</h2>
                </div>
                
                <div class="col-auto">
                
                <input type = "submit" value="확인" class="btn btn-secondary" id="search" onclick="show();">
                  
                  <button type="button" class="btn btn-primary" id="save" onclick="window.print()">PDF저장</button>
                </div>
              </div>
              <div class="card shadow">
                <div class="card-body p-5">
                  <div class="row mb-5">
                    <div class="col-12 text-center mb-4">
                     <img src="${ pageContext.request.contextPath }/resources/images/logos/hana.png" style="width:140px; " class="navbar-brand-img brand-sm mx-auto mb-4" alt="..." > 
                      <h2 class="mb-0 text-uppercase">PlayHana Report</h2>
                      <p class="text-muted"> 플레이하나<br /> 금융 총괄 리포트입니다. </p>
                    </div>
                    
                    <div class="col-md-7">
                      <p class="small text-muted text-uppercase mb-2">개인정보</p>
                      
                      <form method="post" action="${pageContext.request.contextPath }/admin/report" id="getInfo">
                      <p class="mb-4">
                       <strong><input type="text" id="name" name="name" style="border:none; font-weight:bold"></strong><br />
                         학교 <input type="text" id="school" name="school" style="border:none"><br />
                         학번 <input type="text" id="stu_id" name="stu_id" style="border:none"><br />
                      </p>
                         <i class="fa fa-calendar-check-o" aria-hidden="true"></i> 가입일<p id="date"></p> 
                         <i class="fa fa-mobile" aria-hidden="true"></i> 전화 <p id="phone"></p>
                    
         				</form>            
                      <p >
                        <span class="small text-muted text-uppercase">주소</span><br />
                        
                        <p id="add"><strong></strong></p>
                        
                      </p>
                    </div>
                     
                    <div class="col-md-5">
                    <div id="Sh" style="display:none">
                      <p class="small text-muted text-uppercase mb-2">나의 차트</p>
                      <img id="chart" src="${pageContext.request.contextPath }/resources/images/Rchart.png" style="width:250px;heigth:250">
                      <p class="mb-4">
                        
                      </p>
                     </div>
                      <p >
                        <small class="small text-muted text-uppercase"></small><br />
                        <strong></strong>
                      </p>
                    </div>
                  </div> <!-- /.row -->
                  <table class="table table-borderless table-striped">
                    <thead>
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">은행계좌</th>
                        <th scope="col" >잔액</th>
                        <th scope="col" >개설일</th>
                        
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <th >1</th>
                        <td id="bank_id">
                        </td>
                        <td id ="bank_id_bal"></td>
                        <td id="bank_id_date"></td>
                        <td id=""></td>
                        <td ></td>
                        <td ></td>
                      </tr>
                    </tbody>
                  </table>
                  <!--주식  -->
                  <table class="table table-borderless table-striped">
                    <thead>
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">주식계좌</th>
                        <th scope="col" >잔액</th>
                        <th scope="col" >개설일</th>
                        
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <th >1</th>
                        <td id="stock_acc">
                        </td>
                        <td id ="stock_bal"></td>
                        <td id="stock_acc_date"></td>
                        <td id=""></td>
                        <td ></td>
                        <td ></td>
                      </tr>
                    </tbody>
                  </table>
                  
                  
                  <div class="col-md-7" style="display:none" id="mbti">
                    
                       <p style="color:#008485">금융성향테스트 | 금융 MBTI</p>
                    <table class="table table-borderless table-striped">
                    <thead>
                      <tr>
                       <th scope="col">#</th>
                        <th scope="col">맞은개수</th>
                        <th scope="col" >성향</th>
                        <th scope="col" >참여횟수</th>
                        
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <th >1</th>
                        <td>5 개
                        </td>
                        <td>투자계의 프로환승러</td>
                        <td >1</td>
                        
                      </tr>
                    </tbody>
                  </table>             
                   
                   
                  </div> <!-- /.row -->
                </div> <!-- /.card-body -->
              </div> <!-- /.card -->
            </div> <!-- /.col-12 -->
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
    <script src="${pageContext.request.contextPath }/adminpage/js/report.js"></script>
    <script src="${pageContext.request.contextPath }/adminpage/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath }/adminpage/js/popper.min.js"></script>
    <script src="${pageContext.request.contextPath }/adminpage/js/moment.min.js"></script>
    <script src="${pageContext.request.contextPath }/adminpage/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath }/adminpage/js/simplebar.min.js"></script>
    <script src='${pageContext.request.contextPath }/adminpage/js/daterangepicker.js'></script>
    <script src='${pageContext.request.contextPath }/adminpage/js/jquery.stickOnScroll.js'></script>
    <script src="${pageContext.request.contextPath }/adminpage/js/tinycolor-min.js"></script>
    <script src="${pageContext.request.contextPath }/adminpage/js/config.js"></script>
    <script src="${pageContext.request.contextPath }/adminpage/js/apps.js"></script>
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
    <script>
    function show(){
    	document.getElementById("Sh").style.display="";
    	document.getElementById("mbti").style.display="";
    	
    }
    
</script>
 
 
  </body>
</html>