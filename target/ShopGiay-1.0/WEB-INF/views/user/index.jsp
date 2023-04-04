<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<body>

	<!-- sell area start -->
	<body>
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
	<!-- sell area end -->
	<!-- feature products area start -->
	<div class="features-product home2">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="product-title">
						<h2>Sản Phẩm Mới</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="features-home2-slider">
				<c:forEach var="item" items="${products}">
					<div class="col">
						<div class="single-product">
							<div class="level-pro-new">
								<span>Mới</span>
							</div>
							<div class="product-img">
								<a href="chi-tiet-san-pham/${ item.id_product }"> <img
									src="<c:url value="/james/user/img/product/${ item.img }"/>" alt=""
									class="primary-img"> <img
									src="<c:url value="/james/user/img/product/${ item.img }"/>" alt=""
									class="secondary-img">
								</a>
							</div>
							<div class="actions">
								<button type="submit" class="cart-btn" title="Add to cart">add
									to cart</button>
								<ul class="add-to-link">
									<li><a class="modal-view" data-target="#productModal"
										data-bs-toggle="modal" href="#"> <i class="fa fa-search"></i></a></li>
									<li><a href="#"> <i class="fa fa-heart-o"></i></a></li>
									<li><a href="#"> <i class="fa fa-refresh"></i></a></li>
								</ul>
							</div>
							<div class="product-price">
								<div class="product-name">
									<a href="chi-tiet-san-pham/${item.id_product }" title="Fusce aliquam">${item.name }</a>
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
		</div>
	</div>
	<!-- feature products area end -->
	<!-- sell off product area start -->
	<div class="sell-off-product home2">
		<div class="product-title">
			<h2>Sản Phẩm Giảm Giá</h2>
		</div>
		<div class="container-fluid">
			<div class="sell-off-slider">
				<div class="single-product">
					<div class="level-pro-sale">
						<span>sale</span>
					</div>
					<div class="product-img">
						<a href="single-product.html"> <img src="<c:url value="/james/user/img/product/11.png"/>"
							alt="" class="primary-img"> <img src="<c:url value="/james/user/img/product/12.png"/>"
							alt="" class="secondary-img">
						</a>
					</div>
					<div class="actions">
						<button type="submit" class="cart-btn" title="Add to cart">add
							to cart</button>
						<ul class="add-to-link">
							<li><a class="modal-view" data-target="#productModal"
								data-bs-toggle="modal" href="#"> <i class="fa fa-search"></i></a></li>
							<li><a href="#"> <i class="fa fa-heart-o"></i></a></li>
							<li><a href="#"> <i class="fa fa-refresh"></i></a></li>
						</ul>
					</div>
					<div class="product-price">
						<div class="product-name">
							<a href="single-product.html" title="Fusce aliquam">Fusce
								aliquam</a>
						</div>
						<div class="price-rating">
							<div class="ratings">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star-half-o"></i>
							</div>
							<span>$170.00</span>
						</div>
					</div>
				</div>
				<div class="single-product">
					<div class="level-pro-sale">
						<span>sale</span>
					</div>
					<div class="product-img">
						<a href="single-product.html"> <img src="<c:url value="/james/user/img/product/13.png"/>"
							alt="" class="primary-img"> <img src="<c:url value="/james/user/img/product/14.png"/>"
							alt="" class="secondary-img">
						</a>
					</div>
					<div class="actions">
						<button type="submit" class="cart-btn" title="Add to cart">add
							to cart</button>
						<ul class="add-to-link">
							<li><a class="modal-view" data-target="#productModal"
								data-bs-toggle="modal" href="#"> <i class="fa fa-search"></i></a></li>
							<li><a href="#"> <i class="fa fa-heart-o"></i></a></li>
							<li><a href="#"> <i class="fa fa-refresh"></i></a></li>
						</ul>
					</div>
					<div class="product-price">
						<div class="product-name">
							<a href="single-product.html" title="Fusce aliquam">Fusce
								aliquam</a>
						</div>
						<div class="price-rating">
							<span>$170.00</span>
							<div class="ratings">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star-half-o"></i>
							</div>
						</div>
					</div>
				</div>
				<div class="single-product">
					<div class="level-pro-sale">
						<span>sale</span>
					</div>
					<div class="product-img">
						<a href="single-product.html"> <img src="<c:url value="/james/user/img/product/15.png"/>"
							alt="" class="primary-img"> <img src="<c:url value="/james/user/img/product/16.png"/>"
							alt="" class="secondary-img">
						</a>
					</div>
					<div class="actions">
						<button type="submit" class="cart-btn" title="Add to cart">add
							to cart</button>
						<ul class="add-to-link">
							<li><a class="modal-view" data-target="#productModal"
								data-bs-toggle="modal" href="#"> <i class="fa fa-search"></i></a></li>
							<li><a href="#"> <i class="fa fa-heart-o"></i></a></li>
							<li><a href="#"> <i class="fa fa-refresh"></i></a></li>
						</ul>
					</div>
					<div class="product-price">
						<div class="product-name">
							<a href="single-product.html" title="Fusce aliquam">Fusce
								aliquam</a>
						</div>
						<div class="price-rating">
							<span>$170.00</span>
							<div class="ratings">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star-half-o"></i>
							</div>
						</div>
					</div>
				</div>
				<div class="single-product">
					<div class="level-pro-sale">
						<span>sale</span>
					</div>
					<div class="product-img">
						<a href="single-product.html"> <img src="<c:url value="/james/user/img/product/17.png"/>"
							alt="" class="primary-img"> <img src="<c:url value="/james/user/img/product/18.png"/>"
							alt="" class="secondary-img">
						</a>
					</div>
					<div class="actions">
						<button type="submit" class="cart-btn" title="Add to cart">add
							to cart</button>
						<ul class="add-to-link">
							<li><a class="modal-view" data-target="#productModal"
								data-bs-toggle="modal" href="#"> <i class="fa fa-search"></i></a></li>
							<li><a href="#"> <i class="fa fa-heart-o"></i></a></li>
							<li><a href="#"> <i class="fa fa-refresh"></i></a></li>
						</ul>
					</div>
					<div class="product-price">
						<div class="product-name">
							<a href="single-product.html" title="Fusce aliquam">Fusce
								aliquam</a>
						</div>
						<div class="price-rating">
							<span>$170.00</span>
							<div class="ratings">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star-half-o"></i>
							</div>
						</div>
					</div>
				</div>
				<div class="single-product">
					<div class="level-pro-sale">
						<span>sale</span>
					</div>
					<div class="product-img">
						<a href="single-product.html"> <img src="<c:url value="/james/user/img/product/19.png"/>"
							alt="" class="primary-img"> <img src="<c:url value="/james/user/img/product/20.png"/>"
							alt="" class="secondary-img">
						</a>
					</div>
					<div class="actions">
						<button type="submit" class="cart-btn" title="Add to cart">add
							to cart</button>
						<ul class="add-to-link">
							<li><a class="modal-view" data-target="#productModal"
								data-bs-toggle="modal" href="#"> <i class="fa fa-search"></i></a></li>
							<li><a href="#"> <i class="fa fa-heart-o"></i></a></li>
							<li><a href="#"> <i class="fa fa-refresh"></i></a></li>
						</ul>
					</div>
					<div class="product-price">
						<div class="product-name">
							<a href="single-product.html" title="Fusce aliquam">Fusce
								aliquam</a>
						</div>
						<div class="price-rating">
							<span>$170.00</span>
							<div class="ratings">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star-half-o"></i>
							</div>
						</div>
					</div>
				</div>
				<div class="single-product">
					<div class="level-pro-sale">
						<span>sale</span>
					</div>
					<div class="product-img">
						<a href="single-product.html"> <img src="<c:url value="/james/user/img/product/21.png"/>"
							alt="" class="primary-img"> <img src="<c:url value="/james/user/img/product/22.png"/>"
							alt="" class="secondary-img">
						</a>
					</div>
					<div class="actions">
						<button type="submit" class="cart-btn" title="Add to cart">add
							to cart</button>
						<ul class="add-to-link">
							<li><a class="modal-view" data-target="#productModal"
								data-bs-toggle="modal" href="#"> <i class="fa fa-search"></i></a></li>
							<li><a href="#"> <i class="fa fa-heart-o"></i></a></li>
							<li><a href="#"> <i class="fa fa-refresh"></i></a></li>
						</ul>
					</div>
					<div class="product-price">
						<div class="product-name">
							<a href="single-product.html" title="Fusce aliquam">Fusce
								aliquam</a>
						</div>
						<div class="price-rating">
							<span>$170.00</span>
							<div class="ratings">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star-half-o"></i>
							</div>
						</div>
					</div>
				</div>
				<div class="single-product">
					<div class="level-pro-sale">
						<span>sale</span>
					</div>
					<div class="product-img">
						<a href="single-product.html"> <img src="<c:url value="/james/user/img/product/24.png"/>"
							alt="" class="primary-img"> <img src="<c:url value="/james/user/img/product/25.png"/>"
							alt="" class="secondary-img">
						</a>
					</div>
					<div class="actions">
						<button type="submit" class="cart-btn" title="Add to cart">add
							to cart</button>
						<ul class="add-to-link">
							<li><a class="modal-view" data-target="#productModal"
								data-bs-toggle="modal" href="#"> <i class="fa fa-search"></i></a></li>
							<li><a href="#"> <i class="fa fa-heart-o"></i></a></li>
							<li><a href="#"> <i class="fa fa-refresh"></i></a></li>
						</ul>
					</div>
					<div class="product-price">
						<div class="product-name">
							<a href="single-product.html" title="Fusce aliquam">Fusce
								aliquam</a>
						</div>
						<div class="price-rating">
							<span>$170.00</span>
							<div class="ratings">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star-half-o"></i>
							</div>
						</div>
					</div>
				</div>
				<div class="single-product">
					<div class="level-pro-sale">
						<span>sale</span>
					</div>
					<div class="product-img">
						<a href="single-product.html"> <img src="<c:url value="/james/user/img/product/9.png"/>"
							alt="" class="primary-img"> <img src="<c:url value="/james/user/img/product/10.png"/>"
							alt="" class="secondary-img">
						</a>
					</div>
					<div class="actions">
						<button type="submit" class="cart-btn" title="Add to cart">add
							to cart</button>
						<ul class="add-to-link">
							<li><a class="modal-view" data-target="#productModal"
								data-bs-toggle="modal" href="#"> <i class="fa fa-search"></i></a></li>
							<li><a href="#"> <i class="fa fa-heart-o"></i></a></li>
							<li><a href="#"> <i class="fa fa-refresh"></i></a></li>
						</ul>
					</div>
					<div class="product-price">
						<div class="product-name">
							<a href="single-product.html" title="Fusce aliquam">Fusce
								aliquam</a>
						</div>
						<div class="price-rating">
							<span>$170.00</span>
							<div class="ratings">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star-half-o"></i>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- sell off product area end -->

</body>

