<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="icon" href="/images/favicon.ico" />
<link rel="apple-touch-icon" href="/images/favicon.ico" />
<link rel="stylesheet" href="/css/recipe/recipeList.css" />
<link rel="stylesheet" href="/css/style.css" />
<link rel="stylesheet" href="/css/recipe/recipePage.css" />
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
		
		<input type="hidden" id="recipeType" value="${param.recipeType}" />
			<input type="hidden" id="searchType1" value="${param.searchType1}" />
			<input type="hidden" id="searchType2" value="${param.searchType2}" />
			<input type="hidden" id="searchType3" value="${param.searchType3}" />
			
			
			
		<div class="title_recipe" style="margin-top:80px;">
        	<span>전문가 레시피</span></div>
			<div class="subtitle_recipe">
			<span>이달의 레시피</span></div>
		</div>
        
        <div id="search_container">
			
			<div class="category">
				<c:if test="${param.searchType2 == '건강식'}">
					<a class="${param.searchType3 eq '전체' ? 'on' : ''}"
						href="recipelist?recipeType=${param.recipeType}&searchType1=${param.searchType1}&searchType2=${param.searchType2}&searchType3=전체">전체</a>
					<a class="${param.searchType3 eq '다이어트식' ? 'on' : ''}"
						href="recipelist?recipeType=${param.recipeType}&searchType1=${param.searchType1}&searchType2=${param.searchType2}&searchType3=다이어트식">다이어트식</a>
					<a class="${param.searchType3 eq '병원식' ? 'on' : ''}"
						href="recipelist?recipeType=${param.recipeType}&searchType1=${param.searchType1}&searchType2=${param.searchType2}&searchType3=병원식">병원식</a>
					<a	class="${param.searchType3 eq '영양식' ? 'on' : ''}"
						href="recipelist?recipeType=${param.recipeType}&searchType1=${param.searchType1}&searchType2=${param.searchType2}&searchType3=영양식">영양식</a>
				</c:if>
				<c:if test="${param.searchType2 == '일반식'}">
					<a class="${param.searchType3 eq '전체' ? 'on' : ''}"
						href="recipelist?recipeType=${param.recipeType}&searchType1=${param.searchType1}&searchType2=${param.searchType2}&searchType3=전체">전체</a>
					<a class="${param.searchType3 eq '습식' ? 'on' : ''}"
						href="recipelist?recipeType=${param.recipeType}&searchType1=${param.searchType1}&searchType2=${param.searchType2}&searchType3=습식">습식</a>
					<a class="${param.searchType3 eq '건식' ? 'on' : ''}"
						href="recipelist?recipeType=${param.recipeType}&searchType1=${param.searchType1}&searchType2=${param.searchType2}&searchType3=건식">건식</a>
				</c:if>
				<c:if test="${param.searchType2 == '간식'}">
					<a class="${param.searchType3 eq '전체' ? 'on' : ''}"
						href="recipelist?recipeType=${param.recipeType}&searchType1=${param.searchType1}&searchType2=${param.searchType2}&searchType3=전체">전체</a>
					<a class="${param.searchType3 eq '건조간식' ? 'on' : ''}"
						href="recipelist?recipeType=${param.recipeType}&searchType1=${param.searchType1}&searchType2=${param.searchType2}&searchType3=건조간식">건조간식</a>
					<a class="${param.searchType3 eq '화식간식' ? 'on' : ''}"
						href="recipelist?recipeType=${param.recipeType}&searchType1=${param.searchType1}&searchType2=${param.searchType2}&searchType3=화식간식">화식간식</a>
				</c:if>
				<c:if test="recipeType=${param.recipeType}&searchType1=${param.searchType1}&${param.searchType2 == '기타'}">					
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
	            <div class="recipe">
	                <div class="recipe_img">
	                    <div class="recipe_cover"> 
	                        <button>
                                <div class="love_this">50</div>
                            </button>
	                    </div>
	                </div>
					<a href="#">
	                <div id="recipe_info">
	                    <div class="info_title"><span>강아지화식 수제사료</span></div>
	                    <div class="info_content"><span>오리고기를 메인으로한 어쩌구</span></div>
                        <div class="info_date"><span>2023-07-01</span></div>
	                </div>
					</a>
	            </div>
                <div class="recipe">
	                <div class="recipe_img">
	                    <div class="recipe_cover"> 
	                        <button>
                                <div class="love_this">50</div>
                            </button>
	                    </div>
	                </div>
					<a href="#">
	                <div id="recipe_info">
	                    <div class="info_title"><span>강아지화식 수제사료</span></div>
	                    <div class="info_content"><span>닭고기를 메인으로한 어쩌구</span></div>
                        <div class="info_date"><span>2023-07-01</span></div>
	                </div>
					</a>
	            </div>
                <div class="recipe">
	                <div class="recipe_img">
	                    <div class="recipe_cover"> 
	                        <button>
                                <div class="love_this">50</div>
                            </button>
	                    </div>
	                </div>
					<a href="#">
	                <div id="recipe_info">
                        <div class="info_title"><span>강아지화식 수제사료</span></div>
	                    <div class="info_content"><span>신장수치 조절을 위한 어쩌구</span></div>
                        <div class="info_date"><span>2023-07-01</span></div>
	                </div>
					</a>
	            </div>
                <div class="recipe">
	                <div class="recipe_img">
	                    <div class="recipe_cover"> 
	                        <button>
                                <div class="love_this">50</div>
                            </button>
	                    </div>
	                </div>
					<a href="#">
	                <div id="recipe_info">
                        <div class="info_title"><span>강아지화식 수제사료</span></div>
	                    <div class="info_content"><span>양고기를 메인으로한 화식이 어쩌구</span></div>
                        <div class="info_date"><span>2023-07-01</span></div>                       
	                </div>
					</a>
	            </div>
            </div>
			
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
