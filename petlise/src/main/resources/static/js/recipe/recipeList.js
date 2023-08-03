//로드 후 자동 css 실행 영역
const recipeType = $('#recipeType').val();
const SearchType1 = $('#searchType1').val();
const SearchType2 = $('#searchType2').val();
const SearchType3 = $('#searchType3').val();


//결과 없을때 홈가기 버튼
$("#noresult>button").on('click', function() {
	location.href = location.pathname;
});


//검색창 엔터키 이벤트
$("#keyword").on("keyup", function(key) {
	if (key.keyCode == 13) {
		$("#searchbtn").click();
	}
});

//검색 버튼
$("#searchbtn").on('click', function() {
	const queryparamsPage = {
		page: 1,
		recipeType: recipeType,
		searchType1: SearchType1,
		searchType2: SearchType2,
		searchType3: SearchType3,
		keyword: $("#keyword").val()
	}
	location.href = location.pathname + '?' + new URLSearchParams(queryparamsPage).toString();
});


// ----- 페이징버튼 ----- (모든조건유지)
//숫자 페이징버튼 
$(".pageNumber").on('click', function() {
	const queryparamsPage = {
		page: $(this).text(),
		recipeType: recipeType,
		searchType1: SearchType1,
		searchType2: SearchType2,
		searchType3: SearchType3,		
		keyword: $("#keyword").val()
	}
	location.href = location.pathname + '?' + new URLSearchParams(queryparamsPage).toString();
});

//첫페이지버튼 
$(".pagefirst").on('click', function() {
	const queryparamsPage = {
		page: 1,
		recipeType: recipeType,
		searchType1: SearchType1,
		searchType2: SearchType2,
		searchType3: SearchType3,		
		keyword: $("#keyword").val()
	}
	location.href = location.pathname + '?' + new URLSearchParams(queryparamsPage).toString();
});

//이전페이지버튼
$(".prev").on('click', function() {
	const queryparamsPage = {
		page: $(this).attr("id"),
		recipeType: recipeType,
		searchType1: SearchType1,
		searchType2: SearchType2,
		searchType3: SearchType3,
		keyword: $("#keyword").val()
	}
	location.href = location.pathname + '?' + new URLSearchParams(queryparamsPage).toString();
});

//다음페이지버튼
$(".next").on('click', function() {
	const queryparamsPage = {
		page: $(this).attr("id"),
		recipeType: recipeType,
		searchType1: SearchType1,
		searchType2: SearchType2,
		searchType3: SearchType3,
		keyword: $("#keyword").val()
	}
	location.href = location.pathname + '?' + new URLSearchParams(queryparamsPage).toString();
});

//마지막페이지버튼
$(".pagelast").on('click', function() {
	const queryparamsPage = {
		page: $(this).attr("id"),
		recipeType: recipeType,
		searchType1: SearchType1,
		searchType2: SearchType2,
		searchType3: SearchType3,
		keyword: $("#keyword").val()
	}
	location.href = location.pathname + '?' + new URLSearchParams(queryparamsPage).toString();
});



//컨텐츠 내용 길이 조절
document.addEventListener("DOMContentLoaded", function() {
  var recipeContentsElements = document.querySelectorAll(".recipe_content");

  recipeContentsElements.forEach(function(element) {
    var content = element.innerHTML;

    // 정규식으로 <p> 태그와 </p> 태그 제거
    var strippedContent = content.replace(/<\/?p[^>]*>/g, '');

    // 정규식으로 <br> 태그 제거
    strippedContent = strippedContent.replace(/<br\s*\/?>/gi, '');

    var maxLength = 60;
    if (strippedContent.length > maxLength) {
      element.innerHTML = strippedContent.substring(0, maxLength) + "...";
    } else {
      element.innerHTML = strippedContent;
    }
  });
});

// ----- 상세페이지 클릭-----

$(".recipe").on('click',function(){
	location.href = '/recipedetail?recipe_id='+$(this).attr('id') ;
});





