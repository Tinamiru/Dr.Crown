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
			<a href="index" class="brand-logo"> <img class="logo-abbr"
				src="<%=request.getContextPath()%>/resources/images/logo.png" alt="">
				<img class="logo-compact"
				src="<%=request.getContextPath()%>/resources/images/logo-text.png"
				alt=""> <img class="brand-title"
				src="<%=request.getContextPath()%>/resources/images/logo-text.png"
				alt="">
			</a>

			<div class="nav-control">
				<div class="hamburger">
					<span class="line"></span><span class="line"></span><span
						class="line"></span>
				</div>
			</div>
		</div>
		<!--**********************************
            Nav header end
        ***********************************-->

		<!--**********************************
            Chat box start
        ***********************************-->
		<div class="chatbox">
			<div class="chatbox-close">
			</div>
			<div class="custom-tab-1">
				<ul class="nav nav-tabs">
					<li class="nav-item"><a class="nav-link" data-toggle="tab"
						href="#notes">Notes</a></li>
					<li class="nav-item"><a class="nav-link" data-toggle="tab"
						href="#alerts">Alerts</a></li>
					<li class="nav-item">
						<a class="nav-link active" data-toggle="tab" href="#chat">
							<span>로그인정보</span>
						</a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane fade active show" id="chat" role="tabpanel">
						<div class="card mb-sm-3 mb-md-0 contacts_card dz-chat-user-box">
							<div class="card-header chat-list-header text-center">
								${loginUser.memId }
								${loginUser.memName }님 환영합니다.
							</div>
							<div class="card-body contacts_body p-0 dz-scroll  "
								id="DZ_W_Contacts_Body">
								내용이 드감
								<div class="row">
									<div class="col-6">
										<a onclick="OpenWindow('member/detail','회원등록',600,700);"
											class="dropdown-item ai-icon">
											<svg id="icon-user1" xmlns="http://www.w3.org/2000/svg"
												class="text-primary" width="18" height="18"
												viewBox="0 0 24 24" fill="none" stroke="currentColor"
												stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
												<path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
												<circle cx="12" cy="7" r="4"></circle>
											</svg>
											<span class="ml-2">마이페이지</span>
										</a>
									</div>
									<div class="col-6">
										<a href="/common/logout" class="dropdown-item ai-icon">
											<svg id="icon-logout" xmlns="http://www.w3.org/2000/svg"
												class="text-danger" width="18" height="18"
												viewBox="0 0 24 24" fill="none" stroke="currentColor"
												stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
												<path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path>
												<polyline points="16 17 21 12 16 7"></polyline>
												<line x1="21" y1="12" x2="9" y2="12"></line>
											</svg>
											<span class="ml-2">로그아웃 </span>
										</a>
									</div>
								</div>
							</div>
						</div>
						<div class="card chat dz-chat-history-box d-none">
							<div class="card-header chat-list-header text-center">
								<a href="javascript:void(0)" class="dz-chat-history-back"> <svg
										xmlns="http://www.w3.org/2000/svg"
										xmlns:xlink="http://www.w3.org/1999/xlink" width="18px"
										height="18px" viewBox="0 0 24 24" version="1.1">
										<g stroke="none" stroke-width="1" fill="none"
											fill-rule="evenodd">
										<polygon points="0 0 24 0 24 24 0 24" />
										<rect fill="#000000" opacity="0.3"
											transform="translate(15.000000, 12.000000) scale(-1, 1) rotate(-90.000000) translate(-15.000000, -12.000000) "
											x="14" y="7" width="2" height="10" rx="1" />
										<path
											d="M3.7071045,15.7071045 C3.3165802,16.0976288 2.68341522,16.0976288 2.29289093,15.7071045 C1.90236664,15.3165802 1.90236664,14.6834152 2.29289093,14.2928909 L8.29289093,8.29289093 C8.67146987,7.914312 9.28105631,7.90106637 9.67572234,8.26284357 L15.6757223,13.7628436 C16.0828413,14.136036 16.1103443,14.7686034 15.7371519,15.1757223 C15.3639594,15.5828413 14.7313921,15.6103443 14.3242731,15.2371519 L9.03007346,10.3841355 L3.7071045,15.7071045 Z"
											fill="#000000" fill-rule="nonzero"
											transform="translate(9.000001, 11.999997) scale(-1, -1) rotate(90.000000) translate(-9.000001, -11.999997) " /></g></svg>
								</a>
								<div class="dropdown">
									<a href="javascript:void(0)" data-toggle="dropdown"><svg
											xmlns="http://www.w3.org/2000/svg"
											xmlns:xlink="http://www.w3.org/1999/xlink" width="18px"
											height="18px" viewBox="0 0 24 24" version="1.1">
											<g stroke="none" stroke-width="1" fill="none"
												fill-rule="evenodd">
											<rect x="0" y="0" width="24" height="24" />
											<circle fill="#000000" cx="5" cy="12" r="2" />
											<circle fill="#000000" cx="12" cy="12" r="2" />
											<circle fill="#000000" cx="19" cy="12" r="2" /></g></svg></a>
									<ul class="dropdown-menu dropdown-menu-right">
										<li class="dropdown-item"><i
											class="fa fa-user-circle text-primary mr-2"></i> View profile</li>
										<li class="dropdown-item"><i
											class="fa fa-users text-primary mr-2"></i> Add to close
											friends</li>
										<li class="dropdown-item"><i
											class="fa fa-plus text-primary mr-2"></i> Add to group</li>
										<li class="dropdown-item"><i
											class="fa fa-ban text-primary mr-2"></i> Block</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<div class="tab-pane fade" id="alerts" role="tabpanel">
						<div class="card mb-sm-3 mb-md-0 contacts_card">
							<div class="card-header chat-list-header text-center">
								<a href="javascript:void(0)"><svg
										xmlns="http://www.w3.org/2000/svg"
										xmlns:xlink="http://www.w3.org/1999/xlink" width="18px"
										height="18px" viewBox="0 0 24 24" version="1.1">
										<g stroke="none" stroke-width="1" fill="none"
											fill-rule="evenodd">
										<rect x="0" y="0" width="24" height="24" />
										<circle fill="#000000" cx="5" cy="12" r="2" />
										<circle fill="#000000" cx="12" cy="12" r="2" />
										<circle fill="#000000" cx="19" cy="12" r="2" /></g></svg></a>
								<div>
									<h6 class="mb-1">Notications</h6>
									<p class="mb-0">Show All</p>
								</div>
								<a href="javascript:void(0)"><svg
										xmlns="http://www.w3.org/2000/svg"
										xmlns:xlink="http://www.w3.org/1999/xlink" width="18px"
										height="18px" viewBox="0 0 24 24" version="1.1">
										<g stroke="none" stroke-width="1" fill="none"
											fill-rule="evenodd">
										<rect x="0" y="0" width="24" height="24" />
										<path
											d="M14.2928932,16.7071068 C13.9023689,16.3165825 13.9023689,15.6834175 14.2928932,15.2928932 C14.6834175,14.9023689 15.3165825,14.9023689 15.7071068,15.2928932 L19.7071068,19.2928932 C20.0976311,19.6834175 20.0976311,20.3165825 19.7071068,20.7071068 C19.3165825,21.0976311 18.6834175,21.0976311 18.2928932,20.7071068 L14.2928932,16.7071068 Z"
											fill="#000000" fill-rule="nonzero" opacity="0.3" />
										<path
											d="M11,16 C13.7614237,16 16,13.7614237 16,11 C16,8.23857625 13.7614237,6 11,6 C8.23857625,6 6,8.23857625 6,11 C6,13.7614237 8.23857625,16 11,16 Z M11,18 C7.13400675,18 4,14.8659932 4,11 C4,7.13400675 7.13400675,4 11,4 C14.8659932,4 18,7.13400675 18,11 C18,14.8659932 14.8659932,18 11,18 Z"
											fill="#000000" fill-rule="nonzero" /></g></svg></a>
							</div>
							<div class="card-body contacts_body p-0 dz-scroll"
								id="DZ_W_Contacts_Body1">
								<ul class="contacts">
									<li class="name-first-letter">SEVER STATUS</li>
									<li class="active">
										<div class="d-flex bd-highlight">
											<div class="img_cont primary">KK</div>
											<div class="user_info">
												<span>David Nester Birthday</span>
												<p class="text-primary">Today</p>
											</div>
										</div>
									</li>
									<li class="name-first-letter">SOCIAL</li>
									<li>
										<div class="d-flex bd-highlight">
											<div class="img_cont success">
												RU<i class="icon fa-birthday-cake"></i>
											</div>
											<div class="user_info">
												<span>Perfection Simplified</span>
												<p>Jame Smith commented on your status</p>
											</div>
										</div>
									</li>
									<li class="name-first-letter">SEVER STATUS</li>
									<li>
										<div class="d-flex bd-highlight">
											<div class="img_cont primary">
												AU<i class="icon fa fa-user-plus"></i>
											</div>
											<div class="user_info">
												<span>AharlieKane</span>
												<p>Sami is online</p>
											</div>
										</div>
									</li>
									<li>
										<div class="d-flex bd-highlight">
											<div class="img_cont info">
												MO<i class="icon fa fa-user-plus"></i>
											</div>
											<div class="user_info">
												<span>Athan Jacoby</span>
												<p>Nargis left 30 mins ago</p>
											</div>
										</div>
									</li>
								</ul>
							</div>
							<div class="card-footer"></div>
						</div>
					</div>
					<div class="tab-pane fade" id="notes">
						<div class="card mb-sm-3 mb-md-0 note_card">
							<div class="card-header chat-list-header text-center">
								<a href="javascript:void(0)"><svg
										xmlns="http://www.w3.org/2000/svg"
										xmlns:xlink="http://www.w3.org/1999/xlink" width="18px"
										height="18px" viewBox="0 0 24 24" version="1.1">
										<g stroke="none" stroke-width="1" fill="none"
											fill-rule="evenodd">
										<rect fill="#000000" x="4" y="11" width="16" height="2" rx="1" />
										<rect fill="#000000" opacity="0.3"
											transform="translate(12.000000, 12.000000) rotate(-270.000000) translate(-12.000000, -12.000000) "
											x="4" y="11" width="16" height="2" rx="1" /></g></svg></a>
								<div>
									<h6 class="mb-1">Notes</h6>
									<p class="mb-0">Add New Nots</p>
								</div>
								<a href="javascript:void(0)"><svg
										xmlns="http://www.w3.org/2000/svg"
										xmlns:xlink="http://www.w3.org/1999/xlink" width="18px"
										height="18px" viewBox="0 0 24 24" version="1.1">
										<g stroke="none" stroke-width="1" fill="none"
											fill-rule="evenodd">
										<rect x="0" y="0" width="24" height="24" />
										<path
											d="M14.2928932,16.7071068 C13.9023689,16.3165825 13.9023689,15.6834175 14.2928932,15.2928932 C14.6834175,14.9023689 15.3165825,14.9023689 15.7071068,15.2928932 L19.7071068,19.2928932 C20.0976311,19.6834175 20.0976311,20.3165825 19.7071068,20.7071068 C19.3165825,21.0976311 18.6834175,21.0976311 18.2928932,20.7071068 L14.2928932,16.7071068 Z"
											fill="#000000" fill-rule="nonzero" opacity="0.3" />
										<path
											d="M11,16 C13.7614237,16 16,13.7614237 16,11 C16,8.23857625 13.7614237,6 11,6 C8.23857625,6 6,8.23857625 6,11 C6,13.7614237 8.23857625,16 11,16 Z M11,18 C7.13400675,18 4,14.8659932 4,11 C4,7.13400675 7.13400675,4 11,4 C14.8659932,4 18,7.13400675 18,11 C18,14.8659932 14.8659932,18 11,18 Z"
											fill="#000000" fill-rule="nonzero" /></g></svg></a>
							</div>
							<div class="card-body contacts_body p-0 dz-scroll"
								id="DZ_W_Contacts_Body2">
								<ul class="contacts">
									<li class="active">
										<div class="d-flex bd-highlight">
											<div class="user_info">
												<span>New order placed..</span>
												<p>10 Aug 2020</p>
											</div>
											<div class="ml-auto">
												<a href="javascript:void(0)"
													class="btn btn-primary btn-xs sharp mr-1"><i
													class="fa fa-pencil"></i></a> <a href="javascript:void(0)"
													class="btn btn-danger btn-xs sharp"><i
													class="fa fa-trash"></i></a>
											</div>
										</div>
									</li>
									<li>
										<div class="d-flex bd-highlight">
											<div class="user_info">
												<span>Youtube, a video-sharing website..</span>
												<p>10 Aug 2020</p>
											</div>
											<div class="ml-auto">
												<a href="javascript:void(0)"
													class="btn btn-primary btn-xs sharp mr-1"><i
													class="fa fa-pencil"></i></a> <a href="javascript:void(0)"
													class="btn btn-danger btn-xs sharp"><i
													class="fa fa-trash"></i></a>
											</div>
										</div>
									</li>
									<li>
										<div class="d-flex bd-highlight">
											<div class="user_info">
												<span>john just buy your product..</span>
												<p>10 Aug 2020</p>
											</div>
											<div class="ml-auto">
												<a href="javascript:void(0)"
													class="btn btn-primary btn-xs sharp mr-1"><i
													class="fa fa-pencil"></i></a> <a href="javascript:void(0)"
													class="btn btn-danger btn-xs sharp"><i
													class="fa fa-trash"></i></a>
											</div>
										</div>
									</li>
									<li>
										<div class="d-flex bd-highlight">
											<div class="user_info">
												<span>Athan Jacoby</span>
												<p>10 Aug 2020</p>
											</div>
											<div class="ml-auto">
												<a href="javascript:void(0)"
													class="btn btn-primary btn-xs sharp mr-1"><i
													class="fa fa-pencil"></i></a> <a href="javascript:void(0)"
													class="btn btn-danger btn-xs sharp"><i
													class="fa fa-trash"></i></a>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!--**********************************
            Chat box End
        ***********************************-->

		<!--**********************************
            Header start
        ***********************************-->
		<div class="header">
			<div class="header-content">
				<nav class="navbar navbar-expand">
					<div class="collapse navbar-collapse justify-content-between">
						<div class="header-left">
						</div>
						<ul class="navbar-nav header-right">
							<li class="nav-item dropdown notification_dropdown"><a
								class="nav-link  ai-icon" href="javascript:void(0)"
								role="button" data-toggle="dropdown"> <svg width="28"
										height="28" viewBox="0 0 28 28" fill="none"
										xmlns="http://www.w3.org/2000/svg">
										<path
											d="M22.75 15.8385V13.0463C22.7471 10.8855 21.9385 8.80353 20.4821 7.20735C19.0258 5.61116 17.0264 4.61555 14.875 4.41516V2.625C14.875 2.39294 14.7828 2.17038 14.6187 2.00628C14.4546 1.84219 14.2321 1.75 14 1.75C13.7679 1.75 13.5454 1.84219 13.3813 2.00628C13.2172 2.17038 13.125 2.39294 13.125 2.625V4.41534C10.9736 4.61572 8.97429 5.61131 7.51794 7.20746C6.06159 8.80361 5.25291 10.8855 5.25 13.0463V15.8383C4.26257 16.0412 3.37529 16.5784 2.73774 17.3593C2.10019 18.1401 1.75134 19.1169 1.75 20.125C1.75076 20.821 2.02757 21.4882 2.51969 21.9803C3.01181 22.4724 3.67904 22.7492 4.375 22.75H9.71346C9.91521 23.738 10.452 24.6259 11.2331 25.2636C12.0142 25.9013 12.9916 26.2497 14 26.2497C15.0084 26.2497 15.9858 25.9013 16.7669 25.2636C17.548 24.6259 18.0848 23.738 18.2865 22.75H23.625C24.321 22.7492 24.9882 22.4724 25.4803 21.9803C25.9724 21.4882 26.2492 20.821 26.25 20.125C26.2486 19.117 25.8998 18.1402 25.2622 17.3594C24.6247 16.5786 23.7374 16.0414 22.75 15.8385ZM7 13.0463C7.00232 11.2113 7.73226 9.45223 9.02974 8.15474C10.3272 6.85726 12.0863 6.12732 13.9212 6.125H14.0788C15.9137 6.12732 17.6728 6.85726 18.9703 8.15474C20.2677 9.45223 20.9977 11.2113 21 13.0463V15.75H7V13.0463ZM14 24.5C13.4589 24.4983 12.9316 24.3292 12.4905 24.0159C12.0493 23.7026 11.716 23.2604 11.5363 22.75H16.4637C16.284 23.2604 15.9507 23.7026 15.5095 24.0159C15.0684 24.3292 14.5411 24.4983 14 24.5ZM23.625 21H4.375C4.14298 20.9999 3.9205 20.9076 3.75644 20.7436C3.59237 20.5795 3.50014 20.357 3.5 20.125C3.50076 19.429 3.77757 18.7618 4.26969 18.2697C4.76181 17.7776 5.42904 17.5008 6.125 17.5H21.875C22.571 17.5008 23.2382 17.7776 23.7303 18.2697C24.2224 18.7618 24.4992 19.429 24.5 20.125C24.4999 20.357 24.4076 20.5795 24.2436 20.7436C24.0795 20.9076 23.857 20.9999 23.625 21Z"
											fill="#fff" />
									</svg> <span class="badge light text-white bg-primary">3</span>
							</a>
								<div class="dropdown-menu dropdown-menu-right">
									<div id="DZ_W_Notification1"
										class="widget-media dz-scroll p-3 height380">
										<ul class="timeline">
											<li>
												<div class="timeline-panel">
													<div class="media mr-2">
														<img alt="image" width="50"
															src="<%=request.getContextPath()%>/resources/images/avatar/1.jpg">
													</div>
													<div class="media-body">
														<h6 class="mb-1">예약이나 일정리스트 출력화면</h6>
														<small class="d-block">29 July 2020 - 02:26 PM</small>
													</div>
												</div>
											</li>
											<li>
												<div class="timeline-panel">
													<div class="media mr-2 media-info">KG</div>
													<div class="media-body">
														<h6 class="mb-1">Resport created successfully</h6>
														<small class="d-block">29 July 2020 - 02:26 PM</small>
													</div>
												</div>
											</li>
											<li>
												<div class="timeline-panel">
													<div class="media mr-2 media-success">
														<i class="fa fa-home"></i>
													</div>
													<div class="media-body">
														<h6 class="mb-1">Reminder : Treatment Time!</h6>
														<small class="d-block">29 July 2020 - 02:26 PM</small>
													</div>
												</div>
											</li>
											<li>
												<div class="timeline-panel">
													<div class="media mr-2">
														<img alt="image" width="50"
															src="<%=request.getContextPath()%>/resources/images/avatar/1.jpg">
													</div>
													<div class="media-body">
														<h6 class="mb-1">Dr sultads Send you Photo</h6>
														<small class="d-block">29 July 2020 - 02:26 PM</small>
													</div>
												</div>
											</li>
											<li>
												<div class="timeline-panel">
													<div class="media mr-2 media-danger">KG</div>
													<div class="media-body">
														<h6 class="mb-1">Resport created successfully</h6>
														<small class="d-block">29 July 2020 - 02:26 PM</small>
													</div>
												</div>
											</li>
											<li>
												<div class="timeline-panel">
													<div class="media mr-2 media-primary">
														<i class="fa fa-home"></i>
													</div>
													<div class="media-body">
														<h6 class="mb-1">Reminder : Treatment Time!</h6>
														<small class="d-block">29 July 2020 - 02:26 PM</small>
													</div>
												</div>
											</li>
										</ul>
									</div>
									<a class="all-notification" href="javascript:void(0)">See
										all notifications <i class="ti-arrow-right"></i>
									</a>
								</div></li>
							<li class="nav-item dropdown header-profile">
								<a class="nav-link bell-link" href="javascript:void(0)">
<%-- 								<img src="<%=request.getContextPath() %>/member/getPicture.do?id=${loginUser.id }" class="img-circle elevation-2" alt="User Image"> --%>
									<img src="<%=request.getContextPath() %>/resources/images/profile/33.jpg" class="img-circle elevation-2" alt="User Image">
								</a>
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
		<div class="deznav">
			<div class="deznav-scroll">
				<ul class="metismenu" id="menu">
					<c:forEach items="${menuList }" var="menu">
						<li style="cursor:pointer;" onclick="subMenu_go('${menu.mcode }'), goPage('<%=request.getContextPath()%>${menu.murl }','${menu.mcode }')"><a 
							class="has-arrow ai-icon" aria-expanded="true"> <i
								class="${menu.micon}"></i> <span class="nav-text">&nbsp;${menu.mname }</span>
						</a>
							<ul class="nav nav-pills nav-sidebar flex-column subMenuList"
								data-widget="treeview" role="menu" data-accordion="false"
								aria-expanded="false">
							</ul></li>
					</c:forEach>
				</ul>
			</div>
		</div>
		<!--**********************************
            Sidebar end
        ***********************************-->

		<!--**********************************
            Content body start
        ***********************************-->


		<div class="content-body" style="height: 93.8vh;">
			<!-- height 800 -->
			<!-- row -->
			<iframe name="ifr" src="" frameborder="0"
				style="width: 100%; height: 86.4vh;"></iframe>
		</div>
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