$(document).ready(function() {
	$(".pageNumber").on('click', function() {
		const queryparamsPage = {
			page: $(this).text(),
			/*searchType: $("#searchType").val(),
			keyword: $("#keyword").val()*/
		}
		location.href = location.pathname + '?' + new URLSearchParams(queryparamsPage).toString();
	});

	$(".pagefirst").on('click', function() {
		const queryparamsPage = {
			page: 1,
			/*searchType: $("#searchType").val(),
			keyword: $("#keyword").val()*/
		}
		location.href = location.pathname + '?' + new URLSearchParams(queryparamsPage).toString();
	});

	$(".prev").on('click', function() {
		const queryparamsPage = {
			page: $(this).attr("id"),
			/*            searchType: $("#searchType").val(),
						keyword: $("#keyword").val()*/
		}
		location.href = location.pathname + '?' + new URLSearchParams(queryparamsPage).toString();
	});

	$(".next").on('click', function() {
		const queryparamsPage = {
			page: $(this).attr("id"),
			/*searchType: $("#searchType").val(),
			keyword: $("#keyword").val()*/
		}
		location.href = location.pathname + '?' + new URLSearchParams(queryparamsPage).toString();
	});

	$(".pagelast").on('click', function() {
		const queryparamsPage = {
			page: $(this).attr("id"),
			/*searchType: $("#searchType").val(),
			keyword: $("#keyword").val()*/
		}
		location.href = location.pathname + '?' + new URLSearchParams(queryparamsPage).toString();
	});
});