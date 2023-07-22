/* ---------- 이미지 프리뷰 ----------- */
$("#file1").change(function() {
	if (this.files && this.files[0]) {
		var reader = new FileReader;
		reader.onload = function(data) {
			$("#fileimg1").attr("src", data.target.result).width(300);
			$("#fileimg1").attr("src", data.target.result).height(300);
			$("#fileimg1").css('border','2px solid var(--light-sub)');
			$("#fileimg1").css('border-radius','10px');
		}
		reader.readAsDataURL(this.files[0]);
	}
});

$("#file2").change(function() {
	if (this.files && this.files[0]) {
		var reader = new FileReader;
		reader.onload = function(data) {
			$("#fileimg2").attr("src", data.target.result).width(300);
			$("#fileimg2").css('border','2px solid var(--light-sub)');
			$("#fileimg2").css('border-radius','10px');
		}
		reader.readAsDataURL(this.files[0]);
	}
});

/* ---------- 드랍박스 ----------- */
$('#dropdown').click(function() {
	$(this).attr('tabindex', 1).focus();
	$(this).toggleClass('active');
	$(this).find('.dropdown-menu').slideToggle(300);
});

$('#dropdown').focusout(function() {
	$(this).removeClass('active');
	$(this).find('.dropdown-menu').slideUp(300);
});

$('#dropdown .dropdown-menu li').click(function(e) {
	e.stopPropagation();
	let value = $(this).text();
	$(this).parents('.dropdown').find('span').text(value);
	$(this).parents('.dropdown').find('input').val(value);
	$(this).parents('.dropdown').find('.dropdown-menu').slideUp(300);

	let codehead = $('#code_after').val().slice(1);
	$('#code_after').val(value.slice(-2,-1)+codehead);
	$('#code_after').css('font','var(--highlight16)');
	$('#code_after').css('color','var(--light-main)');

});

$('#dropdown2').off('click').on('click', function(e) {
	e.stopPropagation();
	$(this).attr('tabindex', 1).focus();
	$(this).toggleClass('active');
	$(this).find('.dropdown-menu').slideToggle(300);
});

$('#dropdown2').off('focusout').on('focusout', function() {
	$(this).removeClass('active');
	$(this).find('.dropdown-menu').slideUp(300);
});

$('#dropdown2 .dropdown-menu li').off('click').on('click', function(e) {
	e.stopPropagation();
	let value = $(this).text();
	$(this).parents('.dropdown').find('span').text(value);
	$(this).parents('.dropdown').find('input').val(value);
	$(this).parents('.dropdown-menu').slideUp(300);
	$(this).parents('.dropdown').removeClass('active');
	
	let codehead = $('#code_after').val().slice(0,1);
	let codetail = $('#code_after').val().slice(3);
	$('#code_after').val(codehead+value.slice(-3,-1)+codetail);
	$('#code_after').css('font','var(--highlight16)');
	$('#code_after').css('color','var(--light-main)');
	
});

//카테고리 원래대로 버튼
$('#returnbtn').on('click', function(){
	$('#span_pettype').html($('#petTypeTmp').val());
	$('#span_product').html($('#productTypeTmp').val());
	$('#code_after').val($('#code_before').val());
	$('#code_after').css('font','var(--body16)');
	$('#code_after').css('color','var(--light-text)');
});


//전체 수정취소버튼
$("#cancelButton").on("click",function(){
	$("#cancel_modal").css('display', 'block');
	
	$(".golisthomebtn").on("click",function(){
		history.back();
	});
});

//전체 수정버튼--모달 확인창 팝업
$("#editButton").on("click",function(){
	if($("#product_name").val()==""){
		$("#alertmodal .modal_text").html("상품명을 확인해 주세요.");
		$("#alertmodal").css('display', 'block');		
	}else if($("#product_price").val()==0 || $("#product_price").val()==""){
		$("#alertmodal .modal_text").html("상품가격을 확인해 주세요.");
		$("#alertmodal").css('display', 'block');
	}else if($("#product_regtime").val()==""){
		$("#alertmodal .modal_text").html("등록일자를 확인해 주세요.");
		$("#alertmodal").css('display', 'block');
	}else{
		$("#confirm_modal").css('display', 'block');
	}
});

//모달-수정버튼 (db정보수정)
$(".modal_editbtn").on('click', function(){
	$(this).parents(".modal").css('display', 'none');
	$.ajax({
		type : 'post',
		url : '/editproduct',
		dataType : 'json',
		data : {
			product_id : $("#product_number").val(),
			pet_type : $("#petType").val().replace("(D)","").replace("(C)",""),
			category : $("#productType").val().replace("(01)","").replace("(02)","").replace("(03)","").replace("(04)",""),
			product_code : $("#code_after").val(),
			reg_date : $("#product_regtime").val(),
			product_name : $("#product_name").val(),
			price : $("#product_price").val(),
			quatity :$("#product_quatity").val(),
			isvisible : $("#isvisible").val()=='품절'?false:true
		},
		success : function(result) { // 결과 성공 콜백함수
		   	$("#okaymodal").css('display', 'block');
    	},
	    error : function(request, status, error) { // 결과 에러 콜백함수
	        console.log(error)
	    }
	});//ajax end
});

//모달창 내의 취소버튼
$(".modal_cancelbtn").on('click', function(){
	$(this).parents(".modal").css('display', 'none');
});

//수정 후 완료 버튼
$("#okaymodal .okaybtn").on('click', function(){
	$(this).parents(".modal").css('display', 'none');
	$('#adminshoplist').submit();
});

//경고창 확인 버튼
$("#alertmodal .okaybtn").on('click', function(){
	$(this).parents(".modal").css('display', 'none');
});

//품절여부조정
$("#product_quatity").on('change',function(){
	let quatity = $('#product_quatity').val();
	
	if(quatity<=0) {
		$("#isvisible").val("품절");
	}else {
		$("#isvisible").val("판매중");
	}
	
});