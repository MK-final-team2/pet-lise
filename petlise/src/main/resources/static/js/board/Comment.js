$(document).ready(function(){
    if ("${searchdto.searchType2}" == "comment") {
        $('html').animate({scrollTop: $('#comment_statistic').offset().top}, 0);
    }

    // 숫자 페이징 버튼
    $(".pageNumber").on('click', function() {
        const page = $(this).text();
        const queryParams = {
            page: page,
            place_id: "${petplaceInfo.place_id}"
        };
        location.href = location.pathname + '?' + new URLSearchParams(queryParams).toString();
    });

    // 첫 페이지 버튼
    $(".pagefirst").on('click', function() {
        const queryParams = {
            page: 1,
            place_id: "${petplaceInfo.place_id}"
        };
        location.href = location.pathname + '?' + new URLSearchParams(queryParams).toString();
    });

    // 이전 페이지 버튼
    $(".prev").on('click', function() {
        const page = $(this).attr("id");
        const queryParams = {
            page: page,
            place_id: "${petplaceInfo.place_id}"
        };
        location.href = location.pathname + '?' + new URLSearchParams(queryParams).toString();
    });

    // 다음 페이지 버튼
    $(".next").on('click', function() {
        const page = $(this).attr("id");
        const queryParams = {
            page: page,
            place_id: "${petplaceInfo.place_id}"
        };
        location.href = location.pathname + '?' + new URLSearchParams(queryParams).toString();
    });

    // 마지막 페이지 버튼
    $(".pagelast").on('click', function() {
        const page = $(this).attr("id");
        const queryParams = {
            page: page,
            place_id: "${place.place_id}"
        };
        location.href = location.pathname + '?' + new URLSearchParams(queryParams).toString();
    });
});
