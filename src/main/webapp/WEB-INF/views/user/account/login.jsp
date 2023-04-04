<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  



<meta charset="UTF-8">
<title>Đăng Nhập</title>
</head>
<body>
	<div class="shopping-cart">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="location">
						<ul>
							<li><a href="<c:url value ="/trang-chu/"/>" title="Trang Chủ">Trang Chủ<span>/</span></a>
							</li>
							<li><strong>Đăng Nhập</strong></li>
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
								<h2>Đăng Nhập</h2>
								<span>Nhập Email và pass.</span>
							</div>
							<div class="login-form">
								<form:form action="dang-nhap" method="POST" modelAttribute="user">
									<div class="control-group">
										<label class="control-label" for="inputEmail">Email</label>
										<div class="controls">
											<form:input type="email"  path="user" />
										</div>
									</div>
									<div class="control-group">
										<label class="control-label" for="inputEmail">Pass</label>
										<div class="controls">
											<form:input type="password"  path="password" />
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
