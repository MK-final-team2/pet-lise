<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<script>
	//좋아요 수 업데이트
	$(document).ready(function(){
		$("#post_like").on("click", function(){
			var recipe_id = $("#recipe_id").text();
			var user_id = $("#user_id").text();
			
			$.ajax({
				type: "POST",
				url: "/likecount",
				contentType: "application/json",
				dataType: "JSON",
				data: JSON.stringify({
					recipe_id: recipe_id,
					user_id: user_id,
					is_like: true
				}),
				success: function(response){
					console.log("좋아요 추가");
				},
				error: function(){
					console.error("좋아요 에러");
				}
			});
		});
	});



	//댓글작성	
	$(document).ready(function(){
		$("#cmt_save").on("click", function(){
			var recipe_id = $("#recipe_id").text();
			var user_id = $("#user_id").text();
			var profile_image = $("#profile_image").text();
			var cmtContents = $("#cmt_input").val();
			
			$.ajax({
				type: "POST",
				url: "/writerecipecomment",
				contentType: "application/json",
				dataType: "JSON",
				data: JSON.stringify({
					recipe_id: recipe_id,
					user_id: user_id,
					profile_image: profile_image,
					contents: cmtContents
				}),
				success: function(response){
					location.href = "/recipedetail";
					console.log("댓글작성성공");
				},
				error: function(){
					console.error("댓글작성실패");
				}
			});
		});
	});
	
	//댓글 입력 글자수
	$(document).ready(function(){

	    var cmtInput = $("#cmt_input");
	    var characterCount = $(".character_count");

	    cmtInput.on("input", function() {
	        var currentLength = cmtInput.val().length;
	        var maxLength = 1000;

	        characterCount.text(currentLength + "/" + maxLength);
	    });
	});
	
	//댓글 갯수 카운팅
	$(document).ready(function(){
	   
	    var cmtCount = $(".cmt_unit").length;
	    $(".cmt_count").text(cmtCount);
	});
</script>

<body>
	<div id="user_id" style="display: none;">${userInfo.user_id}</div>
	<div id="profile_image" style="display: none;">${userInfo.profile_image}</div>
	<div id="recipe_id" style="display: none;">${recipeDetail.recipe_id}</div>
	
	<div class="wrap">
		<div id="nav"></div>
		<div id="board_title">

			<div class="title_recipe">
				<div class="pet_icon">
					<div class="dog_icon">
						<img src="/images/recipe/dog_icon.svg">
					</div>
					<!-- <div class="cat_icon"><img src="/images/recipe/cat_icon.svg"></div> -->
				</div>
				<span>전문가 레시피</span>
			</div>
		</div>

		<div class="idx_top">
			<div class="main_top_category">${recipeDetail.main_category} |
				${recipeDetail.sub_category}</div>
			<div class="main_top_title">${recipeDetail.recipe_title}</div>
			<div class="main_bottom">
				<div class="main_top_writer">${recipeDetail.user_id}</div>
				<div class="main_top_date">${recipeDetail.recipe_created_at}</div>
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
				<span><img
					src="${recipeDetail.image}"></span><br>
				<span>${recipeDetail.recipe_contents}</span>
			</div>
			<div id="post_like">
				<button>
					<img src="/images/recipe/heart.svg">좋아요
				</button>
			</div>
		</div>
	</div>


	<div class="board_body_inside">

		<div id="cmtPosition">
			<div class="comment_header_bar">
				<span>댓글</span> <span class="cmt_count">5</span> <img
					src="/images/recipe/reply.svg">
			</div>
		</div>

		<!-- 댓글작성 -->
		<div id="cmt_writing_box">
			<div class="cmt_write_input">
				<img src="/images/recipe/profile.svg">
				<textarea class="cmt_textarea" id="cmt_input"
					placeholder="이 곳에 댓글 내용을 입력해주세요."></textarea>
				<div class="character_count">0/1000</div>
			</div>
			<div class="cmt_write_input_bottom">
				<div class="cmt_actions">
					<button type="submit" id="sticker">
						<img src="/images/recipe/sticker.svg">스티커
					</button>
					<button type="submit" id="picture">
						<img src="/images/recipe/picture.svg">사진
					</button>
					<button id="cmt_save">등록</button>
				</div>
			</div>
		</div>

		<div class="cmt_list">
			<c:forEach var="recipeComment" items="${recipeComment}" begin="0"
				end="9">
				<div class="cmt_unit">
					<div class="cmt_user">
						<div style="display: none;">${recipeComment.comment_id}</div>					
						<div style="display: none;">${recipeComment.recipe_id}</div>
						<img src="${recipeComment.profile_image}"
							style="width: 35px; height: 35px;"> <span
							class="cmt_user_id">${recipeComment.user_id}</span>
						<span class="cmt_date"><fmt:formatDate
								value="${recipeComment.created_at}"
								pattern="yyyy.MM.dd" /></span>
						<button class="cmt_edit">수정</button>
						<button class="cmt_delete">삭제</button>
						<div class="cmt_util">
							<button class="reply_writing">
								<img src="/images/recipe/reply.svg">댓글
							</button>
							<button class="cmt_like">
								<img src="/images/recipe/heart.svg">좋아요
							</button>
							<span></span>
							<button class="cmt_siren">
								<img src="/images/recipe/siren.svg" class="icon_siren">신고
							</button>
						</div>
					</div>
					<div class="cmt_content_box">
						<div class="cmt_img">
							<img src="${recipeComment.image}"
								style="width: 70px; height: 70px;">
						</div>
						<div class="cmt_contents">${recipeComment.contents}</div>
					</div>
				</div>
				
			<!--대댓글-->
			<div class="reply_list">
 			  <c:forEach var="replyList" items="${replyList}" begin="0" end="9">
				<div class="reply_unit">
					<div class="reply_user">
						<div style="display: none;">${replyList.parent_id}</div>
						<img src="${replyList.profile_image}"
							style="width: 35px; height: 35px;"> <span
							class="reply_user_id">${replyList.user_id}</span>
						<span class="reply_date"><fmt:formatDate
								value="${replyList.created_at}"
								pattern="yyyy.MM.dd" /></span>
						<button class="reply_edit">수정</button>
						<button class="reply_delete">삭제</button>
						<button class="reply_like">
							<img src="/images/recipe/heart_hit.svg">좋아요
						</button>
						<button class="reply_siren">
							<img src="/images/recipe/siren.svg" class="icon_siren">신고
						</button>
					</div>
					<div class="reply_content_box">
						<div class="reply_contents">${replyList.contents}</div>
					</div>
				</div>
			  </c:forEach>
			</div>
				
		  </c:forEach>
		</div>

	</div>


	<div class="blank_space"></div>

	<div class="page">
		<div class="pagination">
			<a href="#"><div class="precious"></div></a>
			<div class="number">
				<a href="#" aria-current="page">1</a> <a href="#">2</a> <a href="#">3</a>
				<a href="#">4</a> <a href="#">5</a> <a href="#">6</a> <a href="#">7</a>
				<a href="#">8</a> <a href="#">9</a> <a href="#">10</a>
			</div>
			<a href="#"><div class="next"></div></a>
		</div>
	</div>
	

</body>
<script src="/js/recipe/nav.js"></script>
</html>