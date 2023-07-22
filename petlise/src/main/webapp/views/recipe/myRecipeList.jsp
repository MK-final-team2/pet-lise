<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="icon" href="/images/favicon.ico" />
<link rel="apple-touch-icon" href="/images/favicon.ico" />
<link rel="stylesheet" href="/css/recipe/recipeList.css" />
<link rel="stylesheet" href="/css/style.css" />
<link rel="stylesheet" href="css/shop/pagination_shop.css" />
<link rel="stylesheet" href="/css/nav/nav.css" />

<title>PetLiSe</title>
<script src="/js/jquery-3.6.4.min.js"></script>
<script>
	$(document).ready(function() {
	});
</script>

</head>
<body>
	<div class="wrap">
		<div id="nav"></div>
		<div id="board_title">
			<input type="hidden" id="searchType1" value="${param.searchType1}" />
			<input type="hidden" id="searchType2" value="${param.searchType2}" />
			<input type="hidden" id="searchType3" value="${param.searchType3}" />
			
			
			<div class="pet_icon">
				<c:if test="${param.searchType1 == '강아지'}">
					<div class="dog_icon">
						<img src="/images/recipe/dog_icon.svg">
					</div>
				</c:if>
				<c:if test="${param.searchType1 == '고양이'}">
					<div class="cat_icon">
			   			<img src="/images/recipe/cat_icon.svg" style="margin-left: 5px;">
			   		</div>
				</c:if>
			</div>

			<div class="title_recipe">
				<span>나만의 레시피</span>
			</div>
			<div class="subtitle_recipe">
				<span>${param.searchType2}</span>
			</div>
		</div>

		<div id="search_container">
			
			<div class="category">
				<c:if test="${param.searchType2 == '건강식'}">
					<a class="${param.searchType3 eq '전체' ? 'on' : ''}"
						href="recipelist?searchType1=${param.searchType1}&searchType2=${param.searchType2}&searchType3=전체">전체</a>
					<a class="${param.searchType3 eq '다이어트식' ? 'on' : ''}"
						href="recipelist?searchType1=${param.searchType1}&searchType2=${param.searchType2}&searchType3=다이어트식">다이어트식</a>
					<a class="${param.searchType3 eq '병원식' ? 'on' : ''}"
						href="recipelist?searchType1=${param.searchType1}&searchType2=${param.searchType2}&searchType3=병원식">병원식</a>
					<a	class="${param.searchType3 eq '영양식' ? 'on' : ''}"
						href="recipelist?searchType1=${param.searchType1}&searchType2=${param.searchType2}&searchType3=영양식">영양식</a>
				</c:if>
				<c:if test="${param.searchType2 == '일반식'}">
					<a class="${param.searchType3 eq '전체' ? 'on' : ''}"
						href="recipelist?searchType1=${param.searchType1}&searchType2=${param.searchType2}&searchType3=전체">전체</a>
					<a class="${param.searchType3 eq '습식' ? 'on' : ''}"
						href="recipelist?searchType1=${param.searchType1}&searchType2=${param.searchType2}&searchType3=습식">습식</a>
					<a class="${param.searchType3 eq '건식' ? 'on' : ''}"
						href="recipelist?searchType1=${param.searchType1}&searchType2=${param.searchType2}&searchType3=건식">건식</a>
				</c:if>
				<c:if test="${param.searchType2 == '간식'}">
					<a class="${param.searchType3 eq '전체' ? 'on' : ''}"
						href="recipelist?searchType1=${param.searchType1}&searchType2=${param.searchType2}&searchType3=전체">전체</a>
					<a class="${param.searchType3 eq '건조간식' ? 'on' : ''}"
						href="recipelist?searchType1=${param.searchType1}&searchType2=${param.searchType2}&searchType3=건조간식">건조간식</a>
					<a class="${param.searchType3 eq '화식간식' ? 'on' : ''}"
						href="recipelist?searchType1=${param.searchType1}&searchType2=${param.searchType2}&searchType3=화식간식">화식간식</a>
				</c:if>
				<c:if test="${param.searchType2 == '기타'}">					
				</c:if>
			</div>
			<div id="searchdiv">
				<c:choose>
					<c:when test="${param.keyword == '' || param.keyword eq null}">
						<input type="text" id="keyword" placeholder="'레시피제목' 검색" />
					</c:when>
					<c:otherwise>
						<input type="text" id="keyword" value="${param.keyword}" />
					</c:otherwise>
				</c:choose>
				<button id="searchbtn">
					<img src="/images/recipe/search.svg">
				</button>
			</div>
		</div>

		<div id="recipe_container">
			

			<div class="recipe-line">
			<c:if test="${fn:length(response.list) == 0}">
				<div id="noresult">
				해당하는 레시피가 없습니다.				
				</div>
			</c:if>
				<c:forEach var="recipe" items="${response.list}">
					<div class="recipe">
						<div class="recipe_img"
							style="background-image: url(${recipe.image});">
							<div class="recipe_cover">
								<button>
									<div class="love_this">0</div>
								</button>
							</div>
						</div>
						<a href="#">
							<div id="recipe_info">
								<div class="info_title">
									<span>${recipe.recipe_title}</span>
								</div>
								<div class="info_content">
									<span>${recipe.recipe_contents}</span>
								</div>
								<div id="info_bottom">
									<div class="info_writer">
										<span>${recipe.user.name}</span>
									</div>
									<div class="info_date">					
										<span><fmt:formatDate value="${recipe.recipe_created_at}" pattern="yyyy.MM.dd" /></span>
									</div>
								</div>
							</div>
						</a>
					</div>
				</c:forEach>
			</div>
		</div>

		<!-- 글쓰기 -->
		<div id="recipe_write">
			<a href="/recipecreate"><div class="write">
					<button>글쓰기</button>
				</div></a>
		</div>
		
		<div class="page">
			<div id="pagination">
				<c:if test="${fn:length(response.list) != 0}">
					<div class="pagefirst"
						<c:if test="${!response.pagination.existPrevPage}"> style="visibility: hidden;" </c:if>>
						<div class="prevArrow"></div>
						<div class="prevArrow" style="margin-left: -3px"></div>
					</div>
					<div class="prev" id="${response.pagination.startPage-1}"
						<c:if test="${!response.pagination.existPrevPage}"> style="visibility: hidden;" </c:if>>
						<div class="prevArrow"></div>
					</div>

					<c:choose>
						<c:when test="${param.page eq null}">
							<c:forEach begin="1" end="${response.pagination.endPage}"
								varStatus="vs">
								<c:if test="${vs.index == 1}">
									<div class="pageNumber active">${vs.index}</div>
								</c:if>
								<c:if test="${vs.index != 1}">
									<div class="pageNumber">${vs.index}</div>
								</c:if>
							</c:forEach>
						</c:when>
						<c:otherwise>
							<c:forEach begin="${response.pagination.startPage}"
								end="${response.pagination.endPage}" varStatus="vs">
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
						<c:if test="${!response.pagination.existNextPage}"> style="visibility: hidden;" </c:if>>
						<div class="nextArrow"></div>
					</div>
					<div class="pagelast" id="${response.pagination.totalPageCount}"
						<c:if test="${!response.pagination.existNextPage}"> style="visibility: hidden;" </c:if>>
						<div class="nextArrow"></div>
						<div class="nextArrow" style="margin-left: -6px"></div>
					</div>
				</c:if>
			</div>
			<!-- pagination -->
		</div>
		
	</div>
</body>

<script>
<!--버튼 script-->
	const buttons = document.querySelectorAll('.recipe_cover > button');

	buttons.forEach(function(button) {
		button.addEventListener('click', function() {
			button.classList.toggle('active');
		});
	});
</script>
<script src="/js/recipe/nav.js"></script>
<script src="/js/recipe/recipeList.js"></script>

</html>