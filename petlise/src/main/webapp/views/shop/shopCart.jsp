<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv='X-UA-Compatible' content='IE=edge'>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel="stylesheet" href="css/shop/shopCart.css" />
<link rel="stylesheet" href="css/style.css" />
<link rel="icon" href="/images/favicon.ico" />
<link rel="apple-touch-icon" href="/images/favicon.ico" />
<title> 장바구니 </title>
<script src="/js/jquery-3.6.4.min.js"></script>
<script>
	$(document).ready(function(){
		
		$('#allcheck').click(function(){
			$('.product_check').prop('checked', $(this).prop('checked'));
		}); // allcheck
		
	    $('#all_check_button').click(function(){
	        var allChecked = $(this).prop('checked');
	        if (allChecked) {
	            $(this).prop('checked', false);
	            $('.product_check').prop('checked', false);
	            $('#allcheck').prop('checked', false);
	        } else {
	            $(this).prop('checked', true);
	            $('.product_check').prop('checked', true);
	            $('#allcheck').prop('checked', true);
	        }
	    }); // all_check_button
		
	    $('.each_delete').click(function(){
	    	var container = $(this).closest('.cart_product_container');
	        var productName = $(this).data('product_name');
	        
	        $.ajax({
	            url: 'deletecartlist',
	            type: 'GET',
	            data: { product_name: productName },
	            success: function(response) {
	                container.remove();
	                location.href = "/shopcart";
	            },
	            error: function(xhr, status, error) {
	                console.error(error);
	            }
	    	}); // ajax
	    }); // each_delete
	    
	    $('#checked_delete_button').click(function() {
	        var checkedItems = $('.product_check:checked');
	        checkedItems.each(function() {
	            var container = $(this).closest('.cart_product_container');
	            
	            $.ajax({
	                url: 'deletecartlist',
	                type: 'GET',
	                data: { product_name: container.find('.cart_info a').text().trim() },
	                success: function(response) {
	                    container.remove();
	                    location.href = "/shopcart";
	                },
	                error: function(xhr, status, error) {
	                    console.error(error);
	                }
	            }); // ajax
	        }); // each
	    }); // checked_delete
	    
	    var price = 0;
	    $('.cart_product_container').each(function(){
	        var productPrice = parseInt($(this).find('[data-product_price]').data('product_price'));
	        price += productPrice;
	    }); 

	    var formatPrice = price.toLocaleString();
	    var payment = '상품가격 ' + formatPrice + ' point + 배송비 3,000 point =&nbsp;&nbsp;';
	    $('#payment').html(payment);

	    var subTotal = 0;
	    var total = 0;
	    $('.cart_product_container').each(function(){
	        var priceTotal = parseInt($(this).find('[data-price_total]').data('price_total'));
	        subTotal += priceTotal;
	        total = subTotal + 3000;
	    });

	    var formattedPriceTotal = total.toLocaleString();
	    var totalPrice = '총 합계 ' + formattedPriceTotal + ' point';
	    $('#totalPrice').html(totalPrice);
	    
	    if (price === 0 && subTotal === 0) {
	        $('#payment').empty();
	        $('#totalPrice').empty();
	    }
	    
	}); // ready
	
    function redirectToLink(){
    	location.href = '#';
    } // empty_shop 버튼
    
</script>
</head>
<body>
    <div id="layout">
        <div id="title">
            <div id="first">
                <img src="/images/shop/shoplist/cart_yellow.svg" alt="cart"/>
                <span>장바구니</span>
            </div>
            <div id="second">
                <span class="second_active">01 장바구니</span>
                <span>&nbsp;> 02 주문/결제 > 03 주문완료</span>
            </div>
        </div><!--title end-->

        <div id="cart_title">
            <div style="width: 100px;">
                <input type="checkbox" id="allcheck">
                <label for="allcheck"></label>
            </div>
            <div style="width: 460px;">상품정보</div>
            <div style="width: 130px;">수량</div>
            <div style="width: 130px;">포인트</div>
            <div style="width: 130px;">소계</div>
            <div style="width: 100px;">삭제</div>
        </div><!--cart_title end-->

		<!-- 장바구니 상품목록 -->
		<div>
			<c:if test="${empty cart }">
				<div class="cart_empty">장바구니를 담아주세요 
					<button class="empty_shop" onclick="redirectToLink()">쇼핑하기</button>
				</div>
				<script>
		            document.getElementById("checked_delete_button").style.display = "none";
		            document.getElementById("all_check_button").style.display = "none";
        		</script>
			</c:if>		
			<c:forEach var="cart" items="${cart }" begin="0" end="2">
				<div class="cart_product_container">
					<div style="width: 100px;">
						<input type="checkbox" id="product_check_${cart }" class="product_check">
						<label for="product_check_${cart }"></label>
					</div>
					<div style="width: 460px;" class="cart_info">
						<img src="${cart.product_image }" alt="product_img">
						<div>
							<a href="#">${cart.product_name }</a>
						</div>
					</div>
					<div style="width: 130px;">${cart.quantity }</div>
					<div style="width: 130px;" data-product_price="${cart.product_price }">
						<img src="/images/shop/shopdetail/coin2.svg" alt="cart"
							style="width: 20px; margin-top: 2px; margin-right: 5px;" /><fmt:formatNumber value="${cart.product_price }" pattern="#,###" />
					</div>
					<div style="width: 130px;" data-price_total="${cart.price_total }">
						<img src="/images/shop/shopdetail/coin2.svg" alt="cart"
							style="width: 20px; margin-top: 2px; margin-right: 5px;"/><fmt:formatNumber value="${cart.price_total }" pattern="#,###" />
					</div>
					<div style="width: 100px;">
						<button class="each_delete" data-product_name="${cart.product_name }"></button>
					</div>
				</div>
				<!-- 상품1개 -->
			</c:forEach>
			<div class="check_delete_button">
				<c:if test="${not empty cart}">
					<button id="checked_delete_button" class="checked_delete">선택삭제</button>
					<button id="all_check_button" class="all_check">모두선택</button>
				</c:if>
			</div>
		</div>
		
		<div id="cart_total">
            <span>총 차감 포인트</span>
            <span id="payment"></span>
            <span id="totalPrice"></span>
            <button>주문하러가기
                <img src="/images/shop/shopdetail/pawprint_black.svg" style="width: 25px;">
            </button>
        </div>

    </div><!--layout end-->
</body>    
</html>