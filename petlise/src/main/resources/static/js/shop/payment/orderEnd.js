//잔여포인트 계산
	var totalPayment = parseInt($('.total_payment').text().replace(/,/g, ''), 10);
	var change = 45000 - totalPayment;
	$('.change').text(change.toLocaleString());

//홈으로 가기 버튼
	function redirectToHome(){
		window.location.href = "/";
	}


//주문내역보기 버튼
	function redirectOrderList(){
		var user_id = $('.user_id').text();
		location.href = "/orderlist?user_id=" + user_id;
	}