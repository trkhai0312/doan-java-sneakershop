<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<body>
	<h1>${AllProductsByID.size() }</h1>
	<div class="sell-area home2">

		<div class="sell-heading">
			<h2>Sản Phẩm Nổi Bật</h2>
			<p>Sản phẩm bán chạy nhất ở shop.....</p>
		</div>
		<div class="sell-slider">
			<c:forEach var="item" items="${products}">
				<form method="get" action="<c:url value="/AddCart/${ product.id_product }"/>">
				<div class="single-product">


					<div class="level-pro-new">
						<span>Mới</span>
					</div>
					<div class="product-img">

						<a href="<c:url value="/chi-tiet-san-pham/${item.id_product }"/>"> <img
							src="<c:url value="/james/user/img/product/${ item.img }"/>"
							alt="" class="primary-img"> <img
							src="<c:url value="/james/user/img/product/${ item.img }"/>"
							alt="" class="secondary-img">
						</a>

					</div>

					<div class="actions">
						<button type="submit" class="cart-btn">Thêm Vào GH</button>
						<ul class="add-to-link">
							<li><a href="#"> <i class="fa fa-heart-o"></i></a></li>
							<li><a href="#"> <i class="fa fa-refresh"></i></a></li>
						</ul>
					</div>
					<div class="product-price">
						<div class="product-name">
							<a href="./product-detail" title="Xem Chi Tiết">${ item.name }</a>
						</div>
						<div class="price-rating">
							<span><fmt:formatNumber type="number" groupingUsed="true"
									value="${ item.price }" /> .VNĐ </span>
							<div class="ratings">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star-half-o"></i>
							</div>
						</div>
					</div>
					
				</div>
				</form> 
			</c:forEach>
		</div>

	</div>
	<div class="product-main-items">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="location">
						<ul>
							<li><a href="<c:url value ="/trang-chu/"/>" title="go to homepage">Home<span>/</span></a>
							</li>
							<li><strong> shop</strong></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-3">

					<div class="product-sidebar">

						<div class="sidebar-title">
							<h2>MENU</h2>
						</div>
						<div class="single-sidebar">
							<div class="single-sidebar-title">
								<h3>Nhãn Hàng</h3>
							</div>
							<div class="single-sidebar-content">
								<c:forEach var="item" items="${categorys}">
									<ul>
										<li><a href="<c:url value="/san-pham/${item.id}/"/>">${item.name}</a></li>
									</ul>
								</c:forEach>
							</div>

						</div>
						
						<div class="banner-left">
							<a href="#"> <img
								src="<c:url value="/james/user/img/product/banner_left.jpg"/>"
								alt="">
							</a>
						</div>

					</div>

				</div>

				<div class="col-lg-9">

					<span style="font-weight: 700">Danh Sách Sản Phẩm</span> 
					<div class="product-bar">

						<ul class="nav product-navigation justify-content-center"
							role="tablist">
							<li role="presentation" class="gird"><a class="active"
								href="#gird" aria-controls="gird" role="tab"
								data-bs-toggle="tab"> <span> <img class="primary"
										src="<c:url value="/james/user/img/product/${ item.img }"/>"
										alt=""> <img class="secondary"
										src="<c:url value="/james/user/img/product/${ item.img }"/>"
										alt="">
								</span>
							</a></li>

						</ul>
						<div class="sort-by"></div>
						<div class="limit-product"></div>
					</div>
					<div class="row">
						<div class="product-content">
							<div class="tab-content">
								<div role="tabpanel" class="tab-pane active fade show home2"
									id="gird">
									<div class="row">
										<c:forEach var="item" items="${ productsPagine }">
											<div class="col-lg-4 col-md-6">
											<form method="get" action="<c:url value="/AddCart/${ item.id_product }"/>">
												<div class="single-product">
													<div class="level-pro-new">
														<span>new</span>
													</div>
													<div class="product-img">
														<a href="<c:url value="/chi-tiet-san-pham/${item.id_product }"/>"> <img
															src="<c:url value="/james/user/img/product/${ item.img }"/>"
															alt="" class="primary-img"> <img
															src="<c:url value="/james/user/img/product/${ item.img }"/>"
															alt="" class="secondary-img">
														</a>
													</div>
													<div class="actions">
														<button type="submit" class="cart-btn" title="Thêm Vào GH">Mua</button>
														<ul class="add-to-link">
															<li><a class="modal-view"
																data-target="#productModal" data-bs-toggle="modal"
																href="#"> <i class="fa fa-search"></i></a></li>
															<li><a href="#"> <i class="fa fa-heart-o"></i></a></li>
															<li><a href="#"> <i class="fa fa-refresh"></i></a></li>
														</ul>
													</div>
													<div class="product-price">
														<div class="product-name">
															<a href="single-product.html" title="Fusce aliquam">${ item.name }</a>
														</div>
														<div class="price-rating">
															<span><fmt:formatNumber type="number"groupingUsed="true" value="${ item.price }" /> .VNĐ </span>
															<div class="ratings">
																<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																	class="fa fa-star-half-o"></i>
															</div>
														</div>
													</div>
												</div>
												</form>
											</div>
										</c:forEach>

									</div>
								</div>
							</div>
						</div>
						<div class="col-md-12">

							<div class="toolbar-bottom" style="display: flex;  justify-content: center;">
								
								<div><span>Trang : </span></div>
								<c:forEach var="item" begin="1" end="${ paginateInfo.totalPage }" varStatus="loop">
									<ul >
									<c:if test="${ (loop.index) == paginateInfo.currentPage }">																															
											<li class=" current"><a href="<c:url value="/san-pham/${ IdCategory	}/${ loop.index}"/>">${ loop.index }</a></li>																
									</c:if>
									<c:if test="${ (loop.index) != paginateInfo.currentPage }">
										
										<li><a href="<c:url value="/san-pham/${IdCategory}/${ loop.index}"/>">${ loop.index}</a></li>
										
									</c:if>
									</ul>
									
								</c:forEach>
								
							</div>

						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	

</body>