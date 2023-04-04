<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<head>
<meta charset="UTF-8">
<title>Đăng Ký</title>
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
							<li><strong>Đăng Ký Tài Khoảng</strong></li>
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
								<h2>Đăng Ký</h2>
								<span>Nhập đầy đủ các thông tin bên dưới.</span>
							</div>
							<div class="login-form">
								<form:form action="dang-ky" method="POST" modelAttribute="user">
									<div class="control-group">
										<label class="control-label" for="inputEmail">Email</label>
										<div class="controls">
											<form:input type="email" placeholder="Nhập Email" path="user" />
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="inputEmail">Mật Khẩu</label>
										<div class="controls">
											<form:input type="password" placeholder="Nhập Pass" path="password" />
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="inputEmail">Họ Và Tên</label>
										<div class="controls">
											<form:input type="text" placeholder="Nhập họ tên" path="display_name" />
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="inputEmail">Địa Chỉ</label>
										<div class="controls">
											<form:input type="text" placeholder="Địa Chỉ" path="address" />
										</div>
									</div>
									<div class="button-box">
										<button type="submit" class="default-btn">Đăng Ký</button>
									</div>
								</form:form>
							</div>
						</div>
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
								<h2>Đăng Nhập ${statusLogin}</h2>
								<span>Nhập Email và pass.</span>
							</div>
							<div class="login-form">
								<form:form action="dang-nhap" method="POST" modelAttribute="user">
									<div class="control-group">
										<label class="control-label" for="inputEmail">Email</label>
										<div class="controls">
											<form:input type="email" placeholder="Nhập Email" path="user" />
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="inputEmail">Mật Khẩu</label>
										<div class="controls">
											<form:input type="password" placeholder="Nhập Pass" path="password" />
										</div>
									</div>
									
									<div class="button-box">
										<button type="submit" class="default-btn">Đăng Nhập</button>
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
