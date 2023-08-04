<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%
// 서버 사이드 코드에서 세션에서 user_id 값을 가져옵니다.
var user_id = (String) session.getAttribute("user_id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" href="/images/favicon.ico" />
<link rel="apple-touch-icon" href="/images/favicon.ico" />
<link rel="stylesheet" href="/css/board/petplaceDetail.css">
<link rel="stylesheet" href="/css/board/modal.css">
<link rel="stylesheet" href="/css/style.css" />

<link rel="stylesheet" href="/views/board/cogi/cogi.css" />
<title>펫플레이스 상세페이지</title>
<script src="/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=33ed4195d27024d4ef479d47cfa9ce6f&libraries=services&libraries=services"></script>




<!-- 
<script>
$(document).on('click', '.comment_likebtn', function() {
    if (user_id == "") {
        // 로그인이 필요한 경우에 대한 처리
    } else {
        $.ajax({
            type: 'post',
            url: '/petplacelikeup',
            dataType: 'json',
            data: {
                user_id: user_id,  // 수정: user_id 변수를 실제 값으로 전달
                place_id: ${petplaceInfo.place_id},  // 수정: petplaceInfo.place_id 변수를 실제 값으로 전달
                comment_id: 'place_id'  // 수정: 실제 댓글의 comment_id 값을 전달 (테이블 구조에 따라 정확한 값을 사용해야 함)
            },
            success: function(result) {
                // 결과 성공 콜백함수
                // 여기서 좋아요 수를 업데이트하거나 버튼 상태를 변경할 수 있습니다.
            },
            error: function(request, status, error) {
                // 결과 에러 콜백함수
                console.log(error);
            }
        }); // ajax end
    }
});


$(document).on('click', '.comment_likebtn_active', function() {
    if (user_id == "") {
        // 로그인이 필요한 경우에 대한 처리
    } else {
        $.ajax({
            type: 'post',
            url: '/petplacelikedown',
            dataType: 'json',
            data: {
                user_id: user_id,  // 수정: user_id 변수를 실제 값으로 전달
                place_id: ${petplaceInfo.place_id},  // 수정: petplaceInfo.place_id 변수를 실제 값으로 전달
                comment_id: 'place_id'  // 수정: 실제 댓글의 comment_id 값을 전달 (테이블 구조에 따라 정확한 값을 사용해야 함)
            },
            success: function(result) {
                // 결과 성공 콜백함수
                // 여기서 좋아요 수를 업데이트하거나 버튼 상태를 변경할 수 있습니다.
            },
            error: function(request, status, error) {
                // 결과 에러 콜백함수
                console.log(error);
            }
        }); // ajax end
    }
});

    	</script> -->

</head>

<body>
	<header>
		<jsp:include page="../header.jsp" />
	</header>
	<div class="board_title">
		<a href="/petplaceMain">펫플레이스</a> <img
			src="/images/board/petplaceLogo.png" style="margin-left: -7px;"
			alt="펫플레이스이미지">
	</div>
	<div class="containers">
		<div class="contents">
			<div class="detail_title">${petplaceInfo.title}</div>
			<div class="detail_info">
				<div class="detail_writer">작성자 : ${petplaceInfo.user.name}</div>
				<div class="detail_date">
					<fmt:formatDate value="${petplaceInfo.petplace_created}"
						pattern="yyyy-MM-dd H:mm" />
				</div>
				<div class="detail_view">조회수 ${petplaceInfo.view_count}</div>
				<div class="detail_like">♥${petplaceInfo.petplacelike.likes}</div>
			</div>
			<div id=UD>
				<div class="post_actions" id="postActions" style="display: none;">
					<a class="editButton" id="editButton"
						href="/getUpdatepetplace?seq=${petplaceInfo.seq}">수정</a>
					<button class="deleteButton" id="deleteButton"
						data-placeid="${petplaceInfo.seq}" onclick="clickModal(event)">삭제</button>
				</div>
				<div id="modal"></div>
			</div>


			<div class="petplacemap">펫플레이스 위치</div>
			<div class="addressLine">
				<div id="post_address">${fn:split(petplaceInfo.petplace_address,',')[0]}</div>
				<div id="sample6_address">${fn:split(petplaceInfo.petplace_address,',')[1]}</div>
				<div id="detail_address">${fn:split(petplaceInfo.petplace_address,',')[2]}</div>
			</div>
			<%@ include file="./cogi/cogi.html"%>


			<div id="map"></div>
			<button id="searchBtn" type="button" style="display: none;"></button>
			<div class="detail_content">${petplaceInfo.petplace_contents}</div>

			<div>
				<div>
					<div class="post_like">
						<button class="comment_likebtn">
							<span class="material-symbols-outlined">thumb_up</span> <br>
							<span class="likecnt">0</span>
						</button>
						<button class="comment_likebtn">
							<img src="/images/recipe/heart.svg">좋아요
						</button>
					</div>
				</div>

			</div>
		</div>



		
		</div>
						
	<!-- Comments Form -->
	<!-- <div class="card my-4">
		<h5 class="card-header">Leave a Comment:</h5>
		<div class="card-body">
			<form name="comment-form" action="/petplacecommentWrite" method="post" autocomplete="off">
				<div class="form-group">
					<input type="hidden" name="comment_id" th:value="*{comment_id}" />
					<textarea name="comment_contents" class="form-control" rows="3"></textarea>
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
		</div>
	</div> -->
	
	
	
	 <div class="card my-4">
		<h5 class="card-header">Leave a Comment:</h5>
		<div class="card-body">
			<form name="comment-form" action="/petplacecommentWrite" method="post" autocomplete="off">
				<div class="form-group">
					<input type="hidden" name="comment_id" value="${comment.comment_id}" />
					<textarea name="comment_contents" class="form-control" rows="3"></textarea>
				</div>
				<button type="submit" class="btn btn-primary">Submit</button>
			</form>
		</div>
	</div> 
  <c:forEach var="comment" items="${response.list}">
					
				<div class="comment_container">
					<div class="comment_info">
						<div class="user_info">
							<div class="box" style="background: #BDBDBD;">
								<img class="profile" src="${comment.user.profile_image}">
							</div>
							<span>${comment.user.name}</span>
							<span>${comment.created_at}</span>
						</div>
						<!--유저정보영역-->
						<div class="comment_contents">
							
							<div class="contents">
								<p>${comment.contents}</p>
							</div>
							<!--후기내용-->
						</div>
						<!--후기영역-->
					</div>
					<!--정보/후기영역-->

					
					<div class="comment_btns">
						<input type="hidden" value="${comment.comment_id}"/>
						<%-- <c:if test="${comment.islike}">
							<button class="comment_likebtn_active">
								<span class="material-symbols-outlined">thumb_up</span>
								<br>
								<span class="likecnt">${comment.likes}</span>
							</button>
						</c:if>
						<c:if test="${!comment.islike}">
							<button class="comment_likebtn">
								<span class="material-symbols-outlined">thumb_up</span>
								<br>
								<span class="likecnt">${comment.likes}</span>
							</button>
						</c:if> --%>
						<%-- <c:if test="${comment.user_id == sessionScope.user_id}">
							<button class="comment_deletebtn">
								<span class="material-symbols-outlined">delete</span>
							</button>
						</c:if> --%>
					</div>
				</div>
				<!--리뷰1개-->
			</c:forEach>
			</div>
		</div><!-- products comment -->
<!-- 
			댓글리스트
			<ul id="comment-list"></ul>

			더미댓글
			<div class="fdb_lst_ul">
				<li class="new-comment">
					<div class="cmt_line">
						<div class="cmt_info">
							<div class="user_profile">
								<img src="/images/recipe/profile.svg">
							</div>
							<div class="cmt_left">
								<span class="cmt_nick">깜둥</span> <span class="cmt_date">2023-07-05
									09:01:21</span>
								<button class="reply_edit">수정</button>
								<button class="reply_delete">삭제</button>
							</div>
							<div class="cmt_right">
								<button class="re_reply">
									<img src="/images/recipe/reply.svg">댓글
								</button>
								<button class="like_reply">
									<img src="/images/recipe/heart.svg">좋아요
								</button>
								<span></span>
								<button class="siren_reply">
									<img src="/images/recipe/siren.svg" class="icon_siren">신고
								</button>
							</div>
						</div>
						<div class="cmt_bottom">

							<div id= "comment" class="first_cmt_na">댓글 내용입니다..</div>
						</div>
					</div>
				</li>
			</div>



			대댓글
			<div class="fdb_lst_ul">
				<li class="re-comment">
					<div class="cmt_line_re">
						<div class="cmt_info_re">
							<img src="/images/recipe/re.svg">
							<div class="user_profile">
								<img src="/images/recipe/profile.svg">
							</div>
							<div class="cmt_left">
								<span class="cmt_nick">자몽</span> <span class="cmt_date">2023-07-05</span>
								<button class="reply_edit">수정</button>
								<button class="reply_delete">삭제</button>
							</div>
							<div class="cmt_right">
								<button class="like_reply">
									<img src="/images/recipe/heart_hit.svg">좋아요
								</button>
								<span>3</span>
								<button class="siren_reply">
									<img src="/images/recipe/siren.svg" class="icon_siren">신고
								</button>
							</div>
						</div>
						<div class="cmt_bottom_re">
							<div class="first_cmt_na">대댓글입니다. .</div>
						</div>
					</div>
				</li>
			</div>

		</div>

	</div> -->
<div id="pagination">
			<c:if test="${fn:length(response.list) != 0}">
				<div class="pagefirst"
					<c:if test="${!response.pagination.existPrevPage}"> style="visibility: hidden;" </c:if>>
					<div class="prevArrow"></div>
					<div class="prevArrow" style="margin-left: -3px"></div>
				</div>
				<div class="prev" id="${response.pagination.startPage-1}"
					<c:if test="${!response.pagination.existPrevPage}"> style="visibility: hidden;" </c:if>>
					<div class="prevArrow"></div>
				</div>

				<c:choose>
					<c:when test="${searchdto.page eq null}">
						<c:forEach begin="1" end="${response.pagination.endPage}"
							varStatus="vs">
							<c:if test="${vs.index == 1}">
								<div class="pageNumber active">${vs.index}</div>
							</c:if>
							<c:if test="${vs.index != 1}">
								<div class="pageNumber">${vs.index}</div>
							</c:if>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<c:forEach begin="${response.pagination.startPage}"
							end="${response.pagination.endPage}" varStatus="vs">
							<c:if test="${vs.index == searchdto.page}">
								<div class="pageNumber active">${vs.index}</div>
							</c:if>
							<c:if test="${vs.index != searchdto.page}">
								<div class="pageNumber">${vs.index}</div>
							</c:if>
						</c:forEach>
					</c:otherwise>
				</c:choose>

				<div class="next" id="${response.pagination.endPage+1}"
					<c:if test="${!response.pagination.existNextPage}"> style="visibility: hidden;" </c:if>>
					<div class="nextArrow"></div>
				</div>
				<div class="pagelast" id="${response.pagination.totalPageCount}"
					<c:if test="${!response.pagination.existNextPage}"> style="visibility: hidden;" </c:if>>
					<div class="nextArrow"></div>
					<div class="nextArrow" style="margin-left: -6px"></div>
				</div>
			</c:if>
		</div>
		<!-- pagination -->

	<script>
    $(document).ready(function() {
      // 지도를 생성합니다    
      var mapContainer = document.getElementById('map');
      var mapOption = {
        center : new kakao.maps.LatLng(37.501306, 127.039659), // 지도의 중심좌표
        level : 2 // 지도의 확대 레벨
      };
      var map = new kakao.maps.Map(mapContainer, mapOption);
      // 주소-좌표 변환 객체를 생성합니다
      var geocoder = new kakao.maps.services.Geocoder();
      // 주소로 좌표를 검색합니다
      geocoder.addressSearch($("#sample6_address").text(), function(result, status) {
        // 정상적으로 검색이 완료됐으면 
        if (status === kakao.maps.services.Status.OK) {
          var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
          // 추출한 좌표를 통해 도로명 주소 추출
          let lat = result[0].y;
          let lng = result[0].x;
          getAddr(lat, lng);
          function getAddr(lat, lng) {
            let geocoder = new kakao.maps.services.Geocoder();
            let coord = new kakao.maps.LatLng(lat, lng);
            let callback = function(result, status) {
            
            }
            geocoder.coord2Address(coord.getLng(), coord.getLat(), callback);
          }
          // 결과값으로 받은 위치를 마커로 표시합니다
          var marker = new kakao.maps.Marker({
            map: map,
            position: coords
          });
          /* // 인포윈도우로 장소에 대한 설명을 표시합니다
          var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">장소</div>'
          });
          infowindow.open(map, marker); */
          // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
          map.setCenter(coords);
        }
      });
    });
  </script>
	<script src="/js/board/DeletePetplace.js"></script>

	<script>
    // user_id 값을 JavaScript로 가져와서 변수에 할당합니다.
    var user_id = '<%=user_id%>';

		// 페이지 로드 시 바로 실행되는 함수
		window.onload = function() {
			// user_id와 petplaceInfo.user_id를 비교하여 같으면 보이게, 다르면 숨기기
			if (user_id == '${petplaceInfo.user_id}') {
				document.getElementById("postActions").style.display = "block";
			} else {
				document.getElementById("postActions").style.display = "none";
			}
		};
	</script>
	<script>
$(document).ready(function() {
    // Other JavaScript code...

    // Function to insert the comment
    function insertComment() {
        var textarea = $("#commentcontents_comment textarea").val();
        var place_id = "${petplaceInfo.place_id}";
        var user_id = "${user_id}";

        $.ajax({
            type: 'post',
            url: '/insertcomment',
            dataType: 'json',
            data: {
                place_id: place_id,
                comment_id: 'place_id', // Modify this value according to your table structure
                user_id: user_id,
                comment_contents: textarea,
            },
            success: function(result) {
                // Handle the success response (if needed)
            },
            error: function(request, status, error) {
                // Handle the error response (if needed)
                console.log(error);
            }
        });
    }

    // Click event for the "등록" button
    $("#insertBtn").click(function() {
        insertComment();
    });
});
</script>

	
	
<script>
$.ajax({
	type: 'post',
	url: '/updatecomment',
	dataType: 'json',
	data: {
		place_id: $("#place_id").val(),
		order_detail_id: $("#order_detail_id").val(),
		user_id: $("#user_id").val(),
		contents: textarea,
		score:Number($("input[type='range']").val()),
		comment_img:$("#imageValue").val(),
		comment_id:$("#comment_id").val()
	},
	success: function(result) { // 결과 성공 콜백함수
		$("#insert_modal .modal_text").append(
			"<div>후기 수정이 완료되었습니다</div>"
		);
		$("#insert_modal").css("top", $(window).scrollTop() + "px");
		$("#insert_modal").css('display', 'block');
		$('#insert_modal').on('scroll touchmove mousewheel', function(event) {
			event.preventDefault();
			event.stopPropagation();
			return false;
		});
	},
	error: function(request, status, error) { // 결과 에러 콜백함수
		console.log(error);
	}
});//ajax end
</script>
</body>
</html>
