<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="shopping-cart">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="location">
						<ul>
							<li><a href="<c:url value ="/trang-chu/"/>"
								title="Trang Chu">Trang Chủ<span>/</span></a></li>
							<li><strong> Giỏ Hàng</strong></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="login-area">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 offset-lg-3 text-center">
					<div class="login">
						<div class="login-form-container">
							<div class="login-text">
								<h2>Đặt Hàng Thành Công!!</h2>								
							</div>
							<div class="login-form">
								
                                   <div class="button-box">
										<a href= "<c:url value ="/trang-chu"/>">
                                  	 <button type="submit" class= "default-btn" >Trang Chủ</button>
                                   </a>
									</div>
                                   <div class="button-box">
										<a href= "<c:url value ="/shop"/>">
                                  	 <button type="submit" class= "default-btn" >Mua Thêm</button>
                                   </a>
									</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
