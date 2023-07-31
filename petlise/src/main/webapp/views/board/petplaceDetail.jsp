<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/css/board/petplaceDetail.css">
<link rel="stylesheet" href="/css/style.css" />
<link rel="stylesheet" href="/css/nav/nav.css" />
<link rel="stylesheet" href="/views/board/cogi/cogi.css" />
<title>펫플레이스 상세페이지</title>
<script src="/js/jquery-3.6.4.min.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=33ed4195d27024d4ef479d47cfa9ce6f&libraries=services&libraries=services"></script>
</head>

<body>
  <header>
    <div id="nav">
      <script src="/js/recipe/nav.js"></script>
    </div>
  </header>
  <div class="board_title">
    펫플레이스 <img src="/images/board/petplaceLogo.png" style="margin-left: -7px;" alt="펫플레이스이미지">
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
        <div class="detail_like">♥${petplaceInfo.like_count}</div>
      </div>
       <div class="petplacemap" > 펫플레이스 위치 </div>
      <div class="addressLine">
        <div id="sample6_address" >${petplaceInfo.p_address}</div>
        <div id="detailaddress">   ${petplaceInfo.p_detailaddress}</div>
      </div>
      
          <%@ include file="./cogi/cogi.html"%>
        
        
      <div id="map"></div>
      <button id="searchBtn" type="button" style="display: none;"></button>
      <div class="detail_content">
  ${petplaceInfo.petplace_contents}
  
  
  
</div>
      
      
        <div class="detail_likeButton">
          <button>좋아요</button>
        </div>
        <div class="detail_reportButton">
          <button>신고</button>
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
  
</body>
</html>
