<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="icon" href="/images/favicon.ico" />
    <link rel="apple-touch-icon" href="/images/favicon.ico" />
    <link rel="stylesheet" href="/css/style.css" />
    <link rel="stylesheet" href="/css/admin/aside.css" />
    <link rel="stylesheet" href="/css/admin/pagination.css" />
    <link rel="stylesheet" href="/css/admin/tabMenu.css" />
    <link rel="stylesheet" href="/css/admin/shopManagement.css" />
    <title>Pet LiSe</title>
  </head>
  <body>
    <div class="container">
      <div id="asideMenu"></div>

      <main>
        <p>라이스샵 등록상품관리</p>

        <div class="tabMenu">
          <div class="tabWrap">
            <ul class="list">
            <c:if test="${petType eq 'all'}">
              <li class="isOn"><a href="/adminshoplist" class="btn">전체</a></li>            
              <li><a href="/adminshoplist?petType=dog" class="btn">강아지</a></li>
              <li><a href="/adminshoplist?petType=cat" class="btn">고양이</a></li>
            </c:if>
            <c:if test="${petType eq 'dog'}">
              <li><a href="/adminshoplist" class="btn">전체</a></li>            
              <li class="isOn"><a href="/adminshoplist?petType=dog" class="btn">강아지</a></li>
              <li><a href="/adminshoplist?petType=cat" class="btn">고양이</a></li>
            </c:if>
            <c:if test="${petType eq 'cat'}">
              <li><a href="/adminshoplist" class="btn">전체</a></li>            
              <li><a href="/adminshoplist?petType=dog" class="btn">강아지</a></li>
              <li class="isOn"><a href="/adminshoplist?petType=cat" class="btn">고양이</a></li>
            </c:if>
            </ul>
            <a href="/editproduct" class="editButton" style="width:150px">신규 상품 등록</a>
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
					<c:forEach var="product" items="${productlist}" >
					    <tr>
					      <td>${product.pet_type}</td>
					      <td>${product.category}</td>
					      <td>${product.product_id}</td>
					      <td>${product.product_name}</td>
					      <td><fmt:formatNumber value="${product.quatity}" pattern="#,###"/>개</td>
					      <td><fmt:formatNumber value="${product.price}" pattern="#,###"/>p</td>
					      <td>
					      	<fmt:parseDate value="${product.reg_date}" var="reg" pattern="yyyy-MM-dd HH:mm:ss" />
							<fmt:formatDate value="${reg}" pattern="yyyy-MM-dd" />
					      </td>
					      <td>수정</td>
					      <td>삭제</td>
					    </tr>					
					</c:forEach>
				</tbody>
            </table>
          </div>
          
          
          <div id="pagination"></div>
        </div>
      </main>
    </div>

    <script src="/js/admin/aside.js"></script>
    <script src="/js/admin/pagination.js"></script>
    <script src="/js/admin/shop/shopManagement.js"></script>
  </body>
</html>
