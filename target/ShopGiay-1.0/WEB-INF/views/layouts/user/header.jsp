<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- header area start -->

<header>
	<div class="top-link">
		<div class="container">
			<div class="row">
				<div class="col-lg-7 offset-lg-3 col-md-9 d-none d-md-block"></div>
				<div class="col-lg-2 col-md-3 position-relative">
					<div class="dashboard">
						<div class="account-menu">
							<ul>

								<li class="search"><a href="#"> <i class="fa fa-search"></i>
								</a>
									<ul class="search">
										<li>
											<form action="#">
												<input type="text">
												<button type="submit">
													<i class="fa fa-search"></i>
												</button>
											</form>
										</li>
									</ul></li>
								<li><a href="#"> <i class="fa fa-bars"></i>
								</a>
									<ul>
										<li><a href="my-account.html">Tài Khoảng</a></li>
										<li><a href="wishlist.html">my wishlist</a></li>
										<li><a href="cart.html">my cart</a></li>
										<li><a href="blog.html">Blog</a></li>
										<li><a href="#">Đăng Nhập</a></li>
									</ul></li>
							</ul>
						</div>
						<div class="cart-menu">
							<ul>
								<li><a href="#"> <img
										src="<c:url value="/james/user/img/icon-cart.png"/>" alt="">
										<span>2</span>
								</a>
									<div class="cart-info">
										<ul>
											<li>
												<div class="cart-img">
													<img src="<c:url value="/james/user/img/cart/1.png"/>"
														alt="">
												</div>
												<div class="cart-details">
													<a href="#">Fusce aliquam</a>
													<p>1 x $174.00</p>
												</div>
												<div class="btn-edit"></div>
												<div class="btn-remove"></div>
											</li>
											<li>
												<div class="cart-img">
													<img src="<c:url value="/james/user/img/cart/2.png"/>"
														alt="">
												</div>
												<div class="cart-details">
													<a href="#">Fusce aliquam</a>
													<p>1 x $777.00</p>
												</div>
												<div class="btn-edit"></div>
												<div class="btn-remove"></div>
											</li>
										</ul>
										<h3>
											Tổng Tiền: <span> $951.00</span>
										</h3>
										<a href="checkout.html" class="checkout">Thanh Toán</a>
									</div></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="mainmenu-area home2 bg-color-tr product-items">
		<div class="container">
			<div class="row">
				<div class="col-lg-3">
					<div class="logo">
						<a href="<c:url value="/trang-chu/" />"> <img
							src="<c:url value="/james/user/img/logo.png"/>" alt="">
						</a>
					</div>
				</div>
				<div class="col-lg-9">
					<div class="mainmenu">
						<nav>
				
							<ul>
							<c:forEach var="item" items="${menus}" >
							
								<li><a href="/ShopGiay${item.url}">${ item.name }</a></li>
									</c:forEach>				 	
							</ul>												
						</nav>
					</div>
				</div>			
			</div>
		</div>
	</div>
</header>
<!-- header area end -->
<div class="slider-area home2">
	<div class="bend niceties preview-2">

		<div id="nivoslider" class="slides">
			<c:forEach var="item" items="${slides }" varStatus="index">
				<img src="<c:url value="/james/user/img/slider/${item.img}"/>"
					alt="" title="#slider-direction-1" />

			</c:forEach>
		</div>
		<c:forEach var="item" items="${slides }" >
			<div id="slider-direction-1" class="t-cn slider-direction">
				<div class="slider-progress"></div>
				<div class="slider-content t-lfl s-tb slider-1">

					<div class="title-container s-tb-c title-compress">

						<img src="<c:url value="/james/user/img/slider/${item.logo}"/>"
							alt="">
						<h1 class="title1">${item.caption}</h1>
						<h2 class="title2">${item.content}</h2>

					</div>
				</div>
			</div>
		</c:forEach>
		<c:forEach var="item" items="${slides }" >
			<div id="slider-direction-2" class="slider-direction">
				<div class="slider-progress"></div>
				<div class="slider-content t-lfl s-tb slider-2">
					<div class="title-container s-tb-c">
						<img src="<c:url value="/james/user/img/slider/${item.logo}"/>"
							alt="">

						<h1 class="title1">${item.caption}</h1>
						<h2 class="title2">${item.content}</h2>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
</div>


