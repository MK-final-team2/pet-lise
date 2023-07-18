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
<link rel="stylesheet" href="/css/recipe/recipeDetail.css" />
<link rel="stylesheet" href="/css/recipe/recipePage.css" />
<link rel="stylesheet" href="/css/nav/nav.css" />
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<title>PetLiSe</title>
</head>
<body>
    <div class="wrap">
    <div id="nav"></div>
		<div id="board_title">
		
            <div class="title_recipe">
            <div class="pet_icon">
			<div class="dog_icon"><img src="/images/recipe/dog_icon.svg"></div>
			<!-- <div class="cat_icon"><img src="/images/recipe/cat_icon.svg"></div> -->
			</div>
                <span>전문가 레시피</span></div>
        </div>

  
    <div class="idx_top">
          <div class="main_top_category"><건강식/영양식></div>
          <div class="main_top_title">내 반려견이 건강하게 자라기 위한 레시피</div>
        <div class="main_bottom">
          <div class="main_top_writer">작성자</div>
          <div class="main_top_date">2023-07-04</div>
        </div>
    </div>
    </div>
      <div class="board_body">
        <div class="board_body_inside">    
        <div class="post_actions">
          <button class="editButton" id="editButton">
            <a href="#">수정</a>
          </button>
          <button class="deleteButton" id="deleteButton">삭제</button>
        </div>
        <div class="contents" style="text-align: center;">
            <span>Lorem Ipsum is simply dummy text of the printing and typesetting industry. <br>
              Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,<br>
               when an unknown printer took a galley of type and scrambled it to make a type specimen book. <br>
              It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. <br>
              It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, <br>
              and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<br>
             <br>
              <img src="/images/recipe/sample.jpg"><br><br>
              Lorem Ipsum is simply dummy text of the printing and typesetting industry. <br>
              Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,<br>
               when an unknown printer took a galley of type and scrambled it to make a type specimen book. <br>
              It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. <br>
              It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, <br>
              and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</span>
        </div>

        <div class="post_like">
          <button><img src="/images/recipe/heart.svg">좋아요</button>
        </div>
      </div>
  </div>


  <div class="board_body_inside">    
        
        <div id="cmtPosition" >
          <div class="comment_header_bar">
            <span>댓글</span>
            <span class="comment_num">5</span>
            <img src="/images/recipe/reply.svg">
          </div>
        </div>

  <!-- 댓글작성 -->
  <div class="cmt_write_input">
    <img src="/images/recipe/profile.svg">
    <textarea class="cmt_textarea" id="comment-input" placeholder="이 곳에 댓글 내용을 입력해주세요." oninput="countCharacters()"></textarea>
    <div class="character-count" id="characterCount">0/1000</div>
  </div>
  <div class="cmt_write_input_bottom">
    <div class="cmt_actions">
      
      <button type="submit" id="sticker"><img src="/images/recipe/sticker.svg">스티커</button>
      <button type="submit" id="picture"><img src="/images/recipe/picture.svg">사진</button>
      <button type="submit" id="submitButton">등록</button>
    </div>
  </div>
  

<!-- 댓글리스트 -->
<ul id="comment-list"></ul>

<!--더미댓글-->
<div class="fdb_lst_ul">
  <li class="new-comment">
    <div class="cmt_line">
      <div class="cmt_info">
        <div class="user_profile">
          <img src="/images/recipe/profile.svg">
        </div>
        <div class="cmt_left">
          <span class="cmt_nick">레오누나</span>
          <span class="cmt_date">2023-07-05 09:01:21</span>
          <button class="reply_edit">수정</button>
          <button class="reply_delete">삭제</button>
        </div>
        <div class="cmt_right">
          <button class="re_reply">
            <img src="/images/recipe/reply.svg">댓글</button>
          <button class="like_reply">
            <img src="/images/recipe/heart.svg">좋아요</button><span></span>
          <button class="siren_reply">
            <img src="/images/recipe/siren.svg" class="icon_siren">신고</button>
        </div>
      </div>
      <div class="cmt_bottom">
      <div class="cmt_img"><img src="/images/recipe/sample.jpg"></div>
      <div class="first_cmt_na">댓글 내용입니다. 강아지가 귀엽고 요리는 재밌네요.</div>
      </div>
    </div>
  </li>
</div>



<!--대댓글-->
<div class="fdb_lst_ul">
  <li class="re-comment">
    <div class="cmt_line_re">
      <div class="cmt_info_re">
        <img src="/images/recipe/re.svg">  
        <div class="user_profile">
          <img src="/images/recipe/profile.svg">
        </div>
        <div class="cmt_left">
          <span class="cmt_nick">레오</span>
          <span class="cmt_date">2023-07-05</span>
          <button class="reply_edit">수정</button>
          <button class="reply_delete">삭제</button>
        </div>
        <div class="cmt_right">
          <button class="like_reply">
            <img src="/images/recipe/heart_hit.svg">좋아요</button><span>3</span>
          <button class="siren_reply">
            <img src="/images/recipe/siren.svg" class="icon_siren">신고</button>
        </div>
      </div>
      <div class="cmt_bottom_re">
      <div class="first_cmt_na">대댓글입니다. 맛있는거 해주세요.</div>
      </div>
    </div>
  </li>
</div>

</div>

<div class="blank_space"></div>

<div class="page">
  <div class="pagination">
    <a href="#"><div class="precious"></div></a>
    <div class="number"></class>
    <a href="#" aria-current="page">1</a>
    <a href="#">2</a>
    <a href="#">3</a>
    <a href="#">4</a>
    <a href="#">5</a>
    <a href="#">6</a>
    <a href="#">7</a>
    <a href="#">8</a>
    <a href="#">9</a>
    <a href="#">10</a>
    </div>
    <a href="#"><div class="next"></div></a>
    </div>
</div>


</body>
<script src="/js/recipe/nav.js"></script>
</html>