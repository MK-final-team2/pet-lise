//로그인 세션 및 오더번호
  const queryString = window.location.search;
  const urlParams = new URLSearchParams(queryString);
  const order_id = urlParams.get('order_id');
  const user_id = urlParams.get('user_id');
  console.log(order_id); // order_id 값을 로그로 확인
  console.log(user_id); // user_id 값을 로그로 확인
  
//잔여 Point 계산 및 표시
  const totalPaymentText = document.getElementById('total_payment').innerText;
  const affordableText = document.getElementById('affordable').innerText;

  const totalPayment = parseInt(totalPaymentText.replace(/,/g, ''));
  const affordable = parseInt(affordableText.replace(/,/g, ''));

  const change = affordable - totalPayment;

  const changeElement = document.getElementById('change');
  changeElement.innerText = change.toLocaleString(); 