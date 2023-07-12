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