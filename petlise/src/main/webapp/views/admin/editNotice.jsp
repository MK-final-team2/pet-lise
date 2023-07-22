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
    <link rel="stylesheet" href="/css/admin/noticeCategory.css" />
    <link rel="stylesheet" href="/css/admin/editNotice.css" />
    <link
      href="https://cdn.quilljs.com/1.3.6/quill.snow.css"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="/css/editor.css" />
    <script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <title>Pet LiSe</title>
  </head>
  <body>
    <div class="container">
      <div id="asideMenu"></div>

      <main>
        <p>공지사항 등록</p>

        <div class="contents">
          <div class="category" id="category"></div>
          
          <input type="text" placeholder="제목" name="title" />
          
          <div id="editor"></div>
          
          <button class="editButton" onclick="return edit()">등록하기</button>
        </div>
      </main>
    </div>

    <script src="/js/admin/aside.js"></script>
    <script src="/js/admin/noticeCategory.js"></script>
    <script src="/js/editor.js"></script>
    <script src="/js/admin/editNotice.js"></script>
  </body>
</html>
