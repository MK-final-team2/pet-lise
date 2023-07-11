//라이스샵 홈버튼
$("#shopTitle").on('click', function() {
	location.href = location.pathname;
});

//카테고리 클릭버튼
$(".product").on('click', function() {
	let type1 = $(this).attr("id").substring(0,1);	
	let type2 = $(this).attr("id").substring(1);	
	
	if(type1 == "D"){
		type1 = "강아지";	
	}else if(type1 == "C"){
		type1 = "고양이";
	}
	
	if(type2 == "01"){
		type2 = "사료";	
	}else if(type2 == "02"){
		type2 = "간식";
	}else if(type2 == "03"){
		type2 = "영양제";
	}else if(type2 == "04"){
		type2 = "장난감";
	}
	
	const queryparamsPage = {
		page: 1,
		searchType1: type1, //동물카테고리
		searchType2: type2,  //상품카테고리
		searchType3: $('#issoldout').is(':checked')?'판매중':'전체'  //품절여부
	}
	
	location.href = location.pathname + '?' + new URLSearchParams(queryparamsPage).toString();
});

//숫자 페이징버튼
$(".pageNumber").on('click', function() {
	const queryparamsPage = {
		page: $(this).text(),
		/*searchType1: $("#petType").val(),
		searchType2: $("#productType").val(),
		searchType3: $("#saleType").val(),
		keyword: $("#keyword").val()*/
	}
	location.href = location.pathname + '?' + new URLSearchParams(queryparamsPage).toString();
});

//첫페이지버튼 
$(".pagefirst").on('click', function() {
	const queryparamsPage = {
		page: 1,
		/*searchType1: $("#petType").val(),
		searchType2: $("#productType").val(),
		searchType3: $("#saleType").val(),
		keyword: $("#keyword").val()*/
	}
	location.href = location.pathname + '?' + new URLSearchParams(queryparamsPage).toString();
});

//이전페이지버튼
$(".prev").on('click', function() {
	const queryparamsPage = {
		page: $(this).attr("id"),
		/*searchType1: $("#petType").val(),
		searchType2: $("#productType").val(),
		searchType3: $("#saleType").val(),
		keyword: $("#keyword").val()*/
	}
	location.href = location.pathname + '?' + new URLSearchParams(queryparamsPage).toString();
});

//다음페이지버튼
$(".next").on('click', function() {
	const queryparamsPage = {
		page: $(this).attr("id"),
		/*searchType1: $("#petType").val(),
		searchType2: $("#productType").val(),
		searchType3: $("#saleType").val(),
		keyword: $("#keyword").val()*/
	}
	location.href = location.pathname + '?' + new URLSearchParams(queryparamsPage).toString();
});

//마지막페이지버튼
$(".pagelast").on('click', function() {
	const queryparamsPage = {
		page: $(this).attr("id"),
		/*searchType1: $("#petType").val(),
		searchType2: $("#productType").val(),
		searchType3: $("#saleType").val(),
		keyword: $("#keyword").val()*/
	}
	location.href = location.pathname + '?' + new URLSearchParams(queryparamsPage).toString();
});