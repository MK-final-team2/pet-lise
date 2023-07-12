<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv='X-UA-Compatible' content='IE=edge'>
<meta name='viewport' content='width=device-width, initial-scale=1'>
<link rel="stylesheet" href="/css/shop/payment.css">
<link rel="stylesheet" href="/css/style.css">
<link rel="icon" href="/images/favicon.ico" />
<link rel="apple-touch-icon" href="/images/favicon.ico" />
<title>주문/결제</title>
<script src="/js/jquery-3.6.4.min.js"></script>
</head>
<body>
	<div id="layout">
     <div id="title">
         <div id="first">
             <img src="/images/shop/shoplist/cart_yellow.svg" alt="cart"/>
             <span>주문/결제</span>
         </div>
         <div id="second">
         	<span> 01 장바구니 >&nbsp; </span>
             <span class="second_active">02 주문/결제</span>
             <span>&nbsp; > 03 주문완료</span>
         </div>
     </div><!--title end-->
		<div class="contents">
			<div class="contents_Table">
				<div class="table">
					<div class="table_Header">
						<p id="table_Header_Product">상품정보</p>
						<p id="table_Header_Quantity">수량</p>
						<p id="table_Header_Price">포인트</p>
						<p id="table_Header_Total">소계</p>
					</div>
				</div>
			</div>
		<div>
			<c:forEach var="order" items="${orderList}" begin="0" end="2">
			    <div class="table_Column">
			        <div id="table_Product_Img">
			            <p>
			                <a href="#">
			                    <img class="product_image" src="${order.product_image}">
			                </a>
			            </p>
			        </div>
			        <div id="table_Product_Info">
			            <p>
			                <a href="#">
			                    <span class="product_name">${order.product_name}</span>				
			                </a>
			            </p>
			        </div>
			        <div id="table_Quantity">
			            <p>${order.quantity}</p>
			        </div>
			        <div id="table_Price">
			            <p class="product_price">
			                <img src="/images/mypage/coin2.svg" id="point_Icon">${order.product_price}
			            </p>
			        </div>
			        <div id="table_Total">
			            <p class="price_total">
			                <img src="/images/mypage/coin2.svg" id="point_Icon">${order.price_total}
			            </p>
			        </div>
			    </div>
			</c:forEach>
		</div>
			<div class="order_Detail">
				<div class="order_Info">
					<div class="member_Info_Title">회원 정보</div>
					<table class="member_Info">
						<tr id="member_Name">
							<td class="col_1">이름</td>
							<td class="col_2">이름이름</td>
						</tr>
						<tr id="member_Email">
							<td class="col_1">이메일</td>
							<td class="col_2">이메일@이메일</td>
						</tr>						
						<tr id="member_Phone">
							<td class="col_1">휴대폰 번호</td>
							<td class="col_2">휴대폰 번호</td>
						</tr>
					</table>
					
					<div class="delivery_Info_Title">배송 정보<span id="address_Check"><input type="checkbox" id="address_CheckBox"><label for="address_CheckBox">배송 정보 동일</label></span></div>
					<table class="delivery_Info">
						<tr id="delivery_Name">
							<td class="col_1">받는분 성함</td>
							<td class="col_2">이름이름</td>
						</tr>
						<tr id="delivery_Address">
							<td class="col_1">배송 주소</td>
							<td class="col_2">주소주소</td>
						</tr>
						<tr id="delivery_Phone">
							<td class="col_1">연락처</td>
							<td class="col_2">연락처</td>
						</tr>
						<tr id="delivery_Detail">
							<td class="col_1">배송 요청사항</td>
							<td class="col_2">요청사항</td>
						</tr>
						<tr id="delivery_Status">
							<td class="col_1">배송 현황</td>
							<td class="col_2">배송 현황</td>					
						</tr>
					</table>
					<p id="delivery_Caption">※ 배송지 정보는 주문 완료시 수정이 불가능하므로 정보를 꼭 확인해주시기 바랍니다.</p>
				</div>
			
				<div class="receipt">
					<div class="receipt_Detail">
						<div class="receipt_Title"><img src="/images/mypage/coin2.svg" id="receipt_Icon">주문내역</div>
						<div class="receipt_Contents">
							<div class="receipt_Col_1">
								<div class="receipt_Row_0">
									<p>주문날짜</p>
								</div>							
								<div class="receipt_Row_1">
									<p>상품 전체 Point</p>
									<p>배송 Point</p>
								</div>
								<div class="receipt_Row_2">
									<p>총 결제 Point</p>
									<p>결제 가능 Point</p>
								</div>
								<div class="receipt_Row_3">
									<p>잔여 Point</p>
								</div>									
							</div>																
							<div class="receipt_Col_2">
								<div class="receipt_Row_0">
									<p id="order_date"></p>
								</div>
								<div class="receipt_Row_1">
									<p><img src="/images/mypage/coin2.svg" id="point_Icon"><span id="totalPoint"></span></p>
									<p><img src="/images/mypage/coin2.svg" id="point_Icon">3,000</p>
								</div>
								<div class="receipt_Row_2">
									<p><img src="/images/mypage/coin2.svg" id="point_Icon"><span id="totalPayment"></span></p>
									<p><img src="/images/mypage/coin2.svg" id="point_Icon">45,000</p>
								</div>
								<div class="receipt_Row_3">
									<p><img src="/images/mypage/coin2.svg" id="point_Icon"><span id="change"></span></p>
								</div>
							</div>
							<div class="receipt_Check">
								<input type="checkbox" id="check_Delivery"><label for="check_Delivery">배송지 정보를 확인하였습니다.</label>
							</div>
							<div class="receipt_Check">
								<input type="checkbox" id="check_Order"><label for="check_Order">위 주문 내용을 확인 하였으며,<br>&nbsp;&nbsp;&nbsp;&nbsp; 회원 본인은 개인정보 이용 및 결제에 동의합니다.</label>
							</div>
						</div>
						<div id="logo"><img src="/images/logo.png"></div>
					</div>
				</div>
			</div>
			<div class="Btn">
				<input type=button value="결제하기" id="orderList_Btn" onclick="#">
			</div>
		</div>
	</div>				
<script src="/js/shop/payment/payment.js"></script>
</body>
</html>