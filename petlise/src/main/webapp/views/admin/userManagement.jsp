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
    <link rel="stylesheet" href="/css/admin/userManagement.css" />
    <title>Pet LiSe</title>
  </head>
  <body>
    <div class="container">
      <div id="asideMenu"></div>
      <main>
        <p>사용자 관리</p>
        <div>
          <table>
            <thead>
              <tr>
                <th>이름</th>
                <th>이메일</th>
                <th>주소</th>
                <th>포인트</th>
                <th>가입일</th>
                <th>탈퇴일</th>
              </tr>
            </thead>
            <tbody>
              <tr>
                <td>강낭콩</td>
                <td>kongkong0302@gmail.com</td>
                <td>
                  서울특별시 서초구 개포동 디에이치퍼스티어아이파크 6차 304동
                  908호
                </td>
                <td>P <span>1000</span></td>
                <td>2022.02.22</td>
                <td>2022.02.22</td>
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
