<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8" />
   		<meta name="viewport" content="width=device-width, initial-scale=1.0" />
   		<link rel="icon" href="/images/favicon.ico" />
   		<link rel="apple-touch-icon" href="/images/favicon.ico" />
    	<link rel="stylesheet" href="/css/style.css" />
    	<link rel="stylesheet" href="/css/recipe/recipeCreate.css" /> 
    	<link rel="stylesheet" href="/css/admin/expertRecipeCategory.css" />
    	<link href="https://cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet"/>
    	<script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>
    	<script src="http://code.jquery.com/jquery-latest.min.js"></script>
		<title>PetLiSe</title>
	</head>
<body>
    <div class="wrap">
		<div id="board_title">
            <div class="title_recipe">
            <span>나만의 레시피</span></div>
            <div class="subtitle_recipe">
            <span>레시피 등록</span></div>
        </div>

        <div class="title_input">
            <input type="text" placeholder="레시피 제목">
        </div>
        <div class="thumbnail">
            <p>대표이미지</p>
             <label for="file">
              <img src="/images/image-icon.svg" alt="이미지아이콘" />
            </label>
            <input type="file" id="file" />
        </div>
        
        <div class="dog_cat"><span>어떤 반려동물을 위한 레시피인가요?</span></div>
        <div class="pet_choose">
		  <label class="dog">
		    <input type="radio" name="pet" value="dog">
		    <img src="/images/recipe/dog_icon.svg">
		    <span>강아지</span>
		  </label>
		  <label class="cat">
		    <input type="radio" name="pet" value="cat">
		    <img src="/images/recipe/cat_icon.svg">
		    <span>고양이</span>
		  </label>
		</div>

        
        <div class="category"><span>카테고리</span></div>
        
        <div class="categoryWrap">
            <div class="category">
              <div id="dropdown" class="dropdown"></div>
            </div>

            <div class="category" id="smallCategory">
              <div id="dropdown2" class="dropdown">
                <div class="select">
                  <span>카테고리 선택</span>
                </div>
                <input type="hidden" />
                <ul id="dropdown-menu" class="dropdown-menu"></ul>
              </div>
            </div>
          </div>

        <div id="editor">
            <p>내용을 입력해주세요</p>
            <br />
            <p>
              * 저작권 침해, 음란, 청소년 유해물, 기타 위법자료 등을 게시할 경우
              게시물은 경고 없이 삭제됩니다.
            </p>
          </div>
          <div class="createButton">
          <button class="editButton">등록하기</button></div>
    </div>
     <script src="/js/editor.js"></script>
	 <script src="/js/recipe/recipeCategory.js"></script>
</body>

</html>