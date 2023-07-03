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
    <link rel="stylesheet" href="/css/admin/editAnnouncement.css" />
    <link
      href="https://cdn.quilljs.com/1.3.6/quill.snow.css"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="/css/editor.css" />
    <script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>
    <title>Pet LiSe</title>
  </head>
  <body>
    <div class="container">
      <div id="asideMenu"></div>

      <main>
        <p>공지사항 등록</p>

        <div class="contents">
          <input type="text" placeholder="제목" />
          <div id="editor">
            <p>내용을 입력해주세요</p>
            <br />
            <p>
              * 저작권 침해, 음란, 청소년 유해물, 기타 위법자료 등을 게시할 경우
              게시물은 경고 없이 삭제됩니다.
            </p>
            <p><br /></p>
          </div>
          <button class="editButton">등록하기</button>
        </div>
      </main>
    </div>

    <script src="/js/admin/aside.js"></script>
    <script src="/js/editor.js"></script>
  </body>
</html>
