// ----- 페이지 영역별 스크롤 ------
$('#tab1_2').on('click',function(){
	var offset = $('#tab2_2').offset();
	$('html').animate({scrollTop : offset.top}, 400);
});

$('#tab1_3').on('click',function(){
	var offset = $('#tab3_3').offset();
	$('html').animate({scrollTop : offset.top}, 400);
});

$('#tab2_1').on('click',function(){
	var offset = $('#tab1_1').offset();
	$('html').animate({scrollTop : offset.top}, 400);
});

$('#tab2_3').on('click',function(){
	var offset = $('#tab3_3').offset();
	$('html').animate({scrollTop : offset.top}, 400);
});

$('#tab3_1').on('click',function(){
	var offset = $('#tab1_1').offset();
	$('html').animate({scrollTop : offset.top}, 400);
});

$('#tab3_2').on('click',function(){
	var offset = $('#tab2_2').offset();
	$('html').animate({scrollTop : offset.top}, 400);
});

// ----- 수량선택 -----
$("#num_minus").on('click',function(){
	let number = $("#number").text();
	
	if(number>1){
		$("#number").text(number-1);
		$("#num_plus").next().text("");
	}
});

$("#num_plus").on('click',function(){
	let number = $("#number").text();
	
	if(number<5){
		$("#number").text(Number(number)+1);
	}else if(number==5){
		$(this).next().text("1회 최대 주문 수량은 5개입니다.")
	}
});

// ----- 장바구니버튼 -----
$(".cartbtn").on('click',function(e){
	e.stopPropagation();
	let productID = $(this).parents(".products").attr('id');

	$.ajax({
		type : 'post',
		url : '/isincart',
		dataType : 'json',
		data : {
			user_id : "userid1",
			product_id : $(this).parents(".products").attr('id')
		},
		success : function(result) { // 결과 성공 콜백함수
			//장바구니 신규등록
			if(result.result == 'no'){
				$.ajax({
					type : 'post',
					url : '/insertcart',
					dataType : 'json',
					data : {
						user_id : "userid1",
						product_id : productID,
						quantity : 1
					},
					success : function(result) { // 결과 성공 콜백함수
						$("#okay_modal .modal_text>div").html("상품이 장바구니에 등록되었습니다.<br>장바구니로 이동하시겠습니까?");
						$("#okay_modal").css('display', 'block');
			    	},
				    error : function(request, status, error) { // 결과 에러 콜백함수
				        console.log(error)
				    }
				});//ajax end
			}
			//장바구니 기존 존재
			else {
				$("#okay_modal .modal_text>div").html("장바구니에 이미 등록된 상품입니다.<br>장바구니로 이동하시겠습니까?");
				$("#okay_modal").css('display', 'block');
			}
			
    	},
	    error : function(request, status, error) { // 결과 에러 콜백함수
	        console.log(error)
	    }
	});//ajax end
});

// ----- 모달이벤트 -----
$(".modal_cancelbtn").on('click',function(){
	$(this).parents(".modal").css('display', 'none');
});

// ----- 페이징버튼 ----- (모든조건유지)
//숫자 페이징버튼 
$(".pageNumber").on('click', function() {
	const queryparamsPage = {
		page: $(this).text(),
		searchType1: SearchType1,
		searchType2: SearchType2,
		searchType3: $('#issoldout').is(':checked')?'판매중':'전체',
		sortType:$("#sortType").val(),
		keyword: $("#keyword").val()
	}
	location.href = location.pathname + '?' + new URLSearchParams(queryparamsPage).toString();
});

//첫페이지버튼 
$(".pagefirst").on('click', function() {
	const queryparamsPage = {
		page: 1,
		searchType1: SearchType1,
		searchType2: SearchType2,
		searchType3: $('#issoldout').is(':checked')?'판매중':'전체',
		sortType:$("#sortType").val(),
		keyword: $("#keyword").val()
	}
	location.href = location.pathname + '?' + new URLSearchParams(queryparamsPage).toString();
});

//이전페이지버튼
$(".prev").on('click', function() {
	const queryparamsPage = {
		page: $(this).attr("id"),
		searchType1: SearchType1,
		searchType2: SearchType2,
		searchType3: $('#issoldout').is(':checked')?'판매중':'전체',
		sortType:$("#sortType").val(),
		keyword: $("#keyword").val()
	}
	location.href = location.pathname + '?' + new URLSearchParams(queryparamsPage).toString();
});

//다음페이지버튼
$(".next").on('click', function() {
	const queryparamsPage = {
		page: $(this).attr("id"),
		searchType1: SearchType1,
		searchType2: SearchType2,
		searchType3: $('#issoldout').is(':checked')?'판매중':'전체',
		sortType:$("#sortType").val(),
		keyword: $("#keyword").val()
	}
	location.href = location.pathname + '?' + new URLSearchParams(queryparamsPage).toString();
});

//마지막페이지버튼
$(".pagelast").on('click', function() {
	const queryparamsPage = {
		page: $(this).attr("id"),
		searchType1: SearchType1,
		searchType2: SearchType2,
		searchType3: $('#issoldout').is(':checked')?'판매중':'전체',
		sortType:$("#sortType").val(),
		keyword: $("#keyword").val()
	}
	location.href = location.pathname + '?' + new URLSearchParams(queryparamsPage).toString();
});