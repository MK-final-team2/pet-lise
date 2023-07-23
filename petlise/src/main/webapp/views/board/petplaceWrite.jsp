<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="/css/board/boardWrite.css">
  <link rel="stylesheet" href="/css/style.css" />
  <link rel="stylesheet" href="/css/board/petplaceWrite.css" />
  <link href="https://cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet" />
  <link rel="stylesheet" href="/css/editor.css" />
  <link rel="stylesheet" href="/css/nav/nav.css" />
  <script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>
  <title>펫플레이스 등록</title>
  <script src="/js/jquery-3.6.4.min.js"></script>
  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=33ed4195d27024d4ef479d47cfa9ce6f&libraries=services&libraries=services"></script>
  <script>
    $(document).ready(function() {
      // Add click event listener to the "우편번호 검색" button
      $("#adressBtn").click(function() {
        sample6_execDaumPostcode(); // Call the address search function
      });

      $('#searchBtn').click(function() {
        // 버튼을 click했을때
        // 지도를 생성합니다    
        var mapContainer = document.getElementById('map');
        var mapOption = {
          center : new kakao.maps.LatLng(37.501306, 127.039659), // 지도의 중심좌표
          level : 3 // 지도의 확대 레벨
        };
        var map = new kakao.maps.Map(mapContainer, mapOption);
        // 주소-좌표 변환 객체를 생성합니다
        var geocoder = new kakao.maps.services.Geocoder();
        // 주소로 좌표를 검색합니다
        geocoder.addressSearch($('#sample6_address').val(), function(result, status) {
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
                if (status === kakao.maps.services.Status.OK) {
                  // 추출한 도로명 주소를 해당 input의 value값으로 적용
                  $('#sample6_address').val(result[0].road_address.address_name);
                }
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
    });
  </script>
</head>
<header>
  <div id="nav">
    <script src="/js/recipe/nav.js"></script>
  </div>
</header>
<body>
  <div id="container">
    <div class="board_title">
      <p>펫플레이스 글쓰기</p>
    </div>
     <!-- 글쓰기 Form -->
    <form action="/petplaceWrite" method="post">
    <p>제목</p>
    <div class="write_title">
      <input type="text" placeholder="제목" name="title" />
         
    </div>
    <p>카테고리</p>
    <div class="categoryWrap">
      <div id="category">
        <select name= "category" id="dropdown">
          <option value="카페"> 카페</option>
          <option value="식당"> 식당</option>
          <option value="산책"> 산책</option>
          <option value="숙소"> 숙소</option>
        </select>
      </div>
    </div>
    <div class="talkdog">
      <div id="map"></div>
      <button id="searchBtn" type="button" style="background-image: url('/images/board/talkdog.png'); background-size: contain; width: 150px; height: 150px;">&nbsp;</button>
      <p>
        노랑이(3세) <br> <br>주인님! 펫플레이스의 주소 검색 후<br> <br> 저를 누르면 위치를 보여드릴게요! <br> <br>
      </p>
    </div>
    <div class="adressWrap">
      <input type="text" id="sample6_postcode" placeholder="우편번호" style="padding-left: 16px;" />
      <button id="adressBtn" type="button">주소 검색</button>
    </div>
    <div class="addressLine">
      <input type="text" id="sample6_address" style="padding-left: 16px;" placeholder="주소" />
      <input type="text" id="sample6_detailAddress" placeholder="상세주소" style="padding-left: 16px;" />
    </div>
    <div class="editorWrap">
      <div id="editor">
        <p>내용을 입력해주세요</p>
        <br />
        <p>* 저작권 침해, 음란, 청소년 유해물, 기타 위법자료 등을 게시할 경우 게시물은 경고 없이 삭제됩니다.</p>
      </div>
      <button class="writeButton" onclick="return edit()">등록하기</button>
    </form>
    </div>
  </div>
  <script src="/js/editor.js"></script>
  <script src="/js/postcode.js"></script>
   <script src="/js/board/editPetplace.js"></script>
</body>
</html>
