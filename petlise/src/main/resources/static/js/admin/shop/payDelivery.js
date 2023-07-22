//홈버튼
$("#listhome").on("click", function() {
	$("#page").val(1);
	$("#petType").val("");
	$("#productType").val("");
	$("#saleType").val("");
	$("#sortType").val("");
	$("#adminorderlist").submit();
});
//카테고리버튼
$("#ordertitle").on("click","button", function() {
	let searchtype1 = $(this).val()

	$("#page").val(1);
	$("#searchType1").val(searchtype1);
	$("#searchType2").val("");
	$("#keyword").val("");
	$("#adminorderlist").submit();
});


//검색창 엔터키 이벤트
$("#keyword").on("keyup", function(key) {
	if (key.keyCode == 13) {
		$("#searchbtn").click();
	}
});

//검색 버튼
$("#searchbtn").on('click', function() {
	$("#page").val(1);
	$("#adminorderlist").submit();
});

//검색조건 초기화
$("#searchreturn").on("click", function() {
	$("#page").val(1);
	$("#searchType2").val("");
	$("#keyword").val("");
	$("#adminorderlist").submit();
});

//테이블
$(".list_tr").on("click", function() {
	if($(this).next().is(':visible')){
		$(this).next().hide();
	}else{
		$(this).siblings(".orderinfo").hide();
		$(this).next().show();
	}
});

//숫자 페이징버튼
$(".pageNumber").on('click', function() {
	$("#page").val($(this).text());
	$("#adminorderlist").submit();
});

//첫페이지버튼 
$(".pagefirst").on('click', function() {
	$("#page").val(1);
	$("#adminorderlist").submit();
});

//이전페이지버튼
$(".prev").on('click', function() {
	$("#page").val($(this).attr("id"));
	$("#adminorderlist").submit();
});

//다음페이지버튼
$(".next").on('click', function() {
	$("#page").val($(this).attr("id"));
	$("#adminorderlist").submit();
});

//마지막페이지버튼
$(".pagelast").on('click', function() {
	$("#page").val($(this).attr("id"));
	$("#adminorderlist").submit();
});