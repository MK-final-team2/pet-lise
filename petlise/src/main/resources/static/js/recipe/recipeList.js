
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


// -----레시피 리스트 info 본문 노출 60자 제한, 태그제외, 제한함수에서 태그 길이 제외-----
//document.addEventListener("DOMContentLoaded", function() {
//  var recipeContentsElements = document.querySelectorAll(".recipe_content");
//
//  recipeContentsElements.forEach(function(element) {
//    // 정규식으로 태그를 제거
//    var strippedContent = element.textContent;
//
//    var maxLength = 60;
//    if (strippedContent.length > maxLength) {
//      element.textContent = strippedContent.substring(0, maxLength) + "...";
//    } else {
//      element.textContent = strippedContent;
//    }
//  });
//});



//----공백포함 제목 길이제한----
document.addEventListener("DOMContentLoaded", function() {
  var recipeTitleElement = document.querySelector(".info_title > span");

  var content = recipeTitleElement.textContent;
  var maxLength = 18;
  if (content.length > maxLength) {
    recipeTitleElement.textContent = content.substring(0, maxLength) + "...";
  }
});


// ----- 상세페이지 클릭-----
$(".recipe").on('click', function(event) {
    // 이벤트를 버블링하는 것을 방지하기 위해 클릭된 요소가 버튼인지 확인
    if (!$(event.target).is("button")) {
        // 클릭한 요소가 버튼이 아니라면 상세페이지로 이동
        location.href = '/recipedetail?recipe_id=' + $(this).attr('id');
    }
});





