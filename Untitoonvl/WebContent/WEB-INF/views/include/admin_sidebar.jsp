<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div
		class="sidebar sidebar-hide-to-small sidebar-shrink sidebar-gestures">
		<div class="nano">
			<div class="nano-content">
			
				<!-- 접었다 펴는 메뉴바부분 -->
				<div class="float-right">
					<div class="hamburger sidebar-toggle">
						<span class="line"></span>
						<span class="line"></span>
						<span class="line"></span>
					</div>
				</div>
				<!-- ====================== -->
			
				<div class="logo">
					<a href="index.jsp"> <!-- <img src="assets/images/logo.png" alt="" /> -->
						<span>Untitoonvl</span>
					</a>
				</div>
				
				<ul>
					<li class="label">
						<div align="center">
							<table>
								<tr>
									<th colspan="2">
										${ userVo.user_nick } 님 환영합니다.
									</th>
								</tr>
								<tr>
									<td>
										유료 코인 
									</td>
									<td>
										${ userVo.charge_money } 코인
									</td>
								</tr>
								<tr>
									<td>
										무료 코인 
									</td>
									<td>
										${ userVo.free_money } 코인
									</td>
								</tr>
								<tr>
									<td>
										포인트 
									</td>
									<td>
										${ userVo.point } 포인트
									</td>
								</tr>
								<tr><td colspan="2">
									<button type="button" class="btn btn-info" id="signup" style="font-size:1.2rem;">
										정보수정
									</button>
									<button type="button" class="btn btn-danger" id="logout" style="font-size:1.2rem;">
										로그아웃
									</button>
								</td></tr>
							</table>
						</div>
					</li>
					
					<li class="label">
						<div align="center">
							<!-- 이부분에 서치 만들기 -->
							<input type="text" id="search_art" name="search_art" style="height:3rem;color:#000000;" placeholder="작가명/작품명">
							<button type="button" id="btn_search_art" style="font-size:1.5rem;" class="btn btn-primary">
							찾기
							</button>
						</div>
					</li>
				</ul>
				
				<ul>
					<li class="label">Main</li>
					<li class="active"><a class="sidebar-sub-toggle"><i
							class="ti-home"></i> Dashboard <span class="badge badge-primary">2</span>
							<span class="sidebar-collapse-icon ti-angle-down"></span></a>
						<ul>
							<li><a href="index.html">Dashboard 1</a></li>
							<li><a href="index1.html">Dashboard 2</a></li>



						</ul></li>

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
					<li><a href="/documentation/index.html"><i
							class="ti-file"></i> Documentation</a></li>
					<li><a><i class="ti-close"></i> Logout</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- /# sidebar -->