<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<head>
<meta charset="UTF-8">
<title>Giỏ Hàng</title>
</head>
<body>
<div class="shopping-cart">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="location">
                            <ul>
                                <li><a href="<c:url value ="/trang-chu/"/>" title="Trang Chu">Trang Chủ<span>/</span></a>  </li>
                                <li><strong> Giỏ Hàng</strong></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table-bordered table table-hover">
                                <thead>
                                    <tr>
                                        <th>Ảnh</th>
                                        <th>Sản Phẩm</th>
                                        <th>Màu Sắc</th>
                                        <th>Đơn Giá</th>
                                        <th>Số Lượng</th>
                                        <th>Chỉnh Sửa</th>
                                        <th>Xóa</th>
                                        <th>Tổng Tiền</th>
                                     
                                    </tr>
                                </thead>
                                <tbody class="text-center">                              
                                <c:forEach var="item" items="${ Cart }">
                                <tr>
                                        <td> <img width="100" src="<c:url value="/james/user/img/product/${item.value.product.img }"/>"></td>
                                        <td>${item.value.product.name } </td>
                                        <td>${item.value.product.name_color}</td>
                                        <td><span><fmt:formatNumber type="number" groupingUsed="true" value="${ item.value.product.price }" /> .VNĐ </span></td>
                                        
                                        <td><input type="number" min="1" max="1000" value = "${ item.value.quanty }" id="quanty-cart-${item.key }"></td>
                                        
                                        <td><button  data-id="${item.key }"  class="btn btn-mini btn-danger edit-cart" type="button">Sửa</button></td>
                                        
                                        
                                        <td><a href="<c:url value ="/DeleteCart/${item.key }"/>" class="btn btn-mini btn-danger" type="button">Xóa</a> </td>
                                        <td><span><fmt:formatNumber type="number" groupingUsed="true" value="${ item.value.totalPrice }" /> .VNĐ </span></td>
                                       
                                    </tr>
                                </c:forEach>
                             
                                    
                                </tbody>
                            </table>
                            <div class="shopping-button">
                                <div class="continue-shopping">
                                    <p> Tổng Tiền ${TotalQuantyCart  } sản phẩm là :  <span><fmt:formatNumber type="number" groupingUsed="true" value="${ TotalPriceCart }" /> .VNĐ </span></p>
                                </div>
                                <div class="shopping-cart-left">
                                   <a href= "<c:url value ="/checkout"/>">
                                  	 <button type="submit" >Thanh Toán</button>
                                   </a>
                                    
                                </div>
                            </div>
                        </div>
                    </div>
                </div>               
            </div>
        </div>
        
        <content tag="script">
        <script >
        	$(".edit-cart").on("click",function(){
        		
        		var id = $(this).data("id");
        		var quanty = $("#quanty-cart-"+id).val();
        		window.location = "EditCart/"+id+"/"+quanty ;
        	});
        
        
        </script>
        
        </content>
        
</body>
