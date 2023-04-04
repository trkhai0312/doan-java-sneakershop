<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<head>
<meta charset="UTF-8">
<title>Thanh Toán</title>
</head>
<body>
	<div class="shopping-cart">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="location">
						<ul>
							<li><a href="<c:url value ="/trang-chu/"/>"
								title="Trang Chủ">Trang Chủ<span>/</span></a></li>
							<li><strong>Thanh Toán</strong></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="login-area ptb-120">
		<div class="container">
			<div class="row">
				<div class="col-lg-6 offset-md-3 text-center">
					<div class="login">
						<div class="login-form-container">
							<div class="login-text">
								
							</div>
							<div class="login-form">
								<form:form action="checkout" method="POST" modelAttribute="bills">
								<h3>Thanh Toán Đơn Hàng</h3>
									
									<div class="control-group">
										<label class="control-label" for="inputEmail">Họ Và Tên</label>
										<div class="controls">
											<form:input type="text" placeholder="Nhập Họ Tên" path="display_name" />
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="inputEmail">Email</label>
										<div class="controls">
											<form:input type="email" placeholder="Nhập Email" path="user" />
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="inputEmail">Số Điện Thoại</label>
										<div class="controls">
											<form:input type="text" placeholder="SDT" path="phone" />
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="inputEmail">Địa Chỉ</label>
										<div class="controls">
											<form:textarea row ="5" cols ="30" path="address" />
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="inputEmail">Ghi Chú</label>
										<div class="controls">
											<form:textarea row = "5" cols="30"  path="note" />
										</div>
									</div>
									<div class="button-box">
										<button type="submit" class="default-btn">Thanh Toán</button>
									</div>
								</form:form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
</body>
