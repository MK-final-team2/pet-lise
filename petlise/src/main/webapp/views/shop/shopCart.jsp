<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv='X-UA-Compatible' content='IE=edge'>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel="stylesheet" href="css/shop/shopCart.css" />
<title> Pet LiSe </title>
<script src="/js/jquery-3.6.4.min.js"></script>
<script>
$(document).ready(function(){

});
</script>
</head>
<body>
    <div id='layout'>
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
		<c:forEach begin="1" end="3" varStatus="vs">
			<div class="cart_product_container">
				<div style="width: 100px;">
					<!-- ★★★목록 불러올때 아이디값 각각 넣기★★★ -->
					<input type="checkbox" id="product_check${vs.count}" class="product_check">
					<label for="product_check${vs.count}"></label>
				</div>
				<div style="width: 460px;" class="cart_info">
					<img src="" alt="product_img">
					<div>
						<a href="#">상품명</a>
					</div>
				</div>
				<div style="width: 130px;">1개</div>
				<div style="width: 130px;">
					<img src="/images/shop/shopdetail/coin2.svg" alt="cart"
						style="width: 20px; margin-top: 2px; margin-right: 5px;" /> 10,000
				</div>
				<div style="width: 130px;">
					<img src="/images/shop/shopdetail/coin2.svg" alt="cart"
						style="width: 20px; margin-top: 2px; margin-right: 5px;" /> 10,000
				</div>
				<div style="width: 100px;">
					<button></button>
				</div>
			</div>
			<!-- 상품1개 -->
		</c:forEach>


		<div id="cart_total">
            <span>총 차감 포인트</span>
            <span>상품가격 20,000 point + 배송비 3,000 point =&nbsp;</span>
            <span>총 합계 23,000 point</span>
            <button>주문하러가기
                <img src="/images/shop/shopdetail/pawprint_black.svg" style="width: 25px;">
            </button>
        </div>

    </div><!--layout end-->
</body>
</html>