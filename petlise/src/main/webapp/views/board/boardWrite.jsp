<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/board/boardWrite.css">
    <link rel="stylesheet" href="/css/style.css" />  
        <link rel="stylesheet" href="/css/board/petplaceWrite.css" />

            <link
      href="https://cdn.quilljs.com/1.3.6/quill.snow.css"
      rel="stylesheet"
    /><link rel="stylesheet" href="/css/editor.css" />
    <script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>
    
    <title>자유게시판 등록</title>
    <script src="/js/jquery-3.6.4.min.js"></script>
        <script>
      $(document).ready(function () {});
    </script>  
</head>

<body>
    <div id="container">
     

      <main>
        <div class="board_title">
        <p>자유게시판 글쓰기</p>
		</div>
		
        <div class="contents">
        <P>제목</P> 
      <div class="write_title">
         <input type="text"  />
          </div>
          
          
  



<div class="editorWrap">
          <div id="editor">
            <p>내용을 입력해주세요</p>
            <br />
            <p>
              * 저작권 침해, 음란, 청소년 유해물, 기타 위법자료 등을 게시할 경우
              게시물은 경고 없이 삭제됩니다.
            </p>
          </div>
          <button class="writeButton">등록하기</button>
        </div>
        </div>
      </main>
    </div>
    
 <script src="/js/editor.js"></script>



</body>
</html>