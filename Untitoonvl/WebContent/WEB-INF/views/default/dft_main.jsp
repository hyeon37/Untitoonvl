<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

<!-- ================= Favicon ================== -->
<!-- Standard -->
<link rel="shortcut icon" href="http://placehold.it/64.png/000/fff">
<!-- Retina iPad Touch Icon-->
<link rel="apple-touch-icon" sizes="144x144"
	href="http://placehold.it/144.png/000/fff">
<!-- Retina iPhone Touch Icon-->
<link rel="apple-touch-icon" sizes="114x114"
	href="http://placehold.it/114.png/000/fff">
<!-- Standard iPad Touch Icon-->
<link rel="apple-touch-icon" sizes="72x72"
	href="http://placehold.it/72.png/000/fff">
<!-- Standard iPhone Touch Icon-->
<link rel="apple-touch-icon" sizes="57x57"
	href="http://placehold.it/57.png/000/fff">


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


</head>
<body>
<!--     중복되는 내용 include로 빼기 -->
    <%@ include file="../include/dft_sidebar.jsp" %>

<!-- 중복되는 메인 화면 -->
	<%@ include file="../include/total_main.jsp" %>


	<div id="search">
		<button type="button" class="close">×</button>
		<form>
			<input type="search" value="" placeholder="type keyword(s) here" />
			<button type="submit" class="btn btn-primary">Search</button>
		</form>
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