<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" href="/images/favicon.ico" />
<link rel="apple-touch-icon" href="/images/favicon.ico" />
<link rel="stylesheet" href="/css/board/boardMain.css">
<link rel="stylesheet" href="/css/style.css" />
	<link rel="stylesheet" href="/css/nav/nav.css" />
<title>자유게시판메인</title>
<script src="/js/jquery-3.6.4.min.js"></script>
</head>
<header>
 <div id="nav">
<script src="/js/recipe/nav.js"></script>
</div>
</header>
<body>
<div class="container">
	<!-- 본문 -->
	<div class="board_wrap">
		<div class="board_title">
			<a href="boardMain">자유게시판</a> 
		</div>
		
		<div class="search-container">
			<div class="searchbox">
				<button id="searchbtn">
					<img src="/images/board/Vector.png" alt="검색">
				</button>
				<c:choose>
					<c:when test="${param.keyword == '' || param.keyword eq null}">
						<input type="text" id="keyword" placeholder="검색">
					</c:when>
					<c:otherwise>
						<input type="text" id="keyword" value="${param.keyword}" />
					</c:otherwise>
				</c:choose>
			</div>
		</div>
		<!-- searchdiv -->
<div class="btnline">
		<div class="board_main_category_btn1" >
			<button>
				<a href="boardMain">자유게시판</a>
			</button>
		</div>
		<div class="board_main_category_btn2">
			<button>
				<a href="petplaceMain">펫플레이스</a>
			</button>
		</div>
</div>


		<div class="bt_wrap">
			<a href="boardWrite" class="on">글쓰기</a>
		</div>

		<div class="board_list">
			<div class="top">
				<div class="title">제목</div>
				<div class="writer">작성자</div>
				<div class="date" style="padding-left: 45px">날짜</div>
				<div class="view" style="padding-left: 53px">조회</div>
				<div class="like" style="padding-left: 70px">추천</div>
			</div>

			<table style="width: 1240px; margin-top: -14px;" >
				<c:if test="${empty response.list}">
					<tr>
						<td colspan="9" class="no_data_msg">
							<div>
								검색된 결과가 없습니다.<br> 검색어를 다시 입력해 주세요.
							</div>
						</td>
					</tr>
				</c:if>

				<c:forEach var="boards" items="${response.list}">
					<tr>
						<td class="title">
							<a href="boardDetail.jsp?title=${boards.board_title}">
								${boards.board_title}
							</a>
						</td>
						<td class="writer">${boards.user_id}</td>
						<td class="date">
							<fmt:formatDate value="${boards.board_created}" pattern="yyyy-MM-dd :mm" />
						</td>
						<td class="view">${boards.board_view}</td>
						<td class="like">${boards.like}</td>
					</tr>
				</c:forEach>
			</table>

			<div id="pagination" style="visibility: visible;">
				<c:if test="${not empty response.list}">
					<div class="pagefirst"
						<c:if test="${not response.pagination.existPrevPage}">style="visibility: hidden;"</c:if>>
						<div class="prevArrow"></div>
						<div class="prevArrow" style="margin-left: -3px"></div>
					</div>
					<div class="prev" id="${response.pagination.startPage-1}"
						<c:if test="${not response.pagination.existPrevPage}">style="visibility: hidden;"</c:if>>
						<div class="prevArrow"></div>
					</div>

					<c:choose>
						<c:when test="${empty param.page}">
							<c:forEach begin="1" end="${response.pagination.endPage}" varStatus="vs">
								<c:if test="${vs.index == 1}">
									<div class="pageNumber active">${vs.index}</div>
								</c:if>
								<c:if test="${vs.index != 1}">
									<div class="pageNumber">${vs.index}</div>
								</c:if>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<c:forEach begin="${response.pagination.startPage}" end="${response.pagination.endPage}" varStatus="vs">
								<c:if test="${vs.index == param.page}">
									<div class="pageNumber active">${vs.index}</div>
								</c:if>
								<c:if test="${vs.index != param.page}">
									<div class="pageNumber">${vs.index}</div>
								</c:if>
							</c:forEach>
						</c:otherwise>
					</c:choose>

					<div class="next" id="${response.pagination.startPage+10}"
						<c:if test="${not response.pagination.existNextPage}">style="visibility: hidden;"</c:if>>
						<div class="nextArrow"></div>
					</div>
					<div class="pagelast" id="${response.pagination.totalPageCount}"
						<c:if test="${not response.pagination.existNextPage}">style="visibility: hidden;"</c:if>>
						<div class="nextArrow"></div>
						<div class="nextArrow" style="margin-left: -6px"></div>
					</div>
				</c:if>
			</div>
		</div>

	</div>
<!-- 강아지 이미지 부분-->
        <div class="dogImg_F">
            <img src="/images/board/dogfirst.png" alt="dogImg_F">
        </div>
        <div class="dogImg_S">
            <img src="/images/board/dogsecond.png" alt="dogImg_S">
        </div>
        <div class="dogImg_Up">
            <img src="/images/board/searchdog.png" alt="dogImg_up">
        </div>
        

</div>
	<!-- pagination -->
	<script src="/js/board/Board.js"></script>
</body>
</html>
