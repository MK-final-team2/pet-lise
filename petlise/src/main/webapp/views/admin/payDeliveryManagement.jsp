<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
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
    <link rel="stylesheet" href="/css/admin/payDelivery.css" />
    <title>Pet LiSe</title>
  </head>
  <body>
    <div class="container">
      <div id="asideMenu"></div>
      <main>
        <p>결제/배송 관리</p>
        <div>
          <table>
            <thead>
              <tr>
                <th>상품명</th>
                <th>구매자</th>
                <th>결제금액</th>
                <th>구매일</th>
                <th>배송지</th>
                <th>운송장번호</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>
                  레시피 제목인듯 아닌듯 맞는듯 함 레시피 제목인듯 아닌듯 맞는듯
                  함
                </td>
                <td>강낭콩</td>
                <td>55,000원</td>
                <td>2022.02.22</td>
                <td>
                  서울특별시 서초구 개포동 디에이치퍼스티어아이파크 6차 304동
                  908호
                </td>
                <td>123412341234</td>
              </tr>
            </tbody>
          </table>

          <div id="pagination"></div>
        </div>
      </main>
    </div>

    <script src="/js/admin/aside.js"></script>
    <script src="/js/admin/pagination.js"></script>
  </body>
</html>
