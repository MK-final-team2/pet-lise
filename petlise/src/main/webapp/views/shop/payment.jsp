<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문/결제</title>
<link rel="stylesheet" href="/css/shop/payment.css">
<link rel="stylesheet" href="/css/style.css">
</head>
<body>
	<div class="payment"><span class="material-symbols-outlined" id="cart_Icon">shopping_cart</span>주문 / 결제</div>
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
<!--			<c:forEach class="table_Column"> --> 
			    <div class="table_Column">
					<div id="table_Product_Img">
						<p>
							<a href="#">
								<img src="/images/kangnangkong.png">
							</a>
						</p>
					</div>
					<div id="table_Product_Info">
						<p>
							<a href="#">
								<span id="table_Product_Summary">상품 A</span>
								<span id="table_Product_Detail">옵션설명옵션설명옵션설명</span>				
							</a>
						</p>
					</div>
				    <div id="table_Quantity">
						<p>1개</p>
				    </div>
				    <div id="table_Price">
				    	<p>
							<img src="/images/mypage/coin2.svg" id="point_Icon"> 10,000
						</p>
				    </div>
				    <div id="table_Total">
				    	<p>
							<img src="/images/mypage/coin2.svg" id="point_Icon"> 10,000
						</p>
				    </div>
	   			</div>			
	<!-- 		</c:forEach> -->
			

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
						<div class="receipt_Title"><img src="/images/mypage/coin2.svg" id="receipt_Icon">포인트 영수증</div>
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
									<p>2023.06.30</p>
								</div>							
								<div class="receipt_Row_1">
									<p><img src="/images/mypage/coin2.svg" id="point_Icon"> 2,500</p>
									<p><img src="/images/mypage/coin2.svg" id="point_Icon"> 30,000</p>
								</div>
								<div class="receipt_Row_2">
									<p><img src="/images/mypage/coin2.svg" id="point_Icon"> 32,500</p>
									<p><img src="/images/mypage/coin2.svg" id="point_Icon"> 45,000</p>
								</div>
								<div class="receipt_Row_3">
									<p><img src="/images/mypage/coin2.svg" id="point_Icon"> 12,500</p>
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
</body>
</html>