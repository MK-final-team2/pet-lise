//잔여포인트 계산
var totalPayment = parseInt($('.total_payment').text().replace(/,/g, ''), 10);
var change = 45000 - totalPayment;
$('.change').text(change.toLocaleString());