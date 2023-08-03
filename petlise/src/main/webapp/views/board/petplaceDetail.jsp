<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%
  // 서버 사이드 코드에서 세션에서 user_id 값을 가져옵니다.
  String user_id = (String) session.getAttribute("user_id");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/css/board/petplaceDetail.css">
<link rel="stylesheet" href="/css/board/modal.css">
<link rel="stylesheet" href="/css/style.css" />
<link rel="stylesheet" href="/css/nav/nav.css" />
<link rel="stylesheet" href="/views/board/cogi/cogi.css" />
<title>펫플레이스 상세페이지</title>
<script src="/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=33ed4195d27024d4ef479d47cfa9ce6f&libraries=services&libraries=services"></script>


<script>
//후기 좋아요 버튼 클릭
    	$("#review_show").on('click','.review_likebtn',function(){
    		if("${user_id}"==""){
   				$("#login_modal").css("top", $(window).scrollTop()+"px");
				$("#login_modal").css('display', 'block');
				
				$('#login_modal').on('scroll touchmove mousewheel', function(event) {
					event.preventDefault();
					event.stopPropagation();
					return false;
				});
   			}//if
   			else{
	    		$(this).removeClass();
				$(this).addClass('review_likebtn_active');
				$(this).children(".likecnt").text(Number($(this).children(".likecnt").text())+1);
				
	    		$.ajax({
	    			type : 'post',
	    			url : '/likeup',
	    			dataType : 'json',
	    			data : {
	    				user_id : "${sessionScope.user_id}",
	    				review_id : $(this).siblings("input[type='hidden']").val()
	    			},
	    			success : function(result) { // 결과 성공 콜백함수
	    				
	    			},
	    		    error : function(request, status, error) { // 결과 에러 콜백함수
	    		        console.log(error)
	    		    }
	    		});//ajax end    		
   			}
    	});
    	
    	//후기 좋아요 취소
    	$("#review_show").on('click','.review_likebtn_active',function(){
    		if("${user_id}"==""){
   				$("#login_modal").css("top", $(window).scrollTop()+"px");
				$("#login_modal").css('display', 'block');
				
				$('#login_modal').on('scroll touchmove mousewheel', function(event) {
					event.preventDefault();
					event.stopPropagation();
					return false;
				});
   			}//if
   			else{
	    		$(this).removeClass();
				$(this).addClass('review_likebtn');
				$(this).children(".likecnt").text(Number($(this).children(".likecnt").text())-1);
	    		
	    		$.ajax({
	    			type : 'post',
	    			url : '/likedown',
	    			dataType : 'json',
	    			data : {
	    				user_id : "${sessionScope.user_id}",
	    				review_id : $(this).siblings("input[type='hidden']").val()
	    			},
	    			success : function(result) { // 결과 성공 콜백함수
	    			},
	    		    error : function(request, status, error) { // 결과 에러 콜백함수
	    		        console.log(error)
	    		    }
	    		});//ajax end
   			}
    	});
    	</script>

</head>

<body>
  <header>
    <div id="nav">
      <script src="/js/recipe/nav.js"></script>
    </div>
  </header>
  <div class="board_title">
    <a href="/petplaceMain">펫플레이스</a> <img src="/images/board/petplaceLogo.png" style="margin-left: -7px;" alt="펫플레이스이미지">
  </div>
  <div class="containers">
    <div class="contents">
      <div class="detail_title">${petplaceInfo.title}</div>
      <div class="detail_info">
        <div class="detail_writer">작성자 : ${petplaceInfo.user.name}</div>
        <div class="detail_date"><fmt:formatDate value="${petplaceInfo.petplace_created}" pattern="yyyy-MM-dd H:mm" /></div>
        <div class="detail_view">
          조회수 ${petplaceInfo.view_count}
        </div>	
        <div class="detail_like">♥<%-- ${petplaceInfo.like_count} --%></div>
      </div>
<div id=UD>
  <div class="post_actions" id="postActions" style=" display:none;" >
  <a class="editButton" id="editButton" href="/getUpdatepetplace?seq=${petplaceInfo.seq}">수정</a>
  <button class="deleteButton" id="deleteButton" data-placeid="${petplaceInfo.seq}" 
  onclick="clickModal(event)">삭제</button></div>
<div id="modal" ></div>
</div>


       <div class="petplacemap" > 펫플레이스 위치 </div>
      <div class="addressLine">
        <div id="sample6_address" >${petplaceInfo.petplace_address}</div>
       </div>
      
          <%@ include file="./cogi/cogi.html"%>
        
        
      <div id="map"></div>
      <button id="searchBtn" type="button" style="display: none;"></button>
      <div class="detail_content">
  ${petplaceInfo.petplace_contents}
  
  
  
</div>

<div>
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
          <span class="cmt_nick">깜둥</span>
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
      \
      <div class="first_cmt_na">댓글 내용입니다..</div>
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
          <span class="cmt_nick">자몽</span>
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
      <div class="first_cmt_na">대댓글입니다. .</div>
      </div>
    </div>
  </li>
</div>

</div>
      
 </div>     
    




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
    var user_id = '<%= user_id %>';

   

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

</body>
</html>
