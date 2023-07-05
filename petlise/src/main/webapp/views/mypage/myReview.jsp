<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>내가 쓴 후기</title>
    <link rel="stylesheet" href="/css/mypage/myReview.css" />
    <link rel="stylesheet" href="/css/mypage/myPageForm.css" />
    <link rel="stylesheet" href="/css/style.css" />
  </head>
  <body>
    <p class="title">마이페이지</p>

    <div class="container">
      <div id="mypageMenu" class="menu"></div>

      <div class="contents">
        <div class="contents_Title">내가 쓴 후기</div>
        <div class="contents_Table">
          <div class="table">
            <div class="table_Header">
              <p id="table_Header_Date">주문날짜/주문번호</p>
              <p id="table_Header_Product">주문상품</p>
              <p id="table_Header_Star">별점</p>
              <p id="table_Header_Comment">주문현황</p>
              <p id="table_Header_Edit">수정·삭제</p>
            </div>
          </div>
        </div>
        <!--			<c:forEach class="table_Column"> -->
        <div class="table_Column">
          <div id="table_Date">
            <p>2023-06-28</p>
            <p>dOG20230626A001</p>
          </div>
          <div id="table_Product">
            <a href="#">
              <span>상품 A</span>
            </a>
          </div>
          <div id="table_Star">
            <p>
              <span class="material-symbols-outlined">star</span>
              <span class="material-symbols-outlined">star</span>
              <span class="material-symbols-outlined">star</span>
              <span class="material-symbols-outlined">star</span>
              <span class="material-symbols-outlined">star</span>
            </p>
          </div>
          <div id="table_Comment">후기후기후기후기후기</div>
          <div id="table_Edit">
            <p>
              <a href="#">
                <span class="material-symbols-outlined"> edit_square </span>
              </a>
              <span>수정하기</span>
            </p>
            <p>
              <a href="#">
                <span class="material-symbols-outlined"> delete </span>
              </a>
              <span>삭제하기</span>
            </p>
          </div>
        </div>
        <!-- 		</c:forEach> -->
      </div>
    </div>

    <script src="/js/mypageMenu.js"></script>
  </body>
</html>
