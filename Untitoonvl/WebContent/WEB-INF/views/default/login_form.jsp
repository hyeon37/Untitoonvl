<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>Untitoonvl</title>

<!-- ================= Bootstrap / jquery CDN ==================  -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>


<!-- Styles -->
<link href="resource/assets/css/lib/weather-icons.css" rel="stylesheet" />
<link href="resource/assets/css/lib/owl.carousel.min.css"
	rel="stylesheet" />
<link href="resource/assets/css/lib/owl.theme.default.min.css"
	rel="stylesheet" />
<link href="resource/assets/css/lib/font-awesome.min.css"
	rel="stylesheet">
<link href="resource/assets/css/lib/themify-icons.css" rel="stylesheet">
<link href="resource/assets/css/lib/menubar/sidebar.css"
	rel="stylesheet">
<link href="resource/assets/css/lib/bootstrap.min.css" rel="stylesheet">

<link href="resource/assets/css/lib/helper.css" rel="stylesheet">
<link href="resource/assets/css/style.css" rel="stylesheet">

<script>
	$(document).ready(function() {
		$("#cancel").click(function() {
			location.href = "main.dft";
		});
	});
</script>

</head>

<body>
	<!--     중복되는 내용 include로 빼기 -->
    <%@ include file="../include/form_sidebar.jsp" %>


	<div class="content-wrap">
		<div class="main">
			<div class="container-fluid" align="center">
				<div class="row">
					<div class="col-lg-8 p-r-0 title-margin-right">
						<div class="page-header">
							<div class="page-title">
								<h1>로그인 페이지</h1>
								<h1>
									Hello, <span>Welcome Here</span>
								</h1>
							</div>
						</div>
					</div>
					
					
					<div class="container-fluid" align="center">
						<div class="col-lg-8">
							<div class="card">
							
								<form role="form" method="post" action="login-action.dft">
								<table>
									<tr>
										<th>
											<label for="user_id"> 아이디 </label>
										</th>
										<td>&nbsp;&nbsp;</td>
										<td>
										<input type="text"
											class="form-control" id="user_id" name="user_id"
											style="font-size: 16px;" required />
											<span id="chk_user_id"></span>
										</td>
										<td>&nbsp;&nbsp;</td>
										<td rowspan="3">
											<button type="submit" class="btn btn-primary"
											 style="padding: 1.5rem 1.75rem;font-size:1.5rem;line-height:5;">로그인</button>
										</td>
									</tr>
									<tr><th></th><td><br></td><td></td></tr>
									<tr>
										<th>
											<label for="user_pw"> 비밀번호 </label>
										</th>
										<td>&nbsp;&nbsp;</td>
										<td>
										<input type="password"
											class="form-control" id="user_pw" name="user_pw"
											style="font-size: 16px;" required />
											<span id="chk_user_pw"></span>
										</td>
										<td>&nbsp;&nbsp;</td>
										<td>
										</td>
									</tr>
									<tr><th></th><td><br></td></tr>
									<tr>
										<td colspan="5">
											<a href="#">아이디 / 비밀번호</a> 찾기 | 
											계정이 없으신가요? <a href="signup-form.dft">회원가입</a>
										</td>
									</tr>
								</table>
								</form>
								
							</div>
						</div>
					</div>
						
				</div>
			</div>
		</div>
	</div>


	<!-- jquery vendor -->
	<script src="resource/assets/js/lib/jquery.min.js"></script>
	<script src="resource/assets/js/lib/jquery.nanoscroller.min.js"></script>
	<!-- nano scroller -->
	<script src="resource/assets/js/lib/menubar/sidebar.js"></script>
	<script src="resource/assets/js/lib/preloader/pace.min.js"></script>
	<!-- sidebar -->
	<script src="resource/assets/js/lib/bootstrap.min.js"></script>

	<!-- bootstrap -->

	<script
		src="resource/assets/js/lib/circle-progress/circle-progress.min.js"></script>
	<script
		src="resource/assets/js/lib/circle-progress/circle-progress-init.js"></script>

	<script src="resource/assets/js/lib/morris-chart/raphael-min.js"></script>
	<script src="resource/assets/js/lib/morris-chart/morris.js"></script>
	<script src="resource/assets/js/lib/morris-chart/morris-init.js"></script>

	<!--  flot-chart js -->
	<script src="resource/assets/js/lib/flot-chart/jquery.flot.js"></script>
	<script src="resource/assets/js/lib/flot-chart/jquery.flot.resize.js"></script>
	<script src="resource/assets/js/lib/flot-chart/flot-chart-init.js"></script>
	<!-- // flot-chart js -->


	<script src="resource/assets/js/lib/vector-map/jquery.vmap.js"></script>
	<!-- scripit init-->
	<script src="resource/assets/js/lib/vector-map/jquery.vmap.min.js"></script>
	<!-- scripit init-->
	<script
		src="resource/assets/js/lib/vector-map/jquery.vmap.sampledata.js"></script>
	<!-- scripit init-->
	<script
		src="resource/assets/js/lib/vector-map/country/jquery.vmap.world.js"></script>
	<!-- scripit init-->
	<script
		src="resource/assets/js/lib/vector-map/country/jquery.vmap.algeria.js"></script>
	<!-- scripit init-->
	<script
		src="resource/assets/js/lib/vector-map/country/jquery.vmap.argentina.js"></script>
	<!-- scripit init-->
	<script
		src="resource/assets/js/lib/vector-map/country/jquery.vmap.brazil.js"></script>
	<!-- scripit init-->
	<script
		src="resource/assets/js/lib/vector-map/country/jquery.vmap.france.js"></script>
	<!-- scripit init-->
	<script
		src="resource/assets/js/lib/vector-map/country/jquery.vmap.germany.js"></script>
	<!-- scripit init-->
	<script
		src="resource/assets/js/lib/vector-map/country/jquery.vmap.greece.js"></script>
	<!-- scripit init-->
	<script
		src="resource/assets/js/lib/vector-map/country/jquery.vmap.iran.js"></script>
	<!-- scripit init-->
	<script
		src="resource/assets/js/lib/vector-map/country/jquery.vmap.iraq.js"></script>
	<!-- scripit init-->
	<script
		src="resource/assets/js/lib/vector-map/country/jquery.vmap.russia.js"></script>
	<!-- scripit init-->
	<script
		src="resource/assets/js/lib/vector-map/country/jquery.vmap.tunisia.js"></script>
	<!-- scripit init-->
	<script
		src="resource/assets/js/lib/vector-map/country/jquery.vmap.europe.js"></script>
	<!-- scripit init-->
	<script
		src="resource/assets/js/lib/vector-map/country/jquery.vmap.usa.js"></script>
	<!-- scripit init-->
	<script src="resource/assets/js/lib/vector-map/vector.init.js"></script>

	<script
		src="resource/assets/js/lib/weather/jquery.simpleWeather.min.js"></script>
	<script src="resource/assets/js/lib/weather/weather-init.js"></script>
	<script src="resource/assets/js/lib/owl-carousel/owl.carousel.min.js"></script>
	<script src="resource/assets/js/lib/owl-carousel/owl.carousel-init.js"></script>
	<script src="resource/assets/js/scripts.js"></script>
	<!-- scripit init-->

</body>
</html>