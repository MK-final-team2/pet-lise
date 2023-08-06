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
	//좋아요 수 업데이트(recipeLike)
	$(document).ready(function() {
	  var isLiked = false;
	
	  $("#like_btn").on("click", function() {
	    var recipe_id = $("#session_recipe_id").val();
	    var user_id = $("#session_user_id").val();
	
	    isLiked = !isLiked;
	    
	    if (isLiked) {
	        $("#post_like button img").attr("src", "/images/recipe/heart_hit.svg");
	      } else {
	        $("#post_like button img").attr("src", "/images/recipe/heart.svg");
	      }
	    
	 	var likes = Number(isLiked);
	 	var recipe_likes = 0;
	 	
	 	if (likes === 0) {
	 		  recipe_likes = -1;
	 		} else if (likes === 1) {
	 		  recipe_likes = 1;
	 		}
	
	    //좋아요 레코드 확인(recipeLike)
	    $.ajax({
	      type: "POST",
	      url: "/checklike",
	      contentType: "application/json",
	      data: JSON.stringify({
	        recipe_id: recipe_id,
	        user_id: user_id
	      }),
	      success: function(response) {
	        if (response.exists) {
	          //레코드가 존재하면 좋아요 수 업데이트
	          updateLike(recipe_id, user_id, isLiked, likes);
	          recipeLike(recipe_id, user_id, likes);

	        } else {
	          //레코드가 존재하지 않으면 좋아요 수 삽입
	          insertLike(recipe_id, user_id, isLiked, likes);
	          recipeLike(recipe_id, user_id, likes);
	        }
	      },
	      error: function() {
	        console.error("좋아요 상태 체크 에러");
	      }
	    });
	  });
	
	  //좋아요 수 업데이트(recipeLike)
	  function insertLike(recipe_id, user_id, isLiked, likes) {
	    $.ajax({
	      type: "POST",
	      url: "/likecount",
	      contentType: "application/json",
	      dataType: "JSON",
	      data: JSON.stringify({
	        recipe_id: recipe_id,
	        user_id: user_id,
	        is_like: isLiked,
	        likes: likes
	      }),
	      success: function(response) {
	        console.log("좋아요 상태 변경");
	        console.log("새로운 is_like 값: " + isLiked);
	        console.log("좋아요 변화값: " + likes); 
	        
	        var recipeLikesCount = Number($("#recipe_likes_count").text());
	        var newLikesCount = isLiked ? recipeLikesCount + 1 : recipeLikesCount - 1;
	        $("#recipe_likes_count").text(newLikesCount);
	      },
	      error: function() {
	        console.error("좋아요 상태 변경 에러");
	      }
	    });
	  }
	
	  //좋아요 수 수정(recipeLike)
	  function updateLike(recipe_id, user_id, isLiked, likes) {
	    $.ajax({
	      type: "POST",
	      url: "/updatelike",
	      contentType: "application/json",
	      dataType: "JSON",
	      data: JSON.stringify({
	        recipe_id: recipe_id,
	        user_id: user_id,
	        is_like: isLiked,
	        likes: likes
	      }),
	      success: function(response) {
	        console.log("좋아요 상태 업데이트");
	        console.log("새로운 is_like 값: " + isLiked);
	        console.log("좋아요 변화값: " + likes); 
	        
	        var recipeLikesCount = Number($("#recipe_likes_count").text());
	        var newLikesCount = isLiked ? recipeLikesCount + 1 : recipeLikesCount - 1;
	        $("#recipe_likes_count").text(newLikesCount);
	      },
	      error: function() {
	        console.error("좋아요 상태 업데이트 에러");
	      }
	    });
	  }
		//레시피 likes수 추가
		function recipeLike(recipe_id, user_id, likes) {
			var likes = Number(isLiked);
		 	var recipe_likes = 0;
			var original_likes = parseInt($("#recipe_likes").val(), 10);
		 	
		 	if (likes === 0) {
		 		  recipe_likes = 0;
		 		} else if (likes === 1) {
		 		  recipe_likes = 1;
		 		}
			
		  $.ajax({
		    type: "POST",
		    url: "/recipelike",
		    contentType: "application/json",
		    dataType: "JSON",
		    data: JSON.stringify({
		      recipe_id: recipe_id,
		      user_id: user_id,
		      likes: Number(original_likes) + Number(recipe_likes)
		    }),
		    success: function(response) {
	    	  $("#recipe_likes_count").text(response.likes);	
		      console.log("------------------------");
		    },
		    error: function() {
		      console.error("좋아요 수 업데이트 에러");
		    }
		  });
		}	  
	  
	});
	
	//댓글작성	
	$(document).ready(function() {
		$("#cmt_save").on("click", function() {
			var recipe_id = $("#recipe_id").text();
			var user_id = $("#user_id").text();
			var profile_image = $("#profile_image").text();
			var cmtContents = $("#cmt_input").val();

			$.ajax({
				type : "POST",
				url : "/writerecipecomment",
				contentType : "application/json",
				dataType : "JSON",
				data : JSON.stringify({
					recipe_id : recipe_id,
					user_id : user_id,
					comment_contents : cmtContents
				}),
				success : function(response) {
					location.href = "/recipedetail";
					console.log("댓글작성성공");
				},
				error : function() {
					console.error("댓글작성실패");
				}
			});
		});
	});

	//댓글 편집모드 실행
	function toggleEdit(comment_id) {
	  const cmtContentBox = document.getElementById(`cmt_content_box_${comment_id}`);
	  const cmtContentsElement = cmtContentBox.querySelector('.cmt_contents');
	  const editMode = cmtContentBox.querySelector('.edit_mode');
	  const editCommentContent = editMode.querySelector('.edit_comment_content');
	
	  // 이미 수정 모드인 경우 취소 버튼을 누를 때 원래 내용을 보여줌
	  if (editMode.style.display === 'block') {
	    cmtContentsElement.style.display = 'block';
	    editMode.style.display = 'none';
	  } else {
	    const cmtContents = cmtContentsElement.textContent;
	    editCommentContent.value = cmtContents;
	
	    cmtContentsElement.style.display = 'none';
	    editMode.style.display = 'block';
	  }
	}
	
	 //댓글 수정부분 저장
	 function saveChanges(comment_id) {
	   const editedContent = document.getElementById(`cmt_content_box_${comment_id}`).querySelector('.edit_comment_content').value;
	   const recipe_id = $("#recipe_id").text();
	   const user_id = $("#user_id").text();
	   const editedImage = document.querySelector(`#cmt_content_box_${comment_id} .edit_comment_image`);
	   const editContents = $(".edit_comment_content").val();
		
	   const comment_image = editedImage ? editedImage.value : null;
	   
	   $.ajax({
		    url: "/editcomment",
		    type: "POST",
			contentType : "application/json",
			dataType : "JSON",
			data : JSON.stringify({
				recipe_id : recipe_id,
				user_id : user_id,
				comment_image: comment_image,
				comment_contents : editContents
			}),
			success : function(response) {
				location.href = "/recipedetail";
				console.log("댓글수정성공");
			},
			error : function() {
				console.error("댓글수정실패");
			}
	   });
	
	   document.getElementById(`cmt_content_box_${comment_id}`).querySelector('.cmt_contents').textContent = editedContent;
	   document.getElementById(`cmt_content_box_${comment_id}`).querySelector('.edit_mode').style.display = 'none';
	   document.getElementById(`cmt_content_box_${comment_id}`).querySelector('.cmt_contents').style.display = 'block';
	 }
	
	//댓글 입력 글자수
	$(document).ready(function() {

		var cmtInput = $("#cmt_input");
		var characterCount = $(".character_count");

		cmtInput.on("input", function() {
			var currentLength = cmtInput.val().length;
			var maxLength = 1000;

			characterCount.text(currentLength + "/" + maxLength);
		});
	});

	//댓글 갯수 카운팅
	$(document).ready(function() {

		var cmtCount = $(".cmt_unit").length;
		$(".cmt_count").text(cmtCount);
	});
	
</script>

<body>
	<input type="hidden" id="session_recipe_id"
		value="${sessionScope.recipe_id}" />
	<input type="hidden" id="session_user_id"
		value="${sessionScope.user_id}" />
	<div id="user_id" style="display: none;">${userInfo.user_id}</div>
	<div id="profile_image" style="display: none;">${userInfo.profile_image}</div>
	<div id="recipe_id" style="display: none;">${recipeDetail.recipe_id}</div>
	<input type="hidden" id="recipe_likes" value="${recipeDetail.likes}" />

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
			<div class="main_top_category">${recipeDetail.main_category}|
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
				<span><img src="${recipeDetail.image}"></span><br> <span>${recipeDetail.recipe_contents}</span>
			</div>
			<div id="post_like">
				<button id="like_btn">
					<img src="/images/recipe/heart.svg"><p id="recipe_likes_count">${recipeDetail.likes}</p>
					좋아요
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
					<button type="submit" id="picture">
						<img src="/images/recipe/picture.svg">사진
					</button>
					<button id="cmt_save">등록</button>
				</div>
			</div>
		</div>

		<!-- 댓글 목록 -->
		<div class="cmt_list">
			<c:forEach var="recipeComment" items="${recipeComment}" begin="0"
				end="9">
				<div class="cmt_unit">
				<div style="display: none;">${recipeComment.comment_id}</div>
				<div style="display: none;">${recipeComment.recipe_id}</div>
					<div class="cmt_user">
						<img src="${userInfo.profile_image}"
							style="width: 35px; height: 35px;"> <span
							class="cmt_user_id">${recipeComment.user_id}</span> 
						<div class="cmt_btns">
							<button class="cmt_edit"
								onclick="toggleEdit(${recipeComment.comment_id})">수정</button>
							<span>ㆍ</span>	
							<button class="cmt_delete">삭제</button>
						</div>						
							<span
							class="cmt_date"><fmt:formatDate
								value="${recipeComment.comment_created_at}" pattern="yyyy.MM.dd" /></span>
						<div class="cmt_util">
							<button class="reply_writing">
								<img src="/images/recipe/reply.svg">댓글
							</button>
							<button class="cmt_like">
								<img src="/images/recipe/heart.svg">좋아요
							</button>
							<button class="cmt_siren">
								<img src="/images/recipe/siren.svg" class="icon_siren">신고
							</button>
						</div>
					</div>
					<div class="cmt_content_box"
						id="cmt_content_box_${recipeComment.comment_id}">
						<c:if test="${recipeComment.comment_image != null}">
							<div class="cmt_img">
								<img src="${recipeComment.comment_image}"
									style="width: 70px; height: 70px;">
							</div>
						</c:if>
						<div class="cmt_contents">${recipeComment.comment_contents}</div>

						<div class="edit_mode" style="display: none;">
							<textarea class="edit_comment_content">${recipeComment.comment_contents}</textarea>
							<c:if test="${recipeComment.comment_image != null}">
								<a href="${recipeComment.comment_image}"></a>
							</c:if>
							<div class="edit_btns">
								<button onclick="saveChanges(${recipeComment.comment_id})">수정</button>
								<button onclick="toggleEdit(${recipeComment.comment_id})">취소</button>
							</div>
						</div>

					</div>
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

	<jsp:include page="../footer.jsp" />
</body>
<script src="/js/recipe/nav.js"></script>
</html>