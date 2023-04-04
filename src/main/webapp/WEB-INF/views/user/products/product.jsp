<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 

<head>
<meta charset="UTF-8">
<title>Thông Tin Sản Phẩm</title>
</head>
<body>

<div class="Single-product-location home2">
            <div class="container">
                <div class="row">
                
                    <div class="col-md-12">
                        <div class="location">
                            <ul>
                                <li><a href="<c:url value ="/trang-chu/"/>" title="go to homepage">Trang Chủ<span>/</span></a>  </li>
                                <li><strong> Chi Tiết Sản Phẩm</strong></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="single-product-details">
            <div class="container">
                <div class="row">
               
                    <div class="col-lg-6">
                        <div class="single-product-img tab-content">
                         
                            <div class="single-pro-main-image tab-pane active" id="pro-large-img-1">
                                <a href="#"><img class="optima_zoom" src="<c:url value="/james/user/img/product/${ product.img }"/>" data-zoom-image="<c:url value="/james/user/img/product/${ product.img }"/>" alt="optima"/></a>
                            </div>
                            
                        </div>
                        
                        <div class="nav product-page-slider">
                            <div class="single-product-slider">
                                <a class="active" href="#pro-large-img-1" data-bs-toggle="tab">
                                    <img src="<c:url value="/james/user/img/product/${ product.img }"/>" alt="">
                                </a>
                            </div>
                            
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="single-product-details">
                            <a href="#" class="product-name">${product.name }</a>
                            <div class="list-product-info">
                                <div class="price-rating">
                                    <div class="ratings">
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star"></i>
                                        <i class="fa fa-star-half-o"></i>
                                        
                                    </div>
                                </div>
                            </div>
                            <div class="avalable">
                                <p>DVVC:<span>  stock</span></p>
                            </div>
                            <div class="item-price">
                               <span><fmt:formatNumber type="number" groupingUsed="true" value="${ product.price }" /> .VNĐ </span>
                            </div>
                            <div class="single-product-info">
                            	<p> Sản Phẩm :  ${product.title } </p>
                            	<p> ${product.details } </p>
                            </div>
                           
                            
                                <div class="color-select">
                                    <label class="required">
                                        <em>*</em> MÀU
                                    </label>
                                    <div class="input-box">
                                        <select id="select-1">
                                            <option value="">Chọn Màu</option>
                                            <option value="">${product.name_color }</option>
                                           
                                        </select>
                                    </div>
                                </div>
                                <div class="size-select">
                                    <label class="required">
                                        <em>*</em> Size
                                    </label>
                                    <div class="input-box">
                                        <select id="select-2">
                                            <option value="">Chọn Size</option>
                                            <option value="">${product.size } </option>
                                            
                                        </select>
                                    </div>
                                </div>   
                                <div class="single-cart">
                                    <div class="cart-plus-minus">
                                        <label>SL: </label>
                                        <input class="cart-plus-minus-box" type="text" name="qtybutton" value="1">
                                    </div>
                                    <form method="get" action="<c:url value="/AddCart/${ product.id_product }"/>">
                                    	<button type="submit" class="cart-btn">Thêm Giỏ Hàng</button>
                                    </form>
                                </div>
                        </div>
                    </div>
                  
                </div>
              
            </div>
        </div>
        <div class="related-product home2">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="product-title">
                            <h2>Sản Phẩm Cùng Loại</h2>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="related-slider">
                      <c:forEach var="item" items="${productByIDCategory}">
                        <div class="col-md-12">
                      
                            <div class="single-product">
                                <div class="product-img">
                                    <a href="<c:url value = "/chi-tiet-san-pham/${item.id_product}"/>">
                                        <img src="<c:url value="/james/user/img/product/${ item.img }"/>" alt="" class="primary-img">
                                        <img src="<c:url value="/james/user/img/product/${ item.img }"/>" alt="" class="secondary-img">
                                    </a>
                                </div>
                                <div class="product-price">
                                    <div class="product-name">
                                        <a href="single-product.html" title="Fusce aliquam">${item.name }</a>
                                    </div>
                                    <div class="price-rating">
                                        <span><fmt:formatNumber type="number" groupingUsed="true" value="${ item.price }" /> .VNĐ </span>
                                    </div>
                                </div>
                            </div>
                            
                        </div>
                        </c:forEach>
                    </div>
                </div>
            </div>
        </div>
</body>
