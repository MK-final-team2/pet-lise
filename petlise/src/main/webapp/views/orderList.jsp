<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>주문목록</title>
<link rel="stylesheet" href="/css/mypage/orderList.css">
<link rel="stylesheet" href="/css/style.css">
</head>
<body>
	<div class="myPage">마이페이지</div>
		<div class="menu">
			<div class="menu_List">
				<div class="menu_MemberInfo">
					<div><span class="material-symbols-outlined">person</span> 회원정보</div>
						<ul>
							<li><a href="#">회원정보 수정</a></li>
							<li><a href="#">회원 탈퇴</a></li>
						</ul>
				</div>
				<div class="menu_Community">
					<div><span class="material-symbols-outlined">pets</span> Pet LiSe</div>
						<ul>
							<li><a href="#">찜 레시피</a></li>
							<li><a href="#">좋아요 레시피</a></li>
							<li><a href="#">내가 쓴 레시피</a></li>
							<li><a href="#">내가 쓴 게시글</a></li>
							<li><a href="#">내가 쓴 댓글</a></li>
						</ul>
				</div>
				<div class="menu_Shop">
					<div><span class="material-symbols-outlined">shopping_cart</span> Pet LiSe Shop</div>
						<ul>
							<li><a href="#">주문목록</a></li>
							<li><a href="#">내가 쓴 후기</a></li>
						</ul>
				</div>
				<div class="menu_QnA">
					<div><span class="material-symbols-outlined">forum</span> 문의사항</div>
						<ul>
							<li><a href="#">내가 남긴 문의</a></li>
							<li><a href="#">상품 문의</a></li>
						</ul>
				</div>
			</div>			
		</div>
		
		<div class="contents">
			<div class="contents_Title">주문목록</div>
			<div class="contents_Table">
				<div class="table">
					<div class="table_Header">
						<div id="table_Header_Date">주문날짜/주문번호</div>
						<div id="table_Header_Product">주문상품</div>
						<div id="table_Header_Price">총포인트</div>
						<div id="table_Header_Status">주문현황</div>
						<div id="table_Header_Review">리뷰작성</div>
					</div>
<!--				<c:forEach class="table_Column"> --> 
			    <div class="table_Column">
				      <div id="table_Date">
				        <p>2023-06-28</p>
				        <p>dOG20230626A001</p>
				        <input type="button" id="cancel_Button" value="주문취소" />
				      </div>
			      <div id="table_Product">
			        <a href="#">
			          <span>상품 A</span>
			          <span>옵션설명옵션설명옵션설명</span>
			        </a>
			      </div>
				      <div id="table_Price">1000</div>
				      <div id="table_Status">배송중</div>
				      <div id="table_Review">
				        <span>작성하기</span>
				        <a href="#">
				          <span class="material-symbols-outlined" id="review_Img">
				            rate_review
				          </span>
			       		</a>
			      </div>
    		</div>
<!--				</c:forEach> -->
				</div>
			</div>
<!-- 
			<div class="contents_Page">
			
			</div>	
 -->					
		</div>

</body>
</html>