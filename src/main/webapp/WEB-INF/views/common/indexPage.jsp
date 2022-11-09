<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<title>Dr_Crown Dental Pro</title>
<!-- Favicon icon -->
<link rel="icon" type="image/png" sizes="16x16"
	href="<%=request.getContextPath()%>/resources/images/favicon.png">
<link
	href="<%=request.getContextPath()%>/resources/vendor/jqvmap/css/jqvmap.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/vendor/chartist/css/chartist.min.css">
<link
	href="<%=request.getContextPath()%>/resources/vendor/bootstrap-select/dist/css/bootstrap-select.min.css"
	rel="stylesheet">
<link
	href="<%=request.getContextPath()%>/resources/vendor/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/css/style.css"
	rel="stylesheet">
<link href="<%=request.getContextPath()%>/resources/css/customcss.css"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&family=Roboto:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
</head>
<body>

	<!--*******************
        Preloader start
    ********************-->
	<div id="preloader">
		<div class="sk-three-bounce">
			<div class="sk-child sk-bounce1"></div>
			<div class="sk-child sk-bounce2"></div>
			<div class="sk-child sk-bounce3"></div>
		</div>
	</div>
	<!--*******************
        Preloader end
    ********************-->

	<!--**********************************
        Main wrapper start
    ***********************************-->
	<div id="main-wrapper">

		<!--**********************************
            Nav header start
        ***********************************-->
		<div class="nav-header" style="background-color: #333258">
			<a href="index" class="brand-logo pl-5 pt-4">
				<img class="logo-abbr" src="<%=request.getContextPath()%>/resources/images/logo.png" alt="">
				<img class="brand-title" src="<%=request.getContextPath()%>/resources/images/logo-text.png" alt="">
			</a>
		</div>
		<!--**********************************
            Nav header end
        ***********************************-->
        
        
		<!--**********************************
            Header start
        ***********************************-->
		<div class="header">
			<div class="header-content">
				<nav class="navbar navbar-expand">
					<div class="collapse navbar-collapse justify-content-between">
					<div>
					</div>
						<ul class="header-left">
							<c:forEach items="${menuList }" var="menu">
								<li class="col-2 text-center p-1 mr-4 border border-light rounded bg-light nav-header-hover text-white" onclick="subMenu_go('${menu.mcode }'), goPage('<%=request.getContextPath()%>${menu.murl }','${menu.mcode }')"">
									<a class="has-arrow ai-icon" aria-expanded="true">
										<i class="${menu.micon} fs-30"></i>
										<br>
										<span class="nav-text text fs-12">&nbsp;${menu.mname }</span>
									</a>
								</li>
							</c:forEach>
						</ul>
						<div>
						</div>
						<div>
						</div>
						<div>
						</div>
						<ul class="navbar-nav header-right bg-light rounded border" style="height: 80%; box-shadow: 0px 0px 2px 4px #6d6d6d;">
							<li class="nav-item dropdown header-profile pl-3 pr-3">
                                <a class="nav-link" href="javascript:void(0)" role="button" data-toggle="dropdown">
									<img src="<%=request.getContextPath() %>/member/getPicture.do" class="img-fluid rounded" alt="User Image">
                                </a>
                                <div class="dropdown-menu dropdown-menu-right">
                                    <a href="javascript:goPage('/member/mypage','M000100');"
										class="dropdown-item ai-icon">
										<svg id="icon-user1" xmlns="http://www.w3.org/2000/svg"
											class="text-primary" width="18" height="18"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
											<path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
											<circle cx="12" cy="7" r="4"></circle>
										</svg>
										<span class="ml-2"><b>마이페이지</b></span>
									</a>
                                    <a href="/common/logout" class="dropdown-item ai-icon">
										<svg id="icon-logout" xmlns="http://www.w3.org/2000/svg"
											class="text-danger" width="18" height="18"
											viewBox="0 0 24 24" fill="none" stroke="currentColor"
											stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
											<path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path>
											<polyline points="16 17 21 12 16 7"></polyline>
											<line x1="21" y1="12" x2="9" y2="12"></line>
										</svg>
										<span class="ml-2"><b>로그아웃</b></span>
									</a>
                                </div>
							</li>
							
							<li class="nav-item pr-4 p-2">
								<div class="col-6">
									<div class="row pb-1">
										<div style="width: 4.6vw; text-align: right;">
											<b>아이디:</b>
										</div>
									</div>
									<div class="row">
										<b>접속 아이피: </b> 
									</div>
								</div>
								<div class="col-6 pr-4">
									<div class="row pb-1">
										<span>
											${loginUser.memId}
										</span>
									</div>
									<div class="row">
										<span>
											${ipAddress}
										</span>
									</div>
								</div>
							</li>
							
						</ul>
					</div>
				</nav>
			</div>
		</div>
		<!--**********************************
            Header end ti-comment-alt
        ***********************************-->

		<!--**********************************
            Sidebar start
        ***********************************-->
<!-- 		<div class="deznav"> -->
<!-- 			<div class="deznav-scroll"> -->
<!-- 				<ul class="metismenu" id="menu"> -->
<%-- 					<c:forEach items="${menuList }" var="menu"> --%>
<!-- 						<li> -->
<%-- 							<a class="has-arrow ai-icon" aria-expanded="true" onclick="subMenu_go('${menu.mcode }'), goPage('<%=request.getContextPath()%>${menu.murl }','${menu.mcode }')""> --%>
<%-- 								<i class="${menu.micon}"></i> --%>
<%-- 								<span class="nav-text">&nbsp;${menu.mname }</span> --%>
<!-- 							</a> -->
<!-- 							<ul class="nav nav-pills nav-sidebar flex-column subMenuList" -->
<!-- 								data-widget="treeview" role="menu" data-accordion="false" -->
<!-- 								aria-expanded="false"> -->
<!-- 							</ul> -->
<!-- 						</li> -->
<%-- 					</c:forEach> --%>
<!-- 				</ul> -->
<!-- 			</div> -->
<!-- 		</div> -->
		<!--**********************************
            Sidebar end
        ***********************************-->

		<!--**********************************
            Content body start
        ***********************************-->


<!-- 		<div class="content-body" style="height: 90vh;"> -->
			<!-- height 800 -->
			<!-- row -->
			<iframe name="ifr" class="content-body pl-1" src="" frameborder="0"
				style="width: 98%; height: 89.7vh;"></iframe>
<!-- 		</div> -->
		<!--**********************************
            Content body end
        ***********************************-->

		<!--**********************************
            Footer start
        ***********************************-->
		<div class="footer">
			<div class="copyright">
				<p>
					<strong>Copyright</strong> © Designed &amp; Developed by <strong>Team
						Dr.Crown</strong> 2022
				</p>
			</div>
		</div>
		<!--**********************************
            Footer end
        ***********************************-->

	</div>
	<!--**********************************
        Main wrapper end
    ***********************************-->

	<!--**********************************
        Scripts
    ***********************************-->
	<!-- Required vendors -->
	<script
		src="<%=request.getContextPath()%>/resources/vendor/global/global.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vendor/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vendor/chart.js/Chart.bundle.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/custom.min.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/deznav-init.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vendor/bootstrap-datetimepicker/js/moment.js"></script>
	<script
		src="<%=request.getContextPath()%>/resources/vendor/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js"></script>
	<!-- Chart piety plugin files -->
	<script
		src="<%=request.getContextPath()%>/resources/vendor/peity/jquery.peity.min.js"></script>

	<!-- Apex Chart -->
	<script
		src="<%=request.getContextPath()%>/resources/vendor/apexchart/apexchart.js"></script>
	<script src="<%=request.getContextPath()%>/resources/js/common.js"></script>

	<!-- Dashboard 1 -->
	<%-- 	<script src="<%=request.getContextPath()%>/resources/js/dashboard/dashboard-1.js"></script> --%>

	<%@ include file="./index_js.jsp"%>

</body>
</html>