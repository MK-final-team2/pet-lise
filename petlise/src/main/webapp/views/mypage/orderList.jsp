<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>주문목록</title>
    <link rel="stylesheet" href="/css/mypage/orderList.css" />
    <link rel="stylesheet" href="/css/mypage/myPageForm.css" />
    <link rel="stylesheet" href="/css/style.css" />
  </head>
  <body>
    <p class="title">마이페이지</p>

    <div class="container">
      <div id="mypageMenu" class="menu"></div> 

      <div class="contents">
        <div class="contents_Title">주문목록</div>
        <div class="contents_Table">
          <div class="table">
            <div class="table_Header">
              <p id="table_Header_Date">주문날짜/주문번호</p>
              <p id="table_Header_Product">주문상품</p>
              <p id="table_Header_Price">총포인트</p>
              <p id="table_Header_Status">주문현황</p>
              <p id="table_Header_Review">리뷰작성</p>
            </div>
            <!--				<c:forEach class="table_Column"> -->
            <div class="table_Column">
              <div id="table_Date">
                <p>2023-06-28</p>
                <p>dOG20230626A001</p>
                <input type="button" id="cancel_Btn" value="주문취소" />
              </div>
              <div id="table_Product">
                <a href="#">
                  <span>상품 A</span>
                </a>
              </div>
              <div id="table_Price">1000</div>
              <div id="table_Status">배송중</div>
              <div id="table_Review">
                <span>작성하기</span>
                <a href="#">
                  <span class="material-symbols-outlined" id="review_Img">
                    rate_review
                  </span>
                </a>
              </div>
            </div>
            <!-- 				</c:forEach> -->
          </div>
        </div>
      </div>
    </div>

    <script src="/js/mypageMenu.js"></script>
  </body>
</html>
