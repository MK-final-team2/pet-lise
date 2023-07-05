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
						<label for="file"> <img src="/images/image-icon.svg"
							alt="이미지아이콘" />
						</label> <input type="file" id="file" />
					</div>
					<div class="fileWrap">
						<p>상품 상세이미지</p>
						<label for="file"> <img src="/images/image-icon.svg"
							alt="이미지아이콘" />
						</label> <input type="file" id="file" />
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
										<span>카테고리 선택</span>
									</div>
									<input type="hidden" />
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
						<input type="text" />
					</div>
					<div class="Wrapper">
						<p>상품가격</p>
						<input type="number" />
					</div>
					<div class="Wrapper">
						<p>상품재고</p>
						<input type="number" />
					</div>
					<div class="Wrapper">
						<p>상품등록일</p>
						<input type="date" />
					</div>
				</div>
			</div>
			<!-- layout end -->

			<div id="btndiv">
				<button class="editButton">등록하기</button>
			</div>
		</main>
	</div>

	<script src="/js/admin/aside.js"></script>
	<script src="/js/shop/shopCategory.js"></script>
</body>
</html>
