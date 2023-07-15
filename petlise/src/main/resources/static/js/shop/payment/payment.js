//천단위 콤마표시
	$(document).ready(function() {

	  $('.product_price, .price_total').each(function() {
	    var $priceElement = $(this);
	    var priceText = $priceElement.text();
	    var priceNumber = parseInt(priceText, 10);
	    var formattedPrice = numberWithCommas(priceNumber);
	    $priceElement.html('<img src="/images/mypage/coin2.svg" id="point_Icon">' + formattedPrice);
	  });
	});
	
	function numberWithCommas(number) {
	  return number.toLocaleString();
	}

	

	
	
//회원 정보 동일 버튼
	$(document).ready(function() {
	
	  $('#address_CheckBox').click(function() {
	    if ($(this).is(':checked')) {
	
	      var memberName = $('#member_Name').text();
	      $('#input_Name').val(memberName);
	      
	      var memberAddress = $('#member_Address').text();
	      var addressParts = memberAddress.split(', ');
	      
	      $('#sample6_postcode').val(addressParts[0]);
	      $('#sample6_address').val(addressParts[1]);
	      $('#sample6_detailAddress').val(addressParts[2]);
	    } else {
	      
	      $('#input_Name').val('');
	      $('#sample6_postcode').val('');
	      $('#sample6_address').val('');
	      $('#sample6_detailAddress').val('');
	    }
	  });
	});


//주문날짜 표현
	var today = new Date();
	var year = today.getFullYear();
	var month = (today.getMonth() + 1).toString().padStart(2, '0');
	var day = today.getDate();
	var order_date = year + "-" + month + "-" + day;
	
	document.getElementById("order_date").textContent = order_date;


//상품 전체 Point 계산
	var productPrices = document.getElementsByClassName("product_price");
	var calcTotalPoint = 0;
	
	for (var i = 0; i < productPrices.length; i++) {
	  var calcPrice = parseFloat(productPrices[i].innerText);
	  calcTotalPoint += calcPrice;
	}
	
	var formattedTotalPoint = calcTotalPoint.toLocaleString();
	var totalPoint = document.getElementById("totalPoint");
	totalPoint.innerText = formattedTotalPoint;


// 총 결제 Point 계산
	calcTotalPayment = calcTotalPoint + 3000;
	
	var formattedTotalPayment = calcTotalPayment.toLocaleString();
	var totalPayment = document.getElementById("totalPayment");
	totalPayment.innerText = formattedTotalPayment;


// 잔여 Point 계산
	calcChange = 45000 - calcTotalPayment;
	
	var formattedChange = calcChange.toLocaleString();
	var change = document.getElementById("change");
	change.innerText = formattedChange;


//결제하기 버튼
$('#order_Btn').click(function(){
	if ($('#check_Delivery').is(':checked') && $('#check_Order').is(':checked')) {
		
		if (confirm("결제를 진행하시겠습니까?")) {
			//구매자 정보 저장
			$.ajax({
				url: '/saveorderinfo',
				type: 'POST',
				dataType: 'json',
				data: {
					user_id: 'petlise',
					name: $('#input_Name').val(),
					phone: $('#input_Phone').val(),
					address: $('#sample6_postcode').val() + ", " 
							+ $('#sample6_address').val() + ", " 
							+ $('#sample6_detailAddress').val(),
					require: $('#input_Require').val()		
				},
				complete: function(response){
					var order_id = response.order_id;
						if(order_id == null){					
							//주문번호 저장
							$.ajax({
								url:'/orderconfirm',
								type: 'POST',
								dataType: 'json',
								data: {
									order_id: order_id
								},
								complete: function(response2){
									//주문완료 후 장바구니 비우기
									$.ajax({
										url: '/deletecart',
										type: 'POST',
										data: {
											user_id: 'petlise'
										},
										complete: function(response3){
											//판매량 업데이트
											var product_ids = [];
												$('.product_id').each(function(){
													var product_id = parseInt($(this).text());
													product_ids.push(product_id);
												});
												$.ajax({
													url: '/updatesales',
													type: 'POST',
													dataType: 'json',
													traditional: true,
													data:{
														product_ids: product_ids
													},
													complete: function(response4){
														location.href = "/shopcart";
																																			
													}
												});
										}
									});
								}
							});
						} else { }
				} //complete
			});
			
		} else { }
	} else {
		alert("배송 및 주문정보를 확인해주세요.");
		return false;
	}
});


