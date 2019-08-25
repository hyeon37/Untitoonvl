<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용 안하고 참고로 두는용도의 jsp</title>
</head>
<body>

<!-- 템플릿 사이트
	http://demo.themefisher.com/demos/?theme=focus
 -->

	<div
		class="sidebar sidebar-hide-to-small sidebar-shrink sidebar-gestures">
		<div class="nano">
			<div class="nano-content">
			
				<!-- 접었다 펴는 메뉴바부분 (사이드바) -->
				<div class="float-right">
					<div class="hamburger sidebar-toggle">
						<span class="line"></span>
						<span class="line"></span>
						<span class="line"></span>
					</div>
				</div>
				<!-- ====================== -->
				
				<div class="logo">
					<a href="index.jsp"> <img src="assets/images/logo.png" alt="" />
						<span>Untitoonvl</span>
					</a>
				</div>
				
				<ul>
					<li>
						<form role="form" class="login form-inline" action="login-action.dft" method="post">
					<span>
					
					
<!-- 							<div class="form-group"> -->
								 
								<label for="user_id">
									아이디 : 
								</label>
								<input type="text" class="form-control input-default" id="user_id" name="user_id" style="font-size:16px;" /><br>
								
								
<!-- 							</div> -->
<!-- 							<div class="form-group"> -->
								 
								<label for="user_pw">
									비밀번호 : 
								</label>
								<input type="password" class="form-control input-default" id="user_pw" name="user_pw" style="font-size:16px;"/><br>
								
								
<!-- 							</div> -->
<!-- 							<br> -->
<!-- 							<div class="checkbox"> -->


								<br>
								<label class="checkbox">
									<input type="checkbox" /> 로그인 유지
								</label>
								
								
<!-- 							</div>  -->


							<button type="submit" class="btn btn-primary">
								로그인
							</button>
							<button type="button" class="btn btn-info" id="signup">
								회원가입
							</button>
					</span>
						</form>
					</li>
				</ul>
				<span>
				<br><br>
				</span>
			</div>
		</div>
	</div>
	
	<!-- 사이드바 -->

	<div class="header">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-12">
						사이드바 아래에 위치
						헤더 부분 사이드바로 옮기고 없앰
						후에 분류별 작품 보이는 메뉴바로 사용
				</div>
			</div>
		</div>
	</div>

<!-- 알림/메세지/개인정보 부분 -->
				<div class="float-right">
					<ul>

						<li class="header-icon dib"><i class="ti-bell"></i>
							<div class="drop-down">
								<div class="dropdown-content-heading">
									<span class="text-left">Recent Notifications</span>
								</div>
								<div class="dropdown-content-body">
									<ul>
										<li><a href="#"> <img
												class="pull-left m-r-10 avatar-img"
												src="resource/assets/images/avatar/3.jpg" alt="" />
												<div class="notification-content">
													<small class="notification-timestamp pull-right">02:34
														PM</small>
													<div class="notification-heading">Mr. John</div>
													<div class="notification-text">5 members joined today</div>
												</div>
										</a></li>
										<li><a href="#"> <img
												class="pull-left m-r-10 avatar-img"
												src="resource/assets/images/avatar/3.jpg" alt="" />
												<div class="notification-content">
													<small class="notification-timestamp pull-right">02:34
														PM</small>
													<div class="notification-heading">Mariam</div>
													<div class="notification-text">likes a photo of you</div>
												</div>
										</a></li>
										<li><a href="#"> <img
												class="pull-left m-r-10 avatar-img"
												src="resource/assets/images/avatar/3.jpg" alt="" />
												<div class="notification-content">
													<small class="notification-timestamp pull-right">02:34
														PM</small>
													<div class="notification-heading">Tasnim</div>
													<div class="notification-text">Hi Teddy, Just wanted
														to let you ...</div>
												</div>
										</a></li>
										<li><a href="#"> <img
												class="pull-left m-r-10 avatar-img"
												src="resource/assets/images/avatar/3.jpg" alt="" />
												<div class="notification-content">
													<small class="notification-timestamp pull-right">02:34
														PM</small>
													<div class="notification-heading">Mr. John</div>
													<div class="notification-text">Hi Teddy, Just wanted
														to let you ...</div>
												</div>
										</a></li>
										<li class="text-center"><a href="#" class="more-link">See
												All</a></li>
									</ul>
								</div>
							</div></li>
						<li class="header-icon dib"><i class="ti-email"></i>
							<div class="drop-down">
								<div class="dropdown-content-heading">
									<span class="text-left">2 New Messages</span> <a
										href="email.html"><i class="ti-pencil-alt pull-right"></i></a>
								</div>
								<div class="dropdown-content-body">
									<ul>
										<li class="notification-unread"><a href="#"> <img
												class="pull-left m-r-10 avatar-img"
												src="resource/assets/images/avatar/1.jpg" alt="" />
												<div class="notification-content">
													<small class="notification-timestamp pull-right">02:34
														PM</small>
													<div class="notification-heading">Michael Qin</div>
													<div class="notification-text">Hi Teddy, Just wanted
														to let you ...</div>
												</div>
										</a></li>
										<li class="notification-unread"><a href="#"> <img
												class="pull-left m-r-10 avatar-img"
												src="resource/assets/images/avatar/2.jpg" alt="" />
												<div class="notification-content">
													<small class="notification-timestamp pull-right">02:34
														PM</small>
													<div class="notification-heading">Mr. John</div>
													<div class="notification-text">Hi Teddy, Just wanted
														to let you ...</div>
												</div>
										</a></li>
										<li><a href="#"> <img
												class="pull-left m-r-10 avatar-img"
												src="resource/assets/images/avatar/3.jpg" alt="" />
												<div class="notification-content">
													<small class="notification-timestamp pull-right">02:34
														PM</small>
													<div class="notification-heading">Michael Qin</div>
													<div class="notification-text">Hi Teddy, Just wanted
														to let you ...</div>
												</div>
										</a></li>
										<li><a href="#"> <img
												class="pull-left m-r-10 avatar-img"
												src="resource/assets/images/avatar/2.jpg" alt="" />
												<div class="notification-content">
													<small class="notification-timestamp pull-right">02:34
														PM</small>
													<div class="notification-heading">Mr. John</div>
													<div class="notification-text">Hi Teddy, Just wanted
														to let you ...</div>
												</div>
										</a></li>
										<li class="text-center"><a href="#" class="more-link">See
												All</a></li>
									</ul>
								</div>
							</div></li>
						<li class="header-icon dib"><span class="user-avatar">John
								<i class="ti-angle-down f-s-10"></i>
						</span>
							<div class="drop-down dropdown-profile">
								<div class="dropdown-content-heading">
									<span class="text-left">Upgrade Now</span>
									<p class="trial-day">30 Days Trail</p>
								</div>
								<div class="dropdown-content-body">
									<ul>
										<li><a href="#"><i class="ti-user"></i> <span>Profile</span></a></li>

										<li><a href="#"><i class="ti-email"></i> <span>Inbox</span></a></li>
										<li><a href="#"><i class="ti-settings"></i> <span>Setting</span></a></li>

										<li><a href="#"><i class="ti-lock"></i> <span>Lock
													Screen</span></a></li>
										<li><a href="#"><i class="ti-power-off"></i> <span>Logout</span></a></li>
									</ul>
								</div>
							</div></li>
					</ul>
				</div>
				<!-- =============== -->
				
				
								<ul>
<!-- 					<li class="label">Main</li> -->
					
<!-- 					<li> -->
<!-- 					<li class="active"> -->
<!-- 						<a class="sidebar-sub-toggle"> -->
<!-- 						<i class="ti-home"></i> 대문으로 돌아가기 -->
<!-- 							<span class="badge badge-primary">2</span> -->
<!-- 							<span class="sidebar-collapse-icon"></span></a> -->
<!-- 						<ul> -->
<!-- 							<li><a href="index.html">Dashboard 1</a></li> -->
<!-- 							<li><a href="index1.html">Dashboard 2</a></li> -->
<!-- 						</ul> -->
<!-- 					</li> -->
	
					<li class="label">나의 내역</li>

					<li>
						<!-- 					<li class="active"> --> 
						<a class="sidebar-sub-toggle">
						<i class="ti-user"></i> 내 정보
						<!-- 					<span class="badge badge-primary">2</span> -->
<!-- 						<span class="sidebar-collapse-icon ti-angle-down"></span> -->
					</a>
<!-- 						<ul> -->
<!-- 							<li><a href="index.html">Dashboard 1</a></li> -->
<!-- 							<li><a href="index1.html">Dashboard 2</a></li> -->
<!-- 						</ul> -->
					</li>

					<li>
						<!-- 					<li class="active"> -->
						<a class="sidebar-sub-toggle">
						<i class="ti-bell"></i> 최근 알림
						<!-- 					 <span class="badge badge-primary">2</span> -->
<!-- 						<span class="sidebar-collapse-icon ti-angle-down"></span> -->
					</a>
<!-- 						<ul> -->
<!-- 							<li><a href="index.html">Dashboard 1</a></li> -->
<!-- 							<li><a href="index1.html">Dashboard 2</a></li> -->
<!-- 						</ul> -->
					</li>

					<li>
						<!-- 					<li class="active"> -->
						<a class="sidebar-sub-toggle">
						<i class="ti-email"></i> 메세지
						<!-- 					 <span class="badge badge-primary">2</span> -->
<!-- 						<span class="sidebar-collapse-icon ti-angle-down"></span> -->
					</a>
<!-- 						<ul> -->
<!-- 							<li><a href="index.html">Dashboard 1</a></li> -->
<!-- 							<li><a href="index1.html">Dashboard 2</a></li> -->
<!-- 						</ul> -->
					</li>



					
				<!-- 사이드바 부분 -->
					<li class="label">Apps</li>
					<li><a class="sidebar-sub-toggle"><i
							class="ti-bar-chart-alt"></i> Charts <span
							class="sidebar-collapse-icon ti-angle-down"></span></a>
						<ul>
							<li><a href="chart-flot.html">Flot</a></li>
							<li><a href="chart-morris.html">Morris</a></li>
							<li><a href="chartjs.html">Chartjs</a></li>
							<li><a href="chartist.html">Chartist</a></li>
							<li><a href="chart-peity.html">Peity</a></li>
							<li><a href="chart-sparkline.html">Sparkle</a></li>
							<li><a href="chart-knob.html">Knob</a></li>
						</ul></li>
					<li><a href="app-event-calender.html"><i
							class="ti-calendar"></i> Calender </a></li>
					<li><a href="app-email.html"><i class="ti-email"></i>
							Email</a></li>
					<li><a href="app-profile.html"><i class="ti-user"></i>
							Profile</a></li>
					<li><a href="app-widget-card.html"><i
							class="ti-layout-grid2-alt"></i> Widget</a></li>

					<li class="label">Features</li>
					<li><a class="sidebar-sub-toggle"><i class="ti-layout"></i>
							UI Elements <span class="sidebar-collapse-icon ti-angle-down"></span></a>
						<ul>
							<li><a href="ui-typography.html">Typography</a></li>
							<li><a href="ui-alerts.html">Alerts</a></li>

							<li><a href="ui-button.html">Button</a></li>
							<li><a href="ui-dropdown.html">Dropdown</a></li>

							<li><a href="ui-list-group.html">List Group</a></li>

							<li><a href="ui-progressbar.html">Progressbar</a></li>
							<li><a href="ui-tab.html">Tab</a></li>

						</ul></li>
					<li><a class="sidebar-sub-toggle"><i class="ti-panel"></i>
							Components <span class="sidebar-collapse-icon ti-angle-down"></span></a>
						<ul>
							<li><a href="uc-calendar.html">Calendar</a></li>
							<li><a href="uc-carousel.html">Carousel</a></li>
							<li><a href="uc-weather.html">Weather</a></li>
							<li><a href="uc-datamap.html">Datamap</a></li>
							<li><a href="uc-todo-list.html">To do</a></li>
							<li><a href="uc-scrollable.html">Scrollable</a></li>
							<li><a href="uc-sweetalert.html">Sweet Alert</a></li>
							<li><a href="uc-toastr.html">Toastr</a></li>
							<li><a href="uc-range-slider-basic.html">Basic Range
									Slider</a></li>
							<li><a href="uc-range-slider-advance.html">Advance Range
									Slider</a></li>
							<li><a href="uc-nestable.html">Nestable</a></li>

							<li><a href="uc-rating-bar-rating.html">Bar Rating</a></li>
							<li><a href="uc-rating-jRate.html">jRate</a></li>
						</ul></li>
					<li><a class="sidebar-sub-toggle"><i
							class="ti-layout-grid4-alt"></i> Table <span
							class="sidebar-collapse-icon ti-angle-down"></span></a>
						<ul>
							<li><a href="table-basic.html">Basic</a></li>

							<li><a href="table-export.html">Datatable Export</a></li>
							<li><a href="table-row-select.html">Datatable Row Select</a></li>
							<li><a href="table-jsgrid.html">Editable </a></li>
						</ul></li>
					<li><a class="sidebar-sub-toggle"><i class="ti-heart"></i>
							Icons <span class="sidebar-collapse-icon ti-angle-down"></span></a>
						<ul>
							<li><a href="font-themify.html">Themify</a></li>
						</ul></li>
					<li><a class="sidebar-sub-toggle"><i class="ti-map"></i>
							Maps <span class="sidebar-collapse-icon ti-angle-down"></span></a>
						<ul>
							<li><a href="gmaps.html">Basic</a></li>
							<li><a href="vector-map.html">Vector Map</a></li>
						</ul></li>

					<li class="label">Form</li>
					<li><a href="form-basic.html"><i class="ti-view-list-alt"></i>
							Basic Form </a></li>
					<li class="label">Extra</li>
					<li><a class="sidebar-sub-toggle"><i class="ti-files"></i>
							Invoice <span class="sidebar-collapse-icon ti-angle-down"></span></a>
						<ul>
							<li><a href="invoice.html">Basic</a></li>
							<li><a href="invoice-editable.html">Editable</a></li>
						</ul></li>
					<li><a class="sidebar-sub-toggle"><i class="ti-target"></i>
							Pages <span class="sidebar-collapse-icon ti-angle-down"></span></a>
						<ul>
							<li><a href="page-login.html">Login</a></li>
							<li><a href="page-register.html">Register</a></li>
							<li><a href="page-reset-password.html">Forgot password</a></li>
						</ul></li>
					<li><a href="/documentation/index.html"><i class="ti-file"></i>
							Documentation</a></li>
					<li><a><i class="ti-close"></i> Logout</a></li>
				</ul>

	<!-- /# sidebar -->
	
	
					<!-- /# column -->
				<div class="col-lg-4 p-l-0 title-margin-left">
					<div class="page-header">
						<div class="page-title">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="#">Dashboard</a></li>
								<li class="breadcrumb-item active">Home</li>
							</ol>
						</div>
					</div>
				</div>
				<!-- /# column -->
				
				
				<!-- 메인 내용 -->
	<div class="content-wrap">
		<div class="main">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-8 p-r-0 title-margin-right">
						<div class="page-header">
							<div class="page-title">
								<h1>
									Hello, <span>Welcome Here</span>
								</h1>
							</div>
						</div>
					</div>
					<div class="col-lg-12" style="align:center;">
						<div class="carousel slide" id="carousel-348738">
							<ol class="carousel-indicators">
								<li data-slide-to="0" data-target="#carousel-348738" class="active">
								</li>
								<li data-slide-to="1" data-target="#carousel-348738">
								</li>
								<li data-slide-to="2" data-target="#carousel-348738">
								</li>
							</ol>
							<div class="carousel-inner">
								<div class="carousel-item active">
									<img class="d-block w-100" alt="Carousel Bootstrap First" src="resource/assets/images/banners/event_banner_1.jpg" />
<!-- 									<div class="carousel-caption"> -->
<!-- 										<h4> -->
<!-- 											First Thumbnail label -->
<!-- 										</h4> -->
<!-- 										<p> -->
<!-- 											Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit. -->
<!-- 										</p> -->
<!-- 									</div> -->
								</div>
								<div class="carousel-item">
									<img class="d-block w-100" alt="Carousel Bootstrap Second" src="resource/assets/images/banners/event_banner_2.jpg" />
<!-- 									<div class="carousel-caption"> -->
<!-- 										<h4> -->
<!-- 											Second Thumbnail label -->
<!-- 										</h4> -->
<!-- 										<p> -->
<!-- 											Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit. -->
<!-- 										</p> -->
<!-- 									</div> -->
								</div>
								<div class="carousel-item">
									<img class="d-block w-100" alt="Carousel Bootstrap Third" src="resource/assets/images/banners/event_banner_3.jpg" />
<!-- 									<div class="carousel-caption"> -->
<!-- 										<h4> -->
<!-- 											Third Thumbnail label -->
<!-- 										</h4> -->
<!-- 										<p> -->
<!-- 											Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit. -->
<!-- 										</p> -->
<!-- 									</div> -->
								</div>
							</div> <a class="carousel-control-prev" href="#carousel-348738" data-slide="prev"><span class="carousel-control-prev-icon"></span> <span class="sr-only">Previous</span></a> <a class="carousel-control-next" href="#carousel-348738" data-slide="next"><span class="carousel-control-next-icon"></span> <span class="sr-only">Next</span></a>
						</div>
			
					</div>

				</div>
				
				
				/# row
				<section id="main-content">
					<div class="row">
						<div class="col-lg-3">
							<div class="card">
								<div class="stat-widget-two">
									<div class="stat-content">
										<div class="stat-text">Today Expenses</div>
										<div class="stat-digit">
											<i class="fa fa-usd"></i>8500
										</div>
									</div>
									<div class="progress">
										<div class="progress-bar progress-bar-success w-85"
											role="progressbar" aria-valuenow="85" aria-valuemin="0"
											aria-valuemax="100"></div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3">
							<div class="card">
								<div class="stat-widget-two">
									<div class="stat-content">
										<div class="stat-text">Income Detail</div>
										<div class="stat-digit">
											<i class="fa fa-usd"></i>7800
										</div>
									</div>
									<div class="progress">
										<div class="progress-bar progress-bar-primary w-75"
											role="progressbar" aria-valuenow="78" aria-valuemin="0"
											aria-valuemax="100"></div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3">
							<div class="card">
								<div class="stat-widget-two">
									<div class="stat-content">
										<div class="stat-text">Task Completed</div>
										<div class="stat-digit">
											<i class="fa fa-usd"></i> 500
										</div>
									</div>
									<div class="progress">
										<div class="progress-bar progress-bar-warning w-50"
											role="progressbar" aria-valuenow="50" aria-valuemin="0"
											aria-valuemax="100"></div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-3">
							<div class="card">
								<div class="stat-widget-two">
									<div class="stat-content">
										<div class="stat-text">Task Completed</div>
										<div class="stat-digit">
											<i class="fa fa-usd"></i>650
										</div>
									</div>
									<div class="progress">
										<div class="progress-bar progress-bar-danger w-65"
											role="progressbar" aria-valuenow="65" aria-valuemin="0"
											aria-valuemax="100"></div>
									</div>
								</div>
							</div>
							/# card
						</div>
						/# column
					</div>
					/# row


					<div class="row">
						column
						<div class="col-lg-8">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Sales Overview</h4>
									<div id="morris-bar-chart"></div>
								</div>
							</div>
						</div>
						column
						<div class="col-md-4">
							<div class="card text-center">
								<div class="m-t-10">
									<p>Customer Feedback</p>
									<h5>385749</h5>
								</div>
								<div class="widget-card-circle pr m-t-20 m-b-20"
									id="info-circle-card">
									<i class="ti-control-shuffle pa"></i>
								</div>
								<ul class="widget-line-list m-b-15">
									<li class="border-right">92% <br> <span
										class="color-success"><i class="ti-hand-point-up"></i>
											Positive</span></li>
									<li>8% <br> <span class="color-danger"><i
											class="ti-hand-point-down"></i>Negative</span></li>
								</ul>
							</div>
						</div>

					</div>

					<div class="row">
						<div class="col-lg-4">
							<div class="card">
								<div class="card-title">
									<h4>Project</h4>
								</div>
								<div class="card-body">
									<div class="current-progress">
										<div class="progress-content">
											<div class="row">
												<div class="col-lg-4">
													<div class="progress-text">Website</div>
												</div>
												<div class="col-lg-8">
													<div class="current-progressbar">
														<div class="progress">
															<div class="progress-bar progress-bar-primary w-40"
																role="progressbar" aria-valuenow="40" aria-valuemin="0"
																aria-valuemax="100">40%</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="progress-content">
											<div class="row">
												<div class="col-lg-4">
													<div class="progress-text">Android</div>
												</div>
												<div class="col-lg-8">
													<div class="current-progressbar">
														<div class="progress">
															<div class="progress-bar progress-bar-primary w-60"
																role="progressbar" aria-valuenow="60" aria-valuemin="0"
																aria-valuemax="100">60%</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="progress-content">
											<div class="row">
												<div class="col-lg-4">
													<div class="progress-text">Ios</div>
												</div>
												<div class="col-lg-8">
													<div class="current-progressbar">
														<div class="progress">
															<div class="progress-bar progress-bar-primary w-70"
																role="progressbar" aria-valuenow="70" aria-valuemin="0"
																aria-valuemax="100">70%</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="progress-content">
											<div class="row">
												<div class="col-lg-4">
													<div class="progress-text">Mobile</div>
												</div>
												<div class="col-lg-8">
													<div class="current-progressbar">
														<div class="progress">
															<div class="progress-bar progress-bar-primary w-90"
																role="progressbar" aria-valuenow="90" aria-valuemin="0"
																aria-valuemax="100">90%</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						/# column
						<div class="col-lg-4">
							<div class="card bg-primary">
								<div class="weather-widget">
									<div id="weather-one" class="weather-one p-22"></div>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="card">
								<div class="testimonial-widget-one p-17">
									<div class="testimonial-widget-one owl-carousel owl-theme">
										<div class="item">
											<div class="testimonial-content">
												<div class="testimonial-text">
													<i class="fa fa-quote-left"></i> Lorem ipsum dolor sit
													amet, consectetur adipisicing elit, sed do eiusmod tempor
													incididunt ut labore et dolore magna aliqua. Ut enim ad
													minim veniam, quis nostrud exercitation. consectetur
													adipisicing elit. <i class="fa fa-quote-right"></i>
												</div>
												<img class="testimonial-author-img"
													src="resource/assets/images/avatar/1.jpg" alt="" />
												<div class="testimonial-author">TYRION LANNISTER</div>
												<div class="testimonial-author-position">Founder-Ceo.
													Dell Corp</div>
											</div>
										</div>
										<div class="item">
											<div class="testimonial-content">
												<div class="testimonial-text">
													<i class="fa fa-quote-left"></i> Lorem ipsum dolor sit
													amet, consectetur adipisicing elit, sed do eiusmod tempor
													incididunt ut labore et dolore magna aliqua. Ut enim ad
													minim veniam, quis nostrud exercitation. consectetur
													adipisicing elit. <i class="fa fa-quote-right"></i>
												</div>
												<img class="testimonial-author-img"
													src="resource/assets/images/avatar/1.jpg" alt="" />
												<div class="testimonial-author">TYRION LANNISTER</div>
												<div class="testimonial-author-position">Founder-Ceo.
													Dell Corp</div>
											</div>
										</div>
										<div class="item">
											<div class="testimonial-content">
												<div class="testimonial-text">
													<i class="fa fa-quote-left"></i> Lorem ipsum dolor sit
													amet, consectetur adipisicing elit, sed do eiusmod tempor
													incididunt ut labore et dolore magna aliqua. Ut enim ad
													minim veniam, quis nostrud exercitation. consectetur
													adipisicing elit. <i class="fa fa-quote-right"></i>
												</div>
												<img class="testimonial-author-img"
													src="resource/assets/images/avatar/1.jpg" alt="" />
												<div class="testimonial-author">TYRION LANNISTER</div>
												<div class="testimonial-author-position">Founder-Ceo.
													Dell Corp</div>
											</div>
										</div>
										<div class="item">
											<div class="testimonial-content">
												<div class="testimonial-text">
													<i class="fa fa-quote-left"></i> Lorem ipsum dolor sit
													amet, consectetur adipisicing elit, sed do eiusmod tempor
													incididunt ut labore et dolore magna aliqua. Ut enim ad
													minim veniam, quis nostrud exercitation. consectetur
													adipisicing elit. <i class="fa fa-quote-right"></i>
												</div>
												<img class="testimonial-author-img"
													src="resource/assets/images/avatar/1.jpg" alt="" />
												<div class="testimonial-author">TYRION LANNISTER</div>
												<div class="testimonial-author-position">Founder-Ceo.
													Dell Corp</div>
											</div>
										</div>
										<div class="item">
											<div class="testimonial-content">
												<div class="testimonial-text">
													<i class="fa fa-quote-left"></i> Lorem ipsum dolor sit
													amet, consectetur adipisicing elit, sed do eiusmod tempor
													incididunt ut labore et dolore magna aliqua. Ut enim ad
													minim veniam, quis nostrud exercitation. consectetur
													adipisicing elit. <i class="fa fa-quote-right"></i>
												</div>
												<img class="testimonial-author-img"
													src="resource/assets/images/avatar/1.jpg" alt="" />
												<div class="testimonial-author">TYRION LANNISTER</div>
												<div class="testimonial-author-position">Founder-Ceo.
													Dell Corp</div>
											</div>
										</div>
										<div class="item">
											<div class="testimonial-content">
												<div class="testimonial-text">
													<i class="fa fa-quote-left"></i> Lorem ipsum dolor sit
													amet, consectetur adipisicing elit, sed do eiusmod tempor
													incididunt ut labore et dolore magna aliqua. Ut enim ad
													minim veniam, quis nostrud exercitation. consectetur
													adipisicing elit. <i class="fa fa-quote-right"></i>
												</div>
												<img class="testimonial-author-img"
													src="resource/assets/images/avatar/1.jpg" alt="" />
												<div class="testimonial-author">TYRION LANNISTER</div>
												<div class="testimonial-author-position">Founder-Ceo.
													Dell Corp</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>


					<div class="row">
						<div class="col-lg-6">
							<div class="card nestable-cart">
								<div class="card-title">
									<h4>USA</h4>
									<div class="card-title-right-icon">
										<ul>

										</ul>
									</div>
								</div>
								<div class="Vector-map-js">
									<div id="vmap13" class="vmap"></div>
								</div>
							</div>
							/# card
						</div>
						/# column
						<div class="col-lg-6">
							<div class="card">
								<div class="card-title">
									<h4>New Orders</h4>
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<table class="table">
											<thead>
												<tr>
													<th>#</th>
													<th>Name</th>
													<th>Product</th>
													<th>quantity</th>
													<th>Status</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>
														<div class="round-img">
															<a href=""><img class="w-35"
																src="resource/assets/images/avatar/1.jpg" alt=""></a>
														</div>
													</td>
													<td>Lew Shawon</td>
													<td><span>Dell-985</span></td>
													<td><span>456 pcs</span></td>
													<td><span class="badge badge-success">Done</span></td>
												</tr>
												<tr>
													<td>
														<div class="round-img">
															<a href=""><img class="w-35"
																src="resource/assets/images/avatar/1.jpg" alt=""></a>
														</div>
													</td>
													<td>Lew Shawon</td>
													<td><span>Asus-565</span></td>
													<td><span>456 pcs</span></td>
													<td><span class="badge badge-warning">Pending</span></td>
												</tr>
												<tr>
													<td>
														<div class="round-img">
															<a href=""><img class="w-35"
																src="resource/assets/images/avatar/1.jpg" alt=""></a>
														</div>
													</td>
													<td>lew Shawon</td>
													<td><span>Dell-985</span></td>
													<td><span>456 pcs</span></td>
													<td><span class="badge badge-success">Done</span></td>
												</tr>

												<tr>
													<td>
														<div class="round-img">
															<a href=""><img class="w-35"
																src="resource/assets/images/avatar/1.jpg" alt=""></a>
														</div>
													</td>
													<td>Lew Shawon</td>
													<td><span>Asus-565</span></td>
													<td><span>456 pcs</span></td>
													<td><span class="badge badge-warning">Pending</span></td>
												</tr>
												<tr>
													<td>
														<div class="round-img">
															<a href=""><img class="w-35"
																src="resource/assets/images/avatar/1.jpg" alt=""></a>
														</div>
													</td>
													<td>lew Shawon</td>
													<td><span>Dell-985</span></td>
													<td><span>456 pcs</span></td>
													<td><span class="badge badge-success">Done</span></td>
												</tr>

												<tr>
													<td>
														<div class="round-img">
															<a href=""><img class="w-35"
																src="resource/assets/images/avatar/1.jpg" alt=""></a>
														</div>
													</td>
													<td>Lew Shawon</td>
													<td><span>Asus-565</span></td>
													<td><span>456 pcs</span></td>
													<td><span class="badge badge-warning">Pending</span></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>




					<div class="row">
						<div class="col-lg-4">
							<div class="card">
								<div class="card-title">
									<h4>Task</h4>
								</div>
								<div class="todo-list">
									<div class="tdl-holder">
										<div class="tdl-content">
											<ul>
												<li><label> <input type="checkbox"><i></i><span>Post
															three to six times on Twitter.</span> <a href='#'
														class="ti-close"></a>
												</label></li>
												<li><label> <input type="checkbox" checked><i></i><span>Post
															one to two times on Facebook.</span> <a href='#'
														class="ti-close"></a>
												</label></li>
												<li><label> <input type="checkbox" checked><i></i><span>Follow
															back those who follow you</span> <a href='#' class="ti-close"></a>
												</label></li>
												<li><label> <input type="checkbox" checked><i></i><span>Connect
															with one new person</span> <a href='#' class="ti-close"></a>
												</label></li>
											</ul>
										</div>
										<input type="text" class="tdl-new form-control"
											placeholder="Write new item and hit 'Enter'...">
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="card alert">
								<div class="card-title">
									<h4>Web Server</h4>
								</div>
								<div class="cpu-load-chart">
									<div id="cpu-load" class="cpu-load"></div>
								</div>
							</div>
							/# card
						</div>
						/# column
						<div class="col-lg-4">
							<div class="card">
								<div class="card-title">
									<h4>Ticket</h4>

								</div>
								<div class="recent-comment">
									<div class="media">
										<div class="media-left">
											<a href="#"><img class="media-object"
												src="resource/assets/images/avatar/1.jpg" alt="..."></a>
										</div>
										<div class="media-body">
											<h4 class="media-heading">john doe</h4>
											<p>Cras sit amet nibh libero, in gravida nulla.</p>
											<div class="comment-action">
												<div class="badge badge-success">Done</div>
												<span class="m-l-10"> <a href="#"><i
														class="ti-check color-success"></i></a> <a href="#"><i
														class="ti-close color-danger"></i></a> <a href="#"><i
														class="fa fa-reply color-primary"></i></a>
												</span>
											</div>
											<p class="comment-date">October 21, 2017</p>
										</div>
									</div>
									<div class="media">
										<div class="media-left">
											<a href="#"><img class="media-object"
												src="resource/assets/images/avatar/2.jpg" alt="..."></a>
										</div>
										<div class="media-body">
											<h4 class="media-heading">Mr. John</h4>
											<p>Cras sit amet nibh libero, in gravida nulla.</p>
											<div class="comment-action">
												<div class="badge badge-warning">Pending</div>
												<span class="m-l-10"> <a href="#"><i
														class="ti-check color-success"></i></a> <a href="#"><i
														class="ti-close color-danger"></i></a> <a href="#"><i
														class="fa fa-reply color-primary"></i></a>
												</span>
											</div>
											<p class="comment-date">October 21, 2017</p>
										</div>
									</div>
									<div class="media no-border">
										<div class="media-left">
											<a href="#"><img class="media-object"
												src="resource/assets/images/avatar/3.jpg" alt="..."></a>
										</div>
										<div class="media-body">
											<h4 class="media-heading">Mr. John</h4>
											<p>Cras sit amet nibh libero, in gravida nulla.</p>
											<div class="comment-action">
												<div class="badge badge-success">Done</div>
												<span class="m-l-10"> <a href="#"><i
														class="ti-check color-success"></i></a> <a href="#"><i
														class="ti-close color-danger"></i></a> <a href="#"><i
														class="fa fa-reply color-primary"></i></a>
												</span>
											</div>
											<div class="comment-date">October 21, 2017</div>
										</div>
									</div>
								</div>
							</div>
							/# card
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12">
							<div class="footer">
								<p>
									2018 © Admin Board. - <a href="#">example.com</a>
								</p>
							</div>
						</div>
					</div>
				</section>
			</div>
		</div>
	</div>
	
	<div class="row">
						<!-- column -->
						<div class="col-lg-8">
							<div class="card">
								<div class="card-body">
									<h4 class="card-title">Sales Overview</h4>
									<div id="morris-bar-chart"></div>
								</div>
							</div>
						</div>
						<!-- column -->
						<div class="col-md-4">
							<div class="card text-center">
								<div class="m-t-10">
									<p>Customer Feedback</p>
									<h5>385749</h5>
								</div>
								<div class="widget-card-circle pr m-t-20 m-b-20"
									id="info-circle-card">
									<i class="ti-control-shuffle pa"></i>
								</div>
								<ul class="widget-line-list m-b-15">
									<li class="border-right">92% <br> <span
										class="color-success"><i class="ti-hand-point-up"></i>
											Positive</span></li>
									<li>8% <br> <span class="color-danger"><i
											class="ti-hand-point-down"></i>Negative</span></li>
								</ul>
							</div>
						</div>

					</div>

					<div class="row">
						<div class="col-lg-4">
							<div class="card">
								<div class="card-title">
									<h4>Project</h4>
								</div>
								<div class="card-body">
									<div class="current-progress">
										<div class="progress-content">
											<div class="row">
												<div class="col-lg-4">
													<div class="progress-text">Website</div>
												</div>
												<div class="col-lg-8">
													<div class="current-progressbar">
														<div class="progress">
															<div class="progress-bar progress-bar-primary w-40"
																role="progressbar" aria-valuenow="40" aria-valuemin="0"
																aria-valuemax="100">40%</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="progress-content">
											<div class="row">
												<div class="col-lg-4">
													<div class="progress-text">Android</div>
												</div>
												<div class="col-lg-8">
													<div class="current-progressbar">
														<div class="progress">
															<div class="progress-bar progress-bar-primary w-60"
																role="progressbar" aria-valuenow="60" aria-valuemin="0"
																aria-valuemax="100">60%</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="progress-content">
											<div class="row">
												<div class="col-lg-4">
													<div class="progress-text">Ios</div>
												</div>
												<div class="col-lg-8">
													<div class="current-progressbar">
														<div class="progress">
															<div class="progress-bar progress-bar-primary w-70"
																role="progressbar" aria-valuenow="70" aria-valuemin="0"
																aria-valuemax="100">70%</div>
														</div>
													</div>
												</div>
											</div>
										</div>
										<div class="progress-content">
											<div class="row">
												<div class="col-lg-4">
													<div class="progress-text">Mobile</div>
												</div>
												<div class="col-lg-8">
													<div class="current-progressbar">
														<div class="progress">
															<div class="progress-bar progress-bar-primary w-90"
																role="progressbar" aria-valuenow="90" aria-valuemin="0"
																aria-valuemax="100">90%</div>
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- /# column -->
						<div class="col-lg-4">
							<div class="card bg-primary">
								<div class="weather-widget">
									<div id="weather-one" class="weather-one p-22"></div>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="card">
								<div class="testimonial-widget-one p-17">
									<div class="testimonial-widget-one owl-carousel owl-theme">
										<div class="item">
											<div class="testimonial-content">
												<div class="testimonial-text">
													<i class="fa fa-quote-left"></i> Lorem ipsum dolor sit
													amet, consectetur adipisicing elit, sed do eiusmod tempor
													incididunt ut labore et dolore magna aliqua. Ut enim ad
													minim veniam, quis nostrud exercitation. consectetur
													adipisicing elit. <i class="fa fa-quote-right"></i>
												</div>
												<img class="testimonial-author-img"
													src="resource/assets/images/avatar/1.jpg" alt="" />
												<div class="testimonial-author">TYRION LANNISTER</div>
												<div class="testimonial-author-position">Founder-Ceo.
													Dell Corp</div>
											</div>
										</div>
										<div class="item">
											<div class="testimonial-content">
												<div class="testimonial-text">
													<i class="fa fa-quote-left"></i> Lorem ipsum dolor sit
													amet, consectetur adipisicing elit, sed do eiusmod tempor
													incididunt ut labore et dolore magna aliqua. Ut enim ad
													minim veniam, quis nostrud exercitation. consectetur
													adipisicing elit. <i class="fa fa-quote-right"></i>
												</div>
												<img class="testimonial-author-img"
													src="resource/assets/images/avatar/1.jpg" alt="" />
												<div class="testimonial-author">TYRION LANNISTER</div>
												<div class="testimonial-author-position">Founder-Ceo.
													Dell Corp</div>
											</div>
										</div>
										<div class="item">
											<div class="testimonial-content">
												<div class="testimonial-text">
													<i class="fa fa-quote-left"></i> Lorem ipsum dolor sit
													amet, consectetur adipisicing elit, sed do eiusmod tempor
													incididunt ut labore et dolore magna aliqua. Ut enim ad
													minim veniam, quis nostrud exercitation. consectetur
													adipisicing elit. <i class="fa fa-quote-right"></i>
												</div>
												<img class="testimonial-author-img"
													src="resource/assets/images/avatar/1.jpg" alt="" />
												<div class="testimonial-author">TYRION LANNISTER</div>
												<div class="testimonial-author-position">Founder-Ceo.
													Dell Corp</div>
											</div>
										</div>
										<div class="item">
											<div class="testimonial-content">
												<div class="testimonial-text">
													<i class="fa fa-quote-left"></i> Lorem ipsum dolor sit
													amet, consectetur adipisicing elit, sed do eiusmod tempor
													incididunt ut labore et dolore magna aliqua. Ut enim ad
													minim veniam, quis nostrud exercitation. consectetur
													adipisicing elit. <i class="fa fa-quote-right"></i>
												</div>
												<img class="testimonial-author-img"
													src="resource/assets/images/avatar/1.jpg" alt="" />
												<div class="testimonial-author">TYRION LANNISTER</div>
												<div class="testimonial-author-position">Founder-Ceo.
													Dell Corp</div>
											</div>
										</div>
										<div class="item">
											<div class="testimonial-content">
												<div class="testimonial-text">
													<i class="fa fa-quote-left"></i> Lorem ipsum dolor sit
													amet, consectetur adipisicing elit, sed do eiusmod tempor
													incididunt ut labore et dolore magna aliqua. Ut enim ad
													minim veniam, quis nostrud exercitation. consectetur
													adipisicing elit. <i class="fa fa-quote-right"></i>
												</div>
												<img class="testimonial-author-img"
													src="resource/assets/images/avatar/1.jpg" alt="" />
												<div class="testimonial-author">TYRION LANNISTER</div>
												<div class="testimonial-author-position">Founder-Ceo.
													Dell Corp</div>
											</div>
										</div>
										<div class="item">
											<div class="testimonial-content">
												<div class="testimonial-text">
													<i class="fa fa-quote-left"></i> Lorem ipsum dolor sit
													amet, consectetur adipisicing elit, sed do eiusmod tempor
													incididunt ut labore et dolore magna aliqua. Ut enim ad
													minim veniam, quis nostrud exercitation. consectetur
													adipisicing elit. <i class="fa fa-quote-right"></i>
												</div>
												<img class="testimonial-author-img"
													src="resource/assets/images/avatar/1.jpg" alt="" />
												<div class="testimonial-author">TYRION LANNISTER</div>
												<div class="testimonial-author-position">Founder-Ceo.
													Dell Corp</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>


					<div class="row">
						<div class="col-lg-6">
							<div class="card nestable-cart">
								<div class="card-title">
									<h4>USA</h4>
									<div class="card-title-right-icon">
										<ul>

										</ul>
									</div>
								</div>
								<div class="Vector-map-js">
									<div id="vmap13" class="vmap"></div>
								</div>
							</div>
							<!-- /# card -->
						</div>
						<!-- /# column -->
						<div class="col-lg-6">
							<div class="card">
								<div class="card-title">
									<h4>New Orders</h4>
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<table class="table">
											<thead>
												<tr>
													<th>#</th>
													<th>Name</th>
													<th>Product</th>
													<th>quantity</th>
													<th>Status</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>
														<div class="round-img">
															<a href=""><img class="w-35"
																src="resource/assets/images/avatar/1.jpg" alt=""></a>
														</div>
													</td>
													<td>Lew Shawon</td>
													<td><span>Dell-985</span></td>
													<td><span>456 pcs</span></td>
													<td><span class="badge badge-success">Done</span></td>
												</tr>
												<tr>
													<td>
														<div class="round-img">
															<a href=""><img class="w-35"
																src="resource/assets/images/avatar/1.jpg" alt=""></a>
														</div>
													</td>
													<td>Lew Shawon</td>
													<td><span>Asus-565</span></td>
													<td><span>456 pcs</span></td>
													<td><span class="badge badge-warning">Pending</span></td>
												</tr>
												<tr>
													<td>
														<div class="round-img">
															<a href=""><img class="w-35"
																src="resource/assets/images/avatar/1.jpg" alt=""></a>
														</div>
													</td>
													<td>lew Shawon</td>
													<td><span>Dell-985</span></td>
													<td><span>456 pcs</span></td>
													<td><span class="badge badge-success">Done</span></td>
												</tr>

												<tr>
													<td>
														<div class="round-img">
															<a href=""><img class="w-35"
																src="resource/assets/images/avatar/1.jpg" alt=""></a>
														</div>
													</td>
													<td>Lew Shawon</td>
													<td><span>Asus-565</span></td>
													<td><span>456 pcs</span></td>
													<td><span class="badge badge-warning">Pending</span></td>
												</tr>
												<tr>
													<td>
														<div class="round-img">
															<a href=""><img class="w-35"
																src="resource/assets/images/avatar/1.jpg" alt=""></a>
														</div>
													</td>
													<td>lew Shawon</td>
													<td><span>Dell-985</span></td>
													<td><span>456 pcs</span></td>
													<td><span class="badge badge-success">Done</span></td>
												</tr>

												<tr>
													<td>
														<div class="round-img">
															<a href=""><img class="w-35"
																src="resource/assets/images/avatar/1.jpg" alt=""></a>
														</div>
													</td>
													<td>Lew Shawon</td>
													<td><span>Asus-565</span></td>
													<td><span>456 pcs</span></td>
													<td><span class="badge badge-warning">Pending</span></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
					</div>




					<div class="row">
						<div class="col-lg-4">
							<div class="card">
								<div class="card-title">
									<h4>Task</h4>
								</div>
								<div class="todo-list">
									<div class="tdl-holder">
										<div class="tdl-content">
											<ul>
												<li><label> <input type="checkbox"><i></i><span>Post
															three to six times on Twitter.</span> <a href='#'
														class="ti-close"></a>
												</label></li>
												<li><label> <input type="checkbox" checked><i></i><span>Post
															one to two times on Facebook.</span> <a href='#'
														class="ti-close"></a>
												</label></li>
												<li><label> <input type="checkbox" checked><i></i><span>Follow
															back those who follow you</span> <a href='#' class="ti-close"></a>
												</label></li>
												<li><label> <input type="checkbox" checked><i></i><span>Connect
															with one new person</span> <a href='#' class="ti-close"></a>
												</label></li>
											</ul>
										</div>
										<input type="text" class="tdl-new form-control"
											placeholder="Write new item and hit 'Enter'...">
									</div>
								</div>
							</div>
						</div>
						<div class="col-lg-4">
							<div class="card alert">
								<div class="card-title">
									<h4>Web Server</h4>
								</div>
								<div class="cpu-load-chart">
									<div id="cpu-load" class="cpu-load"></div>
								</div>
							</div>
							<!-- /# card -->
						</div>
						<!-- /# column -->
						<div class="col-lg-4">
							<div class="card">
								<div class="card-title">
									<h4>Ticket</h4>

								</div>
								<div class="recent-comment">
									<div class="media">
										<div class="media-left">
											<a href="#"><img class="media-object"
												src="resource/assets/images/avatar/1.jpg" alt="..."></a>
										</div>
										<div class="media-body">
											<h4 class="media-heading">john doe</h4>
											<p>Cras sit amet nibh libero, in gravida nulla.</p>
											<div class="comment-action">
												<div class="badge badge-success">Done</div>
												<span class="m-l-10"> <a href="#"><i
														class="ti-check color-success"></i></a> <a href="#"><i
														class="ti-close color-danger"></i></a> <a href="#"><i
														class="fa fa-reply color-primary"></i></a>
												</span>
											</div>
											<p class="comment-date">October 21, 2017</p>
										</div>
									</div>
									<div class="media">
										<div class="media-left">
											<a href="#"><img class="media-object"
												src="resource/assets/images/avatar/2.jpg" alt="..."></a>
										</div>
										<div class="media-body">
											<h4 class="media-heading">Mr. John</h4>
											<p>Cras sit amet nibh libero, in gravida nulla.</p>
											<div class="comment-action">
												<div class="badge badge-warning">Pending</div>
												<span class="m-l-10"> <a href="#"><i
														class="ti-check color-success"></i></a> <a href="#"><i
														class="ti-close color-danger"></i></a> <a href="#"><i
														class="fa fa-reply color-primary"></i></a>
												</span>
											</div>
											<p class="comment-date">October 21, 2017</p>
										</div>
									</div>
									<div class="media no-border">
										<div class="media-left">
											<a href="#"><img class="media-object"
												src="resource/assets/images/avatar/3.jpg" alt="..."></a>
										</div>
										<div class="media-body">
											<h4 class="media-heading">Mr. John</h4>
											<p>Cras sit amet nibh libero, in gravida nulla.</p>
											<div class="comment-action">
												<div class="badge badge-success">Done</div>
												<span class="m-l-10"> <a href="#"><i
														class="ti-check color-success"></i></a> <a href="#"><i
														class="ti-close color-danger"></i></a> <a href="#"><i
														class="fa fa-reply color-primary"></i></a>
												</span>
											</div>
											<div class="comment-date">October 21, 2017</div>
										</div>
									</div>
								</div>
							</div>
							<!-- /# card -->
						</div>
					</div>
					<div class="row">
						<div class="col-lg-12">
							<div class="footer">
								<p>
									2018 © Admin Board. - <a href="#">example.com</a>
								</p>
							</div>
						</div>
					</div>
	
</body>
</html>