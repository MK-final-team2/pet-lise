<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" href="/images/favicon.ico" />
    <link rel="apple-touch-icon" href="/images/favicon.ico" />
    <link rel="stylesheet" href="/css/style.css" />
    <link rel="stylesheet" href="/css/admin/aside.css" />
    <link rel="stylesheet" href="/css/admin/pagination_new.css" />
    <link rel="stylesheet" href="/css/admin/shopManagement.css" />
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <title>Pet LiSe</title>
  </head>
  <body>
    <div class="container">
      <div id="asideMenu"></div>

      <main>
        <p>라이스샵 등록상품관리</p>

			<div class="tabMenu">
				<div class="tabWrap">
					<div class="categoryWrap">
						<div class="category">
							<div id="dropdown" class="dropdown">
								<div class="select">
									<span>전체</span>
								</div>
								<input type="hidden" id="pet_type" />
								<ul class="dropdown-menu">
									<li>전체</li>
									<li>강아지</li>
									<li>고양이</li>
								</ul>
							</div>
						</div>

						<div class="category" id="smallCategory">
							<div id="dropdown2" class="dropdown">
								<div class="select">
									<span>전체</span>
								</div>
								<input type="hidden" />
								<ul id="dropdown-menu" class="dropdown-menu">
									<li>전체</li>
									<li>사료</li>
									<li>간식</li>
									<li>영양제</li>
									<li>장난감</li>
								</ul>
							</div>
						</div>

						<div id="searchdiv">
							<input type="text" id="keyword" placeholder="상품명 검색" />
							<button id="searchbtn">
								<img src="/images/admin/search.svg">
							</button>
						</div>
						<!-- searchdiv -->

					</div>
					<!-- categoryWrap -->


					<a href="/editproduct" class="editButton">신규 상품 등록</a>
				</div>

				<div class="tableWrap">
					<table class="table" style="display: block">
						<thead>
							<tr>
								<th>동물카테고리</th>
								<th>상품카테고리</th>
								<th>상품코드</th>
								<th>상품명</th>
								<th>상품재고</th>
								<th>금액</th>
								<th>등록일</th>
								<th>정보수정</th>
								<th>상품삭제</th>
							</tr>
						</thead>

						<tbody>
							<c:forEach var="product" items="${response.list}">
								<tr>
									<td>${product.pet_type}</td>
									<td>${product.category}</td>
									<td>${product.product_id}</td>
									<td>${product.product_name}</td>
									<td><fmt:formatNumber value="${product.quatity}"
											pattern="#,###" />개</td>
									<td><fmt:formatNumber value="${product.price}"
											pattern="#,###" />p</td>
									<td><fmt:parseDate value="${product.reg_date}" var="reg"
											pattern="yyyy-MM-dd HH:mm:ss" /> <fmt:formatDate
											value="${reg}" pattern="yyyy-MM-dd" /></td>
									<td>수정</td>
									<td>삭제</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>


				<div id="pagination">
					<c:if test="${response.pagination.existPrevPage}">
					<div class="pagefirst">
						<div class="prevArrow"></div>
						<div class="prevArrow" style="margin-left:-3px"></div>
					</div>
					<div class="prev" id="${response.pagination.endPage-10}">
						<div class="prevArrow"></div>
					</div>
					 </c:if>
					 
					 <c:forEach begin="${response.pagination.startPage}" end="${response.pagination.endPage}" varStatus="vs">
        				<c:if test="${vs.index == param.page}">
							<div class="pageNumber active">${vs.index}</div>
        				</c:if>
        				<c:if test="${vs.index != param.page}">
        					<div class="pageNumber">${vs.index}</div>
        				</c:if>
	                </c:forEach>
					
					<c:if test="${response.pagination.existNextPage}">
					<div class="next" id="${response.pagination.startPage+10}">
						<div class="nextArrow"></div>
					</div>
					<div class="pagelast" id="${response.pagination.totalPageCount}">
						<div class="nextArrow"></div>
						<div class="nextArrow" style="margin-left:-6px"></div>
					</div>
					</c:if>
				</div>
			</div>
		</main>
    </div>

    <script src="/js/admin/aside.js"></script>
    <script src="/js/admin/shop/shopManagement.js"></script>
    <script src="/js/admin/shop/shopCategory_list.js"></script>
  </body>
</html>
