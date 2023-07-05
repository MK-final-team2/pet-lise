function sendNumber() {
	let email = $("#email").val();
	
if ($('#emailCheckButton').val() == "true") {
	$.ajax({
		url: "/sendemail",
		type: "post",
		dataType: "json",
		data: { email: email },
		success: function(data) {
			alert("인증번호가 발송되었습니다.");
			$("#sendNum").attr("value", data);	
			$("#sendNum").css("display", "none");
			$("#checkNum").css("display", "block");
		},
	});
} else {
	alert("이메일 중복확인 해주세요.")
}
}

function confirmNumber() {
	var number1 = $("#number").val();
	var number2 = $("#sendNum").val();

	if (number1 == number2) {
		alert("인증되었습니다.");
		$("#checkNum").attr("value", "true");
	} else {
		alert("번호가 다릅니다.");
	}
}