<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    
<div class="row">
					<div class="col-xl-6">
						<div class="row">
							<div class="col-xl-12">	
								<div class="card">
									<div class="card-header d-sm-flex d-block pb-0 border-0">
										<div class="mr-auto pr-3">
											<h4 class="text-black fs-20 mb-0">Patient Percentage</h4>
										</div>
										<div class="card-action card-tabs mt-3 mt-sm-0 mt-3 mb-sm-0 mb-3 mt-sm-0">
											<ul class="nav nav-tabs" role="tablist">
												<li class="nav-item">
													<a class="nav-link active" data-toggle="tab" href="#Daily" role="tab">
														Daily
													</a>
												</li>
												<li class="nav-item">
													<a class="nav-link" data-toggle="tab" href="#Weekly" role="tab">
														Weekly
													</a>
												</li>
												<li class="nav-item">
													<a class="nav-link" data-toggle="tab" href="#Monthly" role="tab">
														Monthly
													</a>
												</li>
											</ul>
										</div>
									</div>
									<div class="card-body">
										<div class="tab-content">
											<div class="tab-pane fade show active" id="Daily" role="tabpanel">
												<div class="d-flex flex-wrap align-items-center px-4 bg-light">
													<div class="mr-auto d-flex align-items-center py-3">
														<span class="heart-ai bg-primary mr-3">
															<i class="fa fa-heart-o" aria-hidden="true"></i>
														</span>
														<div>
															<p class="fs-18 mb-2">Total Patient</p>
															<span class="fs-26 text-primary font-w600">562,084</span>
														</div>
													</div>
													<ul class="users pl-3 py-2">
														<li><img src="images/users/1.png" alt=""></li>
														<li><img src="images/users/2.png" alt=""></li>
														<li><img src="images/users/3.png" alt=""></li>
														<li><img src="images/users/4.png" alt=""></li>
														<li><img src="images/users/5.png" alt=""></li>
													</ul>
												</div>
												<div class="row align-items-center">
													<div class="col-xl-6 col-xxl-12 col-md-6">
														<div id="radialBar"></div>
													</div>
													<div class="col-xl-6 col-xxl-12 col-md-6">
														<div class="d-flex mb-4 align-items-center">
															<span class="mr-auto pr-3 font-w500 fs-30 text-black">
																<svg class="mr-3" width="8" height="30" viewBox="0 0 8 30" fill="none" xmlns="http://www.w3.org/2000/svg">
																	<rect width="7.65957" height="30" fill="#BDA25C"/>
																</svg>
																64%
															</span>
															<span>New Patient</span>
														</div>
														<div class="d-flex  mb-4 align-items-center">
															<span class="mr-auto pr-3 font-w500 fs-30 text-black">
																<svg class="mr-3" width="8" height="30" viewBox="0 0 8 30" fill="none" xmlns="http://www.w3.org/2000/svg">
																	<rect width="7.65957" height="30" fill="#209F84"/>
																</svg>
																73%
															</span>
															<span>Recovered</span>
														</div>
														<div class="d-flex align-items-center">
															<span class="mr-auto pr-3 font-w500 fs-30 text-black">
																<svg class="mr-3" width="8" height="30" viewBox="0 0 8 30" fill="none" xmlns="http://www.w3.org/2000/svg">
																	<rect width="7.65957" height="30" fill="#323232"/>
																</svg>
																48%
															</span>
															<span>In Treatment</span>
														</div>
													</div>
												</div>
											</div>
											<div class="tab-pane fade" id="Weekly" role="tabpanel">
												<div class="d-flex flex-wrap align-items-center px-4  bg-light">
													<div class="mr-auto py-3 d-flex align-items-center">
														<span class="heart-ai bg-primary mr-3">
															<i class="fa fa-heart-o" aria-hidden="true"></i>
														</span>
														<div>
															<p class="fs-18 mb-2">Total Patient</p>
															<span class="fs-26 text-primary font-w600">786,360</span>
														</div>
													</div>
													<ul class="users pl-3 py-2">
														<li><img src="images/users/2.png" alt=""></li>
														<li><img src="images/users/4.png" alt=""></li>
														<li><img src="images/users/1.png" alt=""></li>
														<li><img src="images/users/4.png" alt=""></li>
														<li><img src="images/users/3.png" alt=""></li>
													</ul>
												</div>
												<div class="row align-items-center">
													<div class="col-xl-6 col-xxl-12 col-md-6">
														<div id="radialBar2"></div>
													</div>
													<div class="col-xl-6 col-xxl-12 col-md-6">
														<div class="d-flex mb-4 align-items-center">
															<span class="mr-auto pr-3 font-w500 fs-30 text-black">
																<svg class="mr-3" width="8" height="30" viewBox="0 0 8 30" fill="none" xmlns="http://www.w3.org/2000/svg">
																	<rect width="7.65957" height="30" fill="#BDA25C"/>
																</svg>
																40%
															</span>
															<span>New Patient</span>
														</div>
														<div class="d-flex  mb-4 align-items-center">
															<span class="mr-auto pr-3 font-w500 fs-30 text-black">
																<svg class="mr-3" width="8" height="30" viewBox="0 0 8 30" fill="none" xmlns="http://www.w3.org/2000/svg">
																	<rect width="7.65957" height="30" fill="#209F84"/>
																</svg>
																81%
															</span>
															<span>Recovered</span>
														</div>
														<div class="d-flex align-items-center">
															<span class="mr-auto pr-3 font-w500 fs-30 text-black">
																<svg class="mr-3" width="8" height="30" viewBox="0 0 8 30" fill="none" xmlns="http://www.w3.org/2000/svg">
																	<rect width="7.65957" height="30" fill="#323232"/>
																</svg>
																50%
															</span>
															<span>In Treatment</span>
														</div>
													</div>
												</div>
											</div>
											<div class="tab-pane fade" id="Monthly" role="tabpanel">
												<div class="d-flex flex-wrap align-items-center px-4  bg-light">
													<div class="mr-auto py-3 d-flex align-items-center">
														<span class="heart-ai bg-primary mr-3">
															<i class="fa fa-heart-o" aria-hidden="true"></i>
														</span>
														<div>
															<p class="fs-18 mb-2">Total Patient</p>
															<span class="fs-26 text-primary font-w600">356,730</span>
														</div>
													</div>
													<ul class="users pl-3 py-2">
														<li><img src="images/users/2.png" alt=""></li>
														<li><img src="images/users/4.png" alt=""></li>
														<li><img src="images/users/1.png" alt=""></li>
														<li><img src="images/users/4.png" alt=""></li>
														<li><img src="images/users/3.png" alt=""></li>
													</ul>
												</div>
												<div class="row align-items-center">
													<div class="col-xl-6 col-xxl-12 col-md-6">
														<div id="radialBar3"></div>
													</div>
													<div class="col-xl-6 col-xxl-12 col-md-6">
														<div class="d-flex mb-4 align-items-center">
															<span class="mr-auto pr-3 font-w500 fs-30 text-black">
																<svg class="mr-3" width="8" height="30" viewBox="0 0 8 30" fill="none" xmlns="http://www.w3.org/2000/svg">
																	<rect width="7.65957" height="30" fill="#BDA25C"/>
																</svg>
																90%
															</span>
															<span>New Patient</span>
														</div>
														<div class="d-flex  mb-4 align-items-center">
															<span class="mr-auto pr-3 font-w500 fs-30 text-black">
																<svg class="mr-3" width="8" height="30" viewBox="0 0 8 30" fill="none" xmlns="http://www.w3.org/2000/svg">
																	<rect width="7.65957" height="30" fill="#209F84"/>
																</svg>
																75%
															</span>
															<span>Recovered</span>
														</div>
														<div class="d-flex align-items-center">
															<span class="mr-auto pr-3 font-w500 fs-30 text-black">
																<svg class="mr-3" width="8" height="30" viewBox="0 0 8 30" fill="none" xmlns="http://www.w3.org/2000/svg">
																	<rect width="7.65957" height="30" fill="#323232"/>
																</svg>
																30%
															</span>
															<span>In Treatment</span>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-6 col-xxl-12 col-md-6">	
								<div class="card">
									<div class="card-header d-block border-0 pb-0">
										<div class="d-flex mb-3">
											<h3 class="fs-20 text-black mb-0">Patient Overview</h3>
											<div class="dropdown ml-auto">
												<div class="btn-link" data-toggle="dropdown">
													<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
														<path d="M13.0001 12C13.0001 11.4477 12.5523 11 12.0001 11C11.4478 11 11.0001 11.4477 11.0001 12C11.0001 12.5523 11.4478 13 12.0001 13C12.5523 13 13.0001 12.5523 13.0001 12Z" stroke="#2E2E2E" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
														<path d="M6.00006 12C6.00006 11.4477 5.55235 11 5.00006 11C4.44778 11 4.00006 11.4477 4.00006 12C4.00006 12.5523 4.44778 13 5.00006 13C5.55235 13 6.00006 12.5523 6.00006 12Z" stroke="#2E2E2E" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
														<path d="M20.0001 12C20.0001 11.4477 19.5523 11 19.0001 11C18.4478 11 18.0001 11.4477 18.0001 12C18.0001 12.5523 18.4478 13 19.0001 13C19.5523 13 20.0001 12.5523 20.0001 12Z" stroke="#2E2E2E" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
													</svg>
												</div>
												<div class="dropdown-menu dropdown-menu-right">
													<a class="dropdown-item text-black" href="javascript:;">Info</a>
													<a class="dropdown-item text-black" href="javascript:;">Details</a>
												</div>
											</div>
										</div>
										<div class="d-flex">
											<div class="d-flex mr-auto align-items-center">
												<svg width="12" height="54" viewBox="0 0 12 54" fill="none" xmlns="http://www.w3.org/2000/svg">
													<rect width="12" height="54" fill="#BDA25C"/>
												</svg>
												<div class="ml-2">
													<p class="mb-1">New</p>
													<span class="text-black font-w500">451</span>
												</div>
											</div>
											<div class="d-flex align-items-center">
												<svg width="12" height="54" viewBox="0 0 12 54" fill="none" xmlns="http://www.w3.org/2000/svg">
													<rect width="12" height="54" fill="#209F84"/>
												</svg>
												<div class="ml-2">
													<p class="mb-1">Recovered</p>
													<span class="text-black font-w500">623</span>
												</div>
											</div>
										</div>
									</div>
									<div class="card-body p-0">
										<div id="chartTimeline"></div>
									</div>
								</div>
							</div>
							<div class="col-xl-6 col-xxl-12 col-md-6">	
								<div class="card">
									<div class="card-header border-0 pb-0">
										<h3 class="fs-20 text-black mb-0">Visitors</h3>
										<div class="dropdown ml-auto">
											<div class="btn-link" data-toggle="dropdown">
												<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
													<path d="M13.0001 12C13.0001 11.4477 12.5523 11 12.0001 11C11.4478 11 11.0001 11.4477 11.0001 12C11.0001 12.5523 11.4478 13 12.0001 13C12.5523 13 13.0001 12.5523 13.0001 12Z" stroke="#2E2E2E" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
													<path d="M6.00006 12C6.00006 11.4477 5.55235 11 5.00006 11C4.44778 11 4.00006 11.4477 4.00006 12C4.00006 12.5523 4.44778 13 5.00006 13C5.55235 13 6.00006 12.5523 6.00006 12Z" stroke="#2E2E2E" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
													<path d="M20.0001 12C20.0001 11.4477 19.5523 11 19.0001 11C18.4478 11 18.0001 11.4477 18.0001 12C18.0001 12.5523 18.4478 13 19.0001 13C19.5523 13 20.0001 12.5523 20.0001 12Z" stroke="#2E2E2E" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
												</svg>
											</div>
											<div class="dropdown-menu dropdown-menu-right">
												<a class="dropdown-item text-black" href="javascript:;">Info</a>
												<a class="dropdown-item text-black" href="javascript:;">Details</a>
											</div>
										</div>
									</div>
									<div class="card-body pb-0">
										<ul class="users-sm mb-3">
											<li><img src="images/users/6.png" alt=""></li>
											<li><img src="images/users/7.png" alt=""></li>
											<li><img src="images/users/8.png" alt=""></li>
											<li><img src="images/users/9.png" alt=""></li>
											<li><img src="images/users/10.png" alt=""></li>
										</ul>
										<div class="d-flex align-items-center">
											<svg class="mr-3" width="30" height="19" viewBox="0 0 30 19" fill="none" xmlns="http://www.w3.org/2000/svg">
												<path fill-rule="evenodd" clip-rule="evenodd" d="M28.8124 0.990788C29.6459 1.71558 29.734 2.97884 29.0092 3.81236L20.2578 13.8765C18.859 15.4851 16.4444 15.7141 14.7681 14.397L10.6176 11.1359L3.37074 17.9564C2.56639 18.7134 1.30064 18.6751 0.543606 17.8707C-0.213427 17.0664 -0.175071 15.8006 0.629276 15.0436L7.8761 8.22306C9.317 6.86692 11.5329 6.76809 13.0888 7.99059L17.2394 11.2517L25.9908 1.18764C26.7156 0.354128 27.9788 0.265993 28.8124 0.990788Z" fill="#007A64"/>
											</svg>
											<div>
												<p class="fs-12 mb-0">Customer</p>
												<span class="fs-22 text-black font-w600">765 Person</span>
											</div>
										</div>
										<div id="lineChart"></div>
									</div>
								</div>
							</div>
							<div class="col-xl-12">	
								<div class="card rated-doctors">
									<div class="card-header border-0 pb-0">
										<h3 class="fs-20 text-black mb-0 mr-auto">Top Rated Doctors</h3>
										<a href="javascript:void(0)" class="btn-link">More >></a>
									</div>
									<div class="card-body">
										<div class="d-sm-flex pb-sm-4 pb-3 border-bottom mb-sm-4 mb-3 align-items-center">
											<div class="d-flex align-items-center mr-auto pr-2">
												<span class="num mr-sm-4 mr-3">#1</span>
												<img src="images/users/1.jpg" class="img-1 mr-sm-4 mr-3" alt="">
												<div>
													<h4 class="mb-sm-2 mb-1"><a href="doctor.html" class="text-black">Dr. Samantha Queque</a></h4>
													<span class="fs-14 text-primary font-w600">Gynecologist</span>
												</div>
											</div>
											<div class="text-sm-right mt-sm-0 mt-3 star-review">
												<ul>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
												</ul>
												<span class="fs-14 text-black">315 reviews</span>
											</div>
										</div>
										<div class="d-sm-flex pb-sm-4 pb-3 border-bottom mb-sm-4 mb-3 align-items-center">
											<div class="d-flex align-items-center mr-auto pr-2">
												<span class="num mr-sm-4 mr-3">#2</span>
												<img src="images/users/2.jpg" class="img-1 mr-sm-4 mr-3" alt="">
												<div>
													<h4 class="mb-sm-2 mb-1"><a href="doctor.html" class="text-black">Dr. Samuel Jr.</a></h4>
													<span class="fs-14 text-primary font-w600">Gynecologist</span>
												</div>
											</div>
											<div class="text-sm-right mt-sm-0 mt-3 star-review">
												<ul>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
												</ul>
												<span class="fs-14 text-black">221 reviews</span>
											</div>
										</div>
										<div class="d-sm-flex pb-sm-4 pb-3 border-bottom mb-sm-4 mb-3 align-items-center">
											<div class="d-flex align-items-center mr-auto pr-2">
												<span class="num mr-sm-4 mr-3">#3</span>
												<img src="images/users/3.jpg" class="img-1 mr-sm-4 mr-3" alt="">
												<div>
													<h4 class="mb-sm-2 mb-1"><a href="doctor.html" class="text-black">Dr. Jennifer Ruby</a></h4>
													<span class="fs-14 text-primary font-w600">Gynecologist</span>
												</div>
											</div>
											<div class="text-sm-right mt-sm-0 mt-3 star-review">
												<ul>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
												</ul>
												<span class="fs-14 text-black">181 reviews</span>
											</div>
										</div>
										<div class="d-sm-flex pb-sm-4 pb-3 border-bottom mb-sm-4 mb-3 align-items-center">
											<div class="d-flex align-items-center mr-auto pr-2">
												<span class="num mr-sm-4 mr-3">#4</span>
												<img src="images/users/4.jpg" class="img-1 mr-sm-4 mr-3" alt="">
												<div>
													<h4 class="mb-sm-2 mb-1"><a href="doctor.html" class="text-black">Dr. Abdul Aziz Lazis</a></h4>
													<span class="fs-14 text-primary font-w600">Gynecologist</span>
												</div>
											</div>
											<div class="text-sm-right mt-sm-0 mt-3 star-review">
												<ul>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
												</ul>
												<span class="fs-14 text-black">315 reviews</span>
											</div>
										</div>
										<div class="d-sm-flex pb-sm-4 pb-3 border-bottom mb-sm-4 mb-3 align-items-center">
											<div class="d-flex align-items-center mr-auto pr-2">
												<span class="num mr-sm-4 mr-3">#5</span>
												<img src="images/users/5.jpg" class="img-1 mr-sm-4 mr-3" alt="">
												<div>
													<h4 class="mb-sm-2 mb-1"><a href="doctor.html" class="text-black">Dr. Alex Siauw</a></h4>
													<span class="fs-14 text-primary font-w600">Gynecologist</span>
												</div>
											</div>
											<div class="text-sm-right mt-sm-0 mt-3 star-review">
												<ul>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
												</ul>
												<span class="fs-14 text-black">176 reviews</span>
											</div>
										</div>
										<div class="d-sm-flex pb-0 align-items-center">
											<div class="d-flex align-items-center mr-auto pr-2">
												<span class="num mr-sm-4 mr-3">#6</span>
												<img src="images/users/1.jpg" class="img-1 mr-sm-4 mr-3" alt="">
												<div>
													<h4 class="mb-sm-2 mb-1"><a href="doctor.html" class="text-black">Dr. Abdul Aziz Lazis</a></h4>
													<span class="fs-14 text-primary font-w600">Gynecologist</span>
												</div>
											</div>
											<div class="text-sm-right mt-sm-0 mt-3 star-review">
												<ul>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
													<li><i class="fa fa-star" aria-hidden="true"></i></li>
												</ul>
												<span class="fs-14 text-black">315 reviews</span>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-xl-6">
						<div class="row">
							<div class="col-xl-12">	
								<div class="card appointment-schedule">
									<div class="card-header pb-0 border-0">
										<h3 class="fs-20 text-black mb-0">Appointment Schedule</h3>
										<div class="dropdown ml-auto">
											<div class="btn-link p-2 bg-light" data-toggle="dropdown">
												<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
													<path d="M12 13C12.5523 13 13 12.5523 13 12C13 11.4477 12.5523 11 12 11C11.4477 11 11 11.4477 11 12C11 12.5523 11.4477 13 12 13Z" stroke="#2E2E2E" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
													<path d="M12 6C12.5523 6 13 5.55228 13 5C13 4.44772 12.5523 4 12 4C11.4477 4 11 4.44772 11 5C11 5.55228 11.4477 6 12 6Z" stroke="#2E2E2E" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
													<path d="M12 20C12.5523 20 13 19.5523 13 19C13 18.4477 12.5523 18 12 18C11.4477 18 11 18.4477 11 19C11 19.5523 11.4477 20 12 20Z" stroke="#2E2E2E" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
												</svg>
											</div>
											<div class="dropdown-menu dropdown-menu-right">
												<a class="dropdown-item text-black" href="javascript:;">Info</a>
												<a class="dropdown-item text-black" href="javascript:;">Details</a>
											</div>
										</div>
									</div>
									<div class="card-body">
										<div class="row">
											<div class="col-xl-6 col-xxl-12 col-md-6">
												<div class="appointment-calender">
													<input type='text' class="form-control d-none" id='datetimepicker1' />
												</div>
											</div>
											<div class="col-xl-6 col-xxl-12  col-md-6 height415 dz-scroll" id="appointment-schedule">
												<div class="d-flex pb-3 border-bottom mb-3 align-items-end">
													<div class="mr-auto">
														<p class="text-black font-w600 mb-2">Wednesday, June 3th</p>
														<ul>
															<li><i class="las la-clock"></i>09:00 - 10:30 AM</li>
															<li><i class="las la-user"></i>Dr. Samantha</li>
														</ul>
													</div>
													<a href="javascript:void(0)" class="text-success mr-3 mb-2">
														<i class="las la-check-circle scale5"></i>
													</a>
													<a href="javascript:void(0)" class="text-danger mb-2">
														<i class="las la-times-circle scale5"></i>
													</a>
												</div>
												<div class="d-flex pb-3 border-bottom mb-3 align-items-end">
													<div class="mr-auto">
														<p class="text-black font-w600 mb-2">Tuesday,  June 16th</p>
														<ul>
															<li><i class="las la-clock"></i>09:00 - 10:30 AM</li>
															<li><i class="las la-user"></i>Dr. Samantha</li>
														</ul>
													</div>
													<a href="javascript:void(0)" class="text-success mr-3 mb-2">
														<i class="las la-check-circle scale5"></i>
													</a>
													<a href="javascript:void(0)" class="text-danger mb-2">
														<i class="las la-times-circle scale5"></i>
													</a>
												</div>
												<div class="d-flex pb-3 border-bottom mb-3 align-items-end">
													<div class="mr-auto">
														<p class="text-black font-w600 mb-2">Saturday, June 27th</p>
														<ul>
															<li><i class="las la-clock"></i>09:00 - 10:30 AM</li>
															<li><i class="las la-user"></i>Dr. Samantha</li>
														</ul>
													</div>
													<a href="javascript:void(0)" class="text-success mr-3 mb-2">
														<i class="las la-check-circle scale5"></i>
													</a>
													<a href="javascript:void(0)" class="text-danger mb-2">
														<i class="las la-times-circle scale5"></i>
													</a>
												</div>
												<div class="d-flex pb-3 border-bottom mb-3 align-items-end">
													<div class="mr-auto">
														<p class="text-black font-w600 mb-2">Wednesday, June 3th</p>
														<ul>
															<li><i class="las la-clock"></i>09:00 - 10:30 AM</li>
															<li><i class="las la-user"></i>Dr. Samantha</li>
														</ul>
													</div>
													<a href="javascript:void(0)" class="text-success mr-3 mb-2">
														<i class="las la-check-circle scale5"></i>
													</a>
													<a href="javascript:void(0)" class="text-danger mb-2">
														<i class="las la-times-circle scale5"></i>
													</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
							<div class="col-xl-12">	
								<div class="card">
									<div class="card-header border-0 pb-0">
										<h3 class="fs-20 text-black mb-0 mr-2">Revenue Summary</h3>
										<div class="dropdown mt-sm-0 mt-3">
											<button type="button" class="btn bg-light text-primary dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
												2020
											</button>
											<div class="dropdown-menu dropdown-menu-right">
												<a class="dropdown-item" href="javascript:void(0);">2020</a>
												<a class="dropdown-item" href="javascript:void(0);">2021</a>
												<a class="dropdown-item" href="javascript:void(0);">2022</a>
											</div>
										</div>
									</div>
									<div class="card-body pt-0">
										<div id="chartBar"></div>
									</div>
								</div>
							</div>
							<div class="col-xl-12">	
								<div class="card patient-activity">
									<div class="card-header border-0 pb-0">
										<h3 class="fs-20 text-black mb-0">Recent Patient Activity</h3>
										<div class="dropdown ml-auto">
											<div class="btn-link" data-toggle="dropdown">
												<svg width="24" height="24" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg">
													<path d="M13.0001 12C13.0001 11.4477 12.5523 11 12.0001 11C11.4478 11 11.0001 11.4477 11.0001 12C11.0001 12.5523 11.4478 13 12.0001 13C12.5523 13 13.0001 12.5523 13.0001 12Z" stroke="#2E2E2E" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
													<path d="M6.00006 12C6.00006 11.4477 5.55235 11 5.00006 11C4.44778 11 4.00006 11.4477 4.00006 12C4.00006 12.5523 4.44778 13 5.00006 13C5.55235 13 6.00006 12.5523 6.00006 12Z" stroke="#2E2E2E" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
													<path d="M20.0001 12C20.0001 11.4477 19.5523 11 19.0001 11C18.4478 11 18.0001 11.4477 18.0001 12C18.0001 12.5523 18.4478 13 19.0001 13C19.5523 13 20.0001 12.5523 20.0001 12Z" stroke="#2E2E2E" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path>
												</svg>
											</div>
											<div class="dropdown-menu dropdown-menu-right">
												<a class="dropdown-item text-black" href="javascript:;">Info</a>
												<a class="dropdown-item text-black" href="javascript:;">Details</a>
											</div>
										</div>
									</div>
									<div class="card-body pb-0" >
										<div class="table-responsive height720 dz-scroll" id="patient-activity">
											<table class="table table-responsive-sm">
												<tbody>
													<tr>
														<td>
															<div class="d-flex">
																<img src="images/users/6.jpg" alt="" class="img-2 mr-3">
																<div>
																	<h6 class="fs-16 mb-1"><a href="patient.html" class="text-black">Roby Romeo</a></h6>
																	<span class="fs-14">41 Years Old</span>
																</div>
															</div>
														</td>
														<td>
															<div>
																<p class="fs-14 mb-1">Disease</p>
																<span class="text-primary font-w600 mb-auto">Allergies & Asthma</span>
															</div>
														</td>
														<td>
															<div>
																<p class="fs-14 mb-1">Status</p>
																<span class="text-primary font-w600 mb-2 d-block text-nowrap">Recovered</span>
																<p class="mb-0 fs-12">22/03/2020 12:34 AM</p>
															</div>
														</td>
													</tr>
													<tr>
														<td>
															<div class="d-flex">
																<img src="images/users/7.jpg" alt="" class="img-2 mr-3">
																<div>
																	<h6 class="fs-16 mb-1"><a href="patient.html" class="text-black">Angela Nurhayati</a></h6>
																	<span class="fs-14">21 Years Old</span>
																</div>
															</div>
														</td>
														<td>
															<div>
																<p class="fs-14 mb-1">Disease</p>
																<span class="text-primary font-w600 mb-auto">Sleep Problem</span>
															</div>
														</td>
														<td>
															<div>
																<p class="fs-14 mb-1">Status</p>
																<span class="text-danger font-w600 mb-2 text-nowrap d-block">New Patient</span>
																<p class="mb-0 fs-12">22/03/2020 12:34 AM</p>
															</div>
														</td>
													</tr>
													<tr>
														<td>
															<div class="d-flex">
																<img src="images/users/8.jpg" alt="" class="img-2 mr-3">
																<div>
																	<h6 class="fs-16 mb-1"><a href="patient.html" class="text-black">James Robinson</a></h6>
																	<span class="fs-14">41 Years Old</span>
																</div>
															</div>
														</td>
														<td>
															<div>
																<p class="fs-14 mb-1">Disease</p>
																<span class="text-primary font-w600 mb-auto">Dental Care</span>
															</div>
														</td>
														<td>
															<div>
																<p class="fs-14 mb-1">Status</p>
																<span class="text-warning font-w600 mb-2 text-nowrap d-block">In Treatment</span>
																<p class="mb-0 fs-12">22/03/2020 12:34 AM</p>
															</div>
														</td>
													</tr>
													<tr>
														<td>
															<div class="d-flex">
																<img src="images/users/9.jpg" alt="" class="img-2 mr-3">
																<div>
																	<h6 class="fs-16 mb-1"><a href="patient.html" class="text-black">Thomas Jaja</a></h6>
																	<span class="fs-14">7 Years Old</span>
																</div>
															</div>
														</td>
														<td>
															<div>
																<p class="fs-14 mb-1">Disease</p>
																<span class="text-primary font-w600 mb-auto">Diabetes</span>
															</div>
														</td>
														<td>
															<div>
																<p class="fs-14 mb-1">Status</p>
																<span class="text-danger font-w600 mb-2 text-nowrap d-block">New Patient</span>
																<p class="mb-0 fs-12">22/03/2020 12:34 AM</p>
															</div>
														</td>
													</tr>
													<tr>
														<td>
															<div class="d-flex">
																<img src="images/users/10.jpg" alt="" class="img-2 mr-3">
																<div>
																	<h6 class="fs-16 mb-1"><a href="patient.html" class="text-black">Cindy Brownleee</a></h6>
																	<span class="fs-14">71 Years Old</span>
																</div>
															</div>
														</td>
														<td>
															<div>
																<p class="fs-14 mb-1">Disease</p>
																<span class="text-primary font-w600 mb-auto">Covid-19 Suspect</span>
															</div>
														</td>
														<td>
															<div>
																<p class="fs-14 mb-1">Status</p>
																<span class="text-warning font-w600 text-nowrap mb-2 d-block">In Treatment</span>
																<p class="mb-0 fs-12">22/03/2020 12:34 AM</p>
															</div>
														</td>
													</tr>
													<tr>
														<td>
															<div class="d-flex">
																<img src="images/users/11.jpg" alt="" class="img-2 mr-3">
																<div>
																	<h6 class="fs-16 mb-1"><a href="patient.html" class="text-black">Oconner Jr.</a></h6>
																	<span class="fs-14">17 Years Old</span>
																</div>
															</div>
														</td>
														<td>
															<div>
																<p class="fs-14 mb-1">Disease</p>
																<span class="text-primary font-w600 mb-auto">Dental Care</span>
															</div>
														</td>
														<td>
															<div>
																<p class="fs-14 mb-1">Status</p>
																<span class="text-primary font-w600 mb-2 text-nowrap d-block">Recovered</span>
																<p class="mb-0 fs-12">22/03/2020 12:34 AM</p>
															</div>
														</td>
													</tr>
													<tr>
														<td>
															<div class="d-flex">
																<img src="images/users/7.jpg" alt="" class="img-2 mr-3">
																<div>
																	<h6 class="fs-16 mb-1"><a href="patient.html" class="text-black">Angela Nurhayati</a></h6>
																	<span class="fs-14">21 Years Old</span>
																</div>
															</div>
														</td>
														<td>
															<div>
																<p class="fs-14 mb-1">Disease</p>
																<span class="text-primary font-w600 mb-auto">Sleep Problem</span>
															</div>
														</td>
														<td>
															<div>
																<p class="fs-14 mb-1">Status</p>
																<span class="text-danger font-w600 mb-2 text-nowrap d-block">New Patient</span>
																<p class="mb-0 fs-12">22/03/2020 12:34 AM</p>
															</div>
														</td>
													</tr>
													<tr>
														<td>
															<div class="d-flex">
																<img src="images/users/8.jpg" alt="" class="img-2 mr-3">
																<div>
																	<h6 class="fs-16 mb-1"><a href="patient.html" class="text-black">James Robinson</a></h6>
																	<span class="fs-14">41 Years Old</span>
																</div>
															</div>
														</td>
														<td>
															<div>
																<p class="fs-14 mb-1">Disease</p>
																<span class="text-primary font-w600 mb-auto">Dental Care</span>
															</div>
														</td>
														<td>
															<div>
																<p class="fs-14 mb-1">Status</p>
																<span class="text-warning font-w600 mb-2 d-block text-nowrap">In Treatment</span>
																<p class="mb-0 fs-12">22/03/2020 12:34 AM</p>
															</div>
														</td>
													</tr>
													<tr>
														<td>
															<div class="d-flex">
																<img src="images/users/9.jpg" alt="" class="img-2 mr-3">
																<div>
																	<h6 class="fs-16 mb-1"><a href="patient.html" class="text-black">Thomas Jaja</a></h6>
																	<span class="fs-14">7 Years Old</span>
																</div>
															</div>
														</td>
														<td>
															<div>
																<p class="fs-14 mb-1">Disease</p>
																<span class="text-primary font-w600 mb-auto">Diabetes</span>
															</div>
														</td>
														<td>
															<div>
																<p class="fs-14 mb-1">Status</p>
																<span class="text-danger font-w600 mb-2 d-block text-nowrap">New Patient</span>
																<p class="mb-0 fs-12">22/03/2020 12:34 AM</p>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div class="card-footer text-center border-0">
										<a href="patient.html" class="btn-link">See More >></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>