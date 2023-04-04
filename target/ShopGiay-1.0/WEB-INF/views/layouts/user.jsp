<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!doctype html>
<html class="no-js" lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Trang Chủ</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- favicon
============================================ -->
<link rel="shortcut icon" type="image/x-icon"
	href="<c:url value="/james/user/img/favicon.ico"/>">


<!-- Google Fonts
        ============================================ -->
<link href='https://fonts.googleapis.com/css?family=Norican'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800'
	rel='stylesheet' type='text/css'>

<!-- Bootstrap CSS
        ============================================ -->
<link rel="stylesheet"
	href="<c:url value="/james/user/css/bootstrap.min.css"/>">

<!-- Bootstrap CSS
        ============================================ -->
<link rel="stylesheet"
	href="<c:url value="/james/user/css/font-awesome.min.css"/>">
<!-- owl.carousel CSS
        ============================================ -->
<link rel="stylesheet"
	href="<c:url value="/james/user/css/owl.carousel.css"/>">
<link rel="stylesheet"
	href="<c:url value="/james/user/css/owl.theme.css"/>">
<link rel="stylesheet"
	href="<c:url value="/james/user/css/owl.transitions.css"/>">
<!-- jquery-ui CSS
        ============================================ -->
<link rel="stylesheet"
	href="<c:url value="/james/user/css/jquery-ui.css"/>">
<!-- meanmenu CSS
        ============================================ -->
<link rel="stylesheet"
	href="<c:url value="/james/user/css/meanmenu.min.css"/>">
<!-- nivoslider CSS
        ============================================ -->
<link rel="stylesheet"
	href="<c:url value="/james/user/lib/css/nivo-slider.css"/>">
<link rel="stylesheet"
	href="<c:url value="/james/user/lib/css/preview.css"/>">
<!-- animate CSS
        ============================================ -->
<link rel="stylesheet"
	href="<c:url value="/james/user/css/animate.css"/>">
<!-- magic CSS
        ============================================ -->
<link rel="stylesheet" href="<c:url value="/james/user/css/magic.css"/>">
<!-- normalize CSS
        ============================================ -->
<link rel="stylesheet"
	href="<c:url value="/james/user/css/normalize.css"/>">
<!-- main CSS
        ============================================ -->
<link rel="stylesheet" href="<c:url value="/james/user/css/main.css"/>">
<!-- style CSS
        ============================================ -->
<link rel="stylesheet" href="<c:url value="/james/user/style.css"/>">
<!-- responsive CSS
        ============================================ -->
<link rel="stylesheet"
	href="<c:url value="/james/user/css/responsive.css"/>">
<!-- modernizr JS
        ============================================ -->
<script
	src="<c:url value="/james/user/js/vendor/modernizr-2.8.3.min.js"/>"></script>
</head>
<body>
	<%@include file="/WEB-INF/views/layouts/user/header.jsp" %>
	<decorator:body/>
	<%@include file="/WEB-INF/views/layouts/user/footer.jsp" %>
	<!-- quickview product start -->
	<div id="quickview-wrapper">
		<!-- Modal -->
		<div class="modal fade" id="productModal" tabindex="-1" role="dialog">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-bs-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="modal-product">
							<div class="product-images">
								<div class="main-image images">
									<img alt="" src="<c:url value="/james/user/img/product/quick-view.jpg"/>">
								</div>
							</div>

							<div class="product-info">
								<h1>Diam quis cursus</h1>
								<div class="price-box">
									<p class="price">
										<span class="special-price"><span class="amount">$132.00</span></span>
									</p>
								</div>
								<a href="shop.html" class="see-all">See all features</a>
								<div class="quick-add-to-cart">
									<form method="post" class="cart">
										<div class="numbers-row">
											<input type="number" id="french-hens" value="3">
										</div>
										<button class="single_add_to_cart_button" type="submit">Add
											to cart</button>
									</form>
								</div>
								<div class="quick-desc">
									<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
										Nam fringilla augue nec est tristique auctor. Donec non est at
										libero vulputate rutrum. Morbi ornare lectus quis justo
										gravida semper. Nulla tellus mi, vulputate adipiscing cursus
										eu, suscipit id nulla.</p>
								</div>
								<div class="share-post">
									<div class="share-title">
										<h3>share this product</h3>
									</div>
									<div class="share-social">
										<ul>
											<li><a href="#"> <i class="fa fa-facebook"></i>
											</a></li>
											<li><a href="#"> <i class="fa fa-twitter"></i>
											</a></li>
											<li><a href="#"> <i class="fa fa-pinterest"></i>
											</a></li>
											<li><a href="#"> <i class="fa fa-google-plus"></i>
											</a></li>
											<li><a href="#"> <i class="fa fa-linkedin"></i>
											</a></li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- quickview product start -->
	<!-- jquery
        ============================================ -->
	<script src="<c:url value="/james/user/js/vendor/jquery-1.12.4.min.js"/>"></script>
	<!-- bootstrap JS
        ============================================ -->
	<script src="<c:url value="/james/user/js/bootstrap.min.js"/>"></script>
	<!-- wow JS
        ============================================ -->
	<script src="<c:url value="/james/user/js/wow.min.js"/>"></script>
	<!-- price-slider JS
        ============================================ -->
	<script src="<c:url value="/james/user/js/jquery-price-slider.js"/>"></script>
	<!-- nivoslider JS
        ============================================ -->
	<script src="<c:url value="/james/user/lib/js/jquery.nivo.slider.js"/>"></script>
	<script src="<c:url value="/james/user/lib/home.js"/>"></script>
	<!-- meanmenu JS
        ============================================ -->
	<script src="<c:url value="/james/user/js/jquery.meanmenu.js"/>"></script>
	<!-- owl.carousel JS
        ============================================ -->
	<script src="<c:url value="/james/user/js/owl.carousel.min.js"/>"></script>
	<!-- elevatezoom JS
        ============================================ -->
	<script src="<c:url value="/james/user/js/jquery.elevatezoom.js"/>"></script>
	<!-- scrollUp JS
        ============================================ -->
	<script src="<c:url value="/james/user/js/jquery.scrollUp.min.js"/>"></script>
	<!-- plugins JS
        ============================================ -->
	<script src="<c:url value="/james/user/js/plugins.js"/>"></script>
	<!-- main JS
        ============================================ -->
	<script src="<c:url value="/james/user/js/main.js"/>"></script>
</body>
</html>

