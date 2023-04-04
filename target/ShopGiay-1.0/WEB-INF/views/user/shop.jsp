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
			<div class="single-product">
				
			
				<div class="level-pro-new">
					<span>Mới</span>
				</div>
				<div class="product-img">
				
					<a href="chi-tiet-san-pham/${item.id_product }"> <img
						src="<c:url value="/james/user/img/product/${ item.img }"/>" alt=""
						class="primary-img"> <img
						src="<c:url value="/james/user/img/product/${ item.img }"/>" alt=""
						class="secondary-img">
					</a>
					
				</div>
				
				<div class="actions">
					<button type="submit" class="cart-btn" >Thêm Vào GH</button>
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
						<span><fmt:formatNumber type="number" groupingUsed="true" value="${ item.price }" /> .VNĐ </span>
						<div class="ratings">
							<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star"></i> <i class="fa fa-star"></i> <i
								class="fa fa-star-half-o"></i>
						</div>
					</div>
				</div>
				
			</div>
			</c:forEach>
			</div>
			
	</div>
	<div class="product-main-items">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="location">
						<ul>
							<li><a href="./" title="go to homepage">Home<span>/</span></a>
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
										<li><a href="<c:url value="/san-pham/${item.id}"/>">${item.name}</a></li>
									</ul>
								</c:forEach>
							</div>

						</div>
						<div class="single-sidebar">
							<div class="single-sidebar-title">
								<h3>Màu</h3>
							</div>
							<div class="single-sidebar-content">
								<ul>
									<li><a href="#">Black </a></li>
									<li><a href="#">Blue </a></li>
									<li><a href="#">Green </a></li>
									<li><a href="#">Grey </a></li>
									<li><a href="#">Red</a></li>
									<li><a href="#">White</a></li>
								</ul>
							</div>
						</div>
						<div class="banner-left">
							<a href="#"> <img src="<c:url value="/james/user/img/product/banner_left.jpg"/>" alt="">
							</a>
						</div>

					</div>

				</div>

				<div class="col-lg-9">
				
					<span style="font-weight:700">Danh Sách Sản Phẩm</span>
						<select class="pull-right"  style="font-weight:700">
							<option>Giá Từ : Cao -> Thấp</option>
							<option>A - Á</option>
						</select>
					<div class="product-bar">
					
						<%-- <ul class="nav product-navigation justify-content-center"
							role="tablist">
							<li role="presentation" class="gird"><a class="active"
								href="#gird" aria-controls="gird" role="tab"
								data-bs-toggle="tab"> <span> <img class="primary"
										src="<c:url value="/james/user/img/product/${ item.img }"/>" alt=""> <img
										class="secondary" src="<c:url value="/james/user/img/product/${ item.img }"/>" alt="">
								</span> 
							</a></li>
							
						</ul> --%>
					<!-- 	<div class="sort-by">
							<label>Sort By</label> <select name="sort">
								<option value="#" selected>Position</option>
								<option value="#">Tên</option>
								<option value="#">Giá</option>
							</select> <a href="#" title="Set Descending Direction"> <img
								src="img/product/i_asc_arrow.gif" alt="">
							</a>
						</div> 
						<div class="limit-product">
							<label>Show</label> <select name="show">
								<option value="#" selected>9</option>
								<option value="#">12</option>
								<option value="#">24</option>
								<option value="#">36</option>
							</select> Sản Phẩm
						</div>-->
					</div>
					<div class="row">
						<div class="product-content">
							<div class="tab-content">
								<div role="tabpanel" class="tab-pane active fade show home2" id="gird">
									<div class="row">
									<c:forEach var="item" items="${products}">
										<div class="col-lg-4 col-md-6">
											<div class="single-product">
												<div class="level-pro-new">
													<span>new</span>
												</div>
												<div class="product-img">
													<a href="single-product.html"> <img
														src="<c:url value="/james/user/img/product/${ item.img }"/>" alt="" class="primary-img">
														<img src="<c:url value="/james/user/img/product/${ item.img }"/>" alt="" class="secondary-img">
													</a>
												</div>
												<div class="actions">
													<button type="submit" class="cart-btn" title="Thêm Vào GH">Mua</button>
													<ul class="add-to-link">
														<li><a class="modal-view" data-target="#productModal"
															data-bs-toggle="modal" href="#"> <i
																class="fa fa-search"></i></a></li>
														<li><a href="#"> <i class="fa fa-heart-o"></i></a></li>
														<li><a href="#"> <i class="fa fa-refresh"></i></a></li>
													</ul>
												</div>
												<div class="product-price">
													<div class="product-name">
														<a href="single-product.html" title="Fusce aliquam">${ item.name }</a>
													</div>
													<div class="price-rating">
														<span><fmt:formatNumber type="number" groupingUsed="true" value="${ item.price }" /> .VNĐ </span>
														<div class="ratings">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star-half-o"></i>
														</div>
													</div>
												</div>
											</div>
										</div>
										</c:forEach>
			
									</div>
								</div>
								<div role="tabpanel" class="tab-pane fade home2" id="list">
									<div class="product-catagory">
										<div class="single-list-product row">
											<div class="col-md-4">
												<div class="list-product-img">
													<a href="single-product.html"> <img
														src="img/product/1.png" alt="">
													</a>
												</div>
											</div>
											<div class="col-md-8">
												<div class="list-product-info">
													<a href="single-product.html" class="list-product-name">
														Cras neque metus</a>
													<div class="price-rating">
														<span class="old-price">$700.00</span> <span>$800.00</span>
														<div class="ratings">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star-half-o"></i> <a href="#"
																class="review">1 Review(s)</a> <a href="#"
																class="add-review">Add Your Review</a>
														</div>
													</div>
													<div class="list-product-details">
														<p>
															Nunc facilisis sagittis ullamcorper. Proin lectus ipsum,
															gravida et mattis vulputate, tristique ut lectus. Sed et
															lorem nunc. Vestibulum ante ipsum primis in faucibus orci
															luctus et ultrices posuere cubilia Curae; Aenean eleifend
															laoreet congue. Vivamus adipiscing nisl ut dolor
															dignissim semper. Nul <a href="single-product.html">Learn
																More</a>
														</p>
													</div>
												</div>
											</div>
										</div>
										<div class="single-list-product row">
											<div class="col-md-4">
												<div class="list-product-img">
													<a href="single-product.html"> <img
														src="img/product/6.png" alt="">
													</a>
												</div>
											</div>
											<div class="col-md-8">
												<div class="list-product-info">
													<a href="single-product.html" class="list-product-name">
														Cras neque metus</a>
													<div class="price-rating">
														<span class="old-price">$700.00</span> <span>$800.00</span>
														<div class="ratings">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star-half-o"></i> <a href="#"
																class="review">1 Review(s)</a> <a href="#"
																class="add-review">Add Your Review</a>
														</div>
													</div>
													<div class="list-product-details">
														<p>
															Nunc facilisis sagittis ullamcorper. Proin lectus ipsum,
															gravida et mattis vulputate, tristique ut lectus. Sed et
															lorem nunc. Vestibulum ante ipsum primis in faucibus orci
															luctus et ultrices posuere cubilia Curae; Aenean eleifend
															laoreet congue. Vivamus adipiscing nisl ut dolor
															dignissim semper. Nul <a href="single-product.html">Learn
																More</a>
														</p>
													</div>
												</div>
											</div>
										</div>
										<div class="single-list-product row">
											<div class="col-md-4">
												<div class="list-product-img">
													<a href="single-product.html"> <img
														src="img/product/3.png" alt="">
													</a>
												</div>
											</div>
											<div class="col-md-8">
												<div class="list-product-info">
													<a href="single-product.html" class="list-product-name">
														Cras neque metus</a>
													<div class="price-rating">
														<span class="old-price">$700.00</span> <span>$800.00</span>
														<div class="ratings">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star-half-o"></i> <a href="#"
																class="review">1 Review(s)</a> <a href="#"
																class="add-review">Add Your Review</a>
														</div>
													</div>
													<div class="list-product-details">
														<p>
															Nunc facilisis sagittis ullamcorper. Proin lectus ipsum,
															gravida et mattis vulputate, tristique ut lectus. Sed et
															lorem nunc. Vestibulum ante ipsum primis in faucibus orci
															luctus et ultrices posuere cubilia Curae; Aenean eleifend
															laoreet congue. Vivamus adipiscing nisl ut dolor
															dignissim semper. Nul <a href="single-product.html">Learn
																More</a>
														</p>
													</div>
												</div>
											</div>
										</div>
										<div class="single-list-product row">
											<div class="col-md-4">
												<div class="list-product-img">
													<a href="single-product.html"> <img
														src="img/product/4.png" alt="">
													</a>
												</div>
											</div>
											<div class="col-md-8">
												<div class="list-product-info">
													<a href="single-product.html" class="list-product-name">
														Cras neque metus</a>
													<div class="price-rating">
														<span class="old-price">$700.00</span> <span>$800.00</span>
														<div class="ratings">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star-half-o"></i> <a href="#"
																class="review">1 Review(s)</a> <a href="#"
																class="add-review">Add Your Review</a>
														</div>
													</div>
													<div class="list-product-details">
														<p>
															Nunc facilisis sagittis ullamcorper. Proin lectus ipsum,
															gravida et mattis vulputate, tristique ut lectus. Sed et
															lorem nunc. Vestibulum ante ipsum primis in faucibus orci
															luctus et ultrices posuere cubilia Curae; Aenean eleifend
															laoreet congue. Vivamus adipiscing nisl ut dolor
															dignissim semper. Nul <a href="single-product.html">Learn
																More</a>
														</p>
													</div>
												</div>
											</div>
										</div>
										<div class="single-list-product row">
											<div class="col-md-4">
												<div class="list-product-img">
													<a href="single-product.html"> <img
														src="img/product/5.png" alt="">
													</a>
												</div>
											</div>
											<div class="col-md-8">
												<div class="list-product-info">
													<a href="single-product.html" class="list-product-name">
														Cras neque metus</a>
													<div class="price-rating">
														<span class="old-price">$700.00</span> <span>$800.00</span>
														<div class="ratings">
															<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star"></i> <i class="fa fa-star"></i> <i
																class="fa fa-star-half-o"></i> <a href="#"
																class="review">1 Review(s)</a> <a href="#"
																class="add-review">Add Your Review</a>
														</div>
													</div>
													<div class="list-product-details">
														<p>
															Nunc facilisis sagittis ullamcorper. Proin lectus ipsum,
															gravida et mattis vulputate, tristique ut lectus. Sed et
															lorem nunc. Vestibulum ante ipsum primis in faucibus orci
															luctus et ultrices posuere cubilia Curae; Aenean eleifend
															laoreet congue. Vivamus adipiscing nisl ut dolor
															dignissim semper. Nul <a href="single-product.html">Learn
																More</a>
														</p>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-md-12">
							<div class="toolbar-bottom">
								<ul>
									<li><span>Pages:</span></li>
									<li class="current"><a href="#">1</a></li>
									<li><a href="#">2</a></li>
									<li><a href="#">3</a></li>
									<li><a href="#"> <img
											src="img/product/pager_arrow_right.gif" alt="">
									</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>