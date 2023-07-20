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
    <link rel="stylesheet" href="/css/admin/expertRecipeCategory.css" />
    <link rel="stylesheet" href="/css/admin/editExpertRecipe.css" />
    <link
      href="https://cdn.quilljs.com/1.3.6/quill.snow.css"
      rel="stylesheet"
    />
    <link rel="stylesheet" href="/css/editor.css" />
    <script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>
    <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <title>Pet LiSe</title>
    <script>
      let title = '${pet_category}';
    </script>
  </head>
  <body>
    <div class="container">
      <div id="asideMenu"></div>

      <main>
        <p>전문가 레시피 등록 - ${pet_category}</p>

        <div class="contents">
          <input type="text" placeholder="제목" name="recipe_title" />
          <div class="fileWrap">
            <p>대표이미지</p>
            <label for="file">
              <img src="/images/image-icon.svg" alt="대표이미지" id="imgUrl" />
              <input type="hidden" id="imageValue" name="image" />
            </label>
            <input
              type="file"
              id="file"
              accept="image/*"
              onchange="imageUpload()"
            />
          </div>
          <div class="categoryWrap">
            <div class="category">
              <p>대분류 카테고리</p>
              <div id="dropdown" class="dropdown"></div>
            </div>

            <div class="category" id="smallCategory">
              <p>소분류 카테고리</p>
              <div id="dropdown2" class="dropdown">
                <div class="select">
                  <span></span>
                </div>
                <input
                  type="hidden"
                  class="smallCateName"
                  name="sub_category"
                />
                <ul id="dropdown-menu" class="dropdown-menu"></ul>
              </div>
            </div>
          </div>

          <div id="editor"></div>
          <button class="editButton" onclick="return edit()">등록하기</button>
        </div>
      </main>
    </div>

    <script src="/js/admin/aside.js"></script>
    <script src="/js/admin/recipeCategory.js"></script>
    <script src="/js/editor.js"></script>
    <script src="/js/imageUpload.js"></script>
    <script src="/js/admin/editRecipe.js"></script>
  </body>
</html>
