<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.*, java.text.*"%>
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
<link rel="stylesheet" href="/css/shop/modal.css" />
<link rel="stylesheet" href="/css/admin/aside.css" />
<link rel="stylesheet" href="/css/admin/editShopProduct.css" />
<link rel="stylesheet" href="/css/admin/expertRecipeCategory.css" />
<link href="https://cdn.quilljs.com/1.3.6/quill.snow.css"
	rel="stylesheet" />
<script src="https://cdn.quilljs.com/1.3.6/quill.js"></script>
<script src="http://code.jquery.com/jquery-latest.min.js"></script>
<title>Pet LiSe</title>
</head>
<body>
	<div class="container">
		<div id="asideMenu"></div>

		<main>
			<p>라이스샵 상품등록</p>
			<div id="layout">
				<div class="edit_images">
					<div class="fileWrap">
						<p>상품 대표이미지</p>
						<label for="file1"> <img id='fileimg1' src="/images/image-icon.svg"
							alt="이미지아이콘" />
						</label> 
						<input type="file" id="file1" />
					</div>
					<div class="fileWrap">
						<p>상품 상세이미지</p>
						<label for="file2"> <img id='fileimg2' src="/images/image-icon.svg"
							alt="이미지아이콘" />
						</label> <input type="file" id="file2" />
					</div>
				</div>

				<div class="edit_detail">
				
					<div class="category">
						<span>카테고리</span>
					</div>
					<div id="category_container">
	
						<div class="categoryWrap">
							<div class="category">
								<div id="dropdown" class="dropdown" style="width:240px;"></div>
							</div><!-- 대분류 -->
	
							<div class="category" id="smallCategory">
								<div id="dropdown2" class="dropdown" style="width:240px;">
									<div class="select">
										<span>상품 카테고리 선택</span>
									</div>
									<input type="hidden" id="product_categpry" />
									<ul id="dropdown-menu" class="dropdown-menu"></ul>
								</div>
							</div>
						</div><!-- 중분류 -->
					</div><!-- category_container -->

					<div class="Wrapper">
						<p>상품코드</p>
						<input type="text" readonly="readonly" placeholder="상품등록시 자동 생성됩니다."/>
					</div>
					<div class="Wrapper">
						<p>상품명</p>
						<input type="text" id="product_name" />
					</div>
					<div class="Wrapper">
						<p>상품가격</p>
						<input type="number" id="product_price"/>
					</div>
					<div class="Wrapper">
						<p>상품재고</p>
						<input type="number" id="product_quatity" />
					</div>
					
					<% Date date = new Date(); 
						SimpleDateFormat simple = new SimpleDateFormat("yyyy-MM-dd");
						String today = simple.format(date);
					%>
					
					<div class="Wrapper">
						<p>상품 등록일</p>
						<input type="date" id="product_regtime" min="<%=today%>"/>
						<p style="font: var(--body14);">* 상품은 등록일 이후부터 상품목록에 노출됩니다.</p>
					</div>
				</div>
			</div>
			<!-- layout end -->

			<div id="btndiv">
				<button id="editButton">등록하기</button>
			</div>
			
			
		</main>
	</div>

	<div class="modal" id="confirm_modal">
		<div class="modal_contents">
			<div class="modal_text"></div>
			<div class="modal_btn">
			<button class="cancelbtn">취소</button>
			<button class="createbtn">등록</button>
			</div>
		</div>
	</div>

	<div class="modal" id="okaymodal">
		<div class="modal_contents">
			<div class="modal_text">상품이 등록되었습니다.<br>
			라이스샵 관리페이지로 이동합니다.</div>
			<div class="modal_btn"><button class="okaybtn">확인</button></div>
		</div>
	</div>

	<div class="modal" id="alertmodal">
		<div class="modal_contents">
			<div class="modal_text"></div>
			<div class="modal_btn"><button class="okaybtn">확인</button></div>
		</div>
	</div>
	

	<script src="/js/admin/aside.js"></script>
	<script src="/js/shop/shopCategory.js"></script>
	<script src="/js/shop/shopFileSend.js"></script>
</body>
</html>
