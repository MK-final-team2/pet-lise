<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
    <link rel="stylesheet" href="css/shop/shopDetail.css" />
    <link rel="icon" href="/images/favicon.ico" />
	<link rel="apple-touch-icon" href="/images/favicon.ico" />
    <title> Pet LiSe </title>
    <script src="/js/jquery-3.6.4.min.js"></script>
    <script>
    $(document).ready(function(){

    });
    </script>
</head>
<body>
    <div id='layout'>
        <div id="categorys">
            <p>라이스샵 > 강아지 > 사료</p>
        </div> <!-- categorys -->

        <div id="detail_img_info">
            <div id="img"></div>
            <div id="info">
                <p>상품명</p>
                <table>
                    <tbody>
                        <tr><td>가격</td><td><img src="/images/shop/shopdetail/coin2.svg" alt="coin"/>10,000</td></tr>    
                        <tr><td>배송비</td><td><img src="/images/shop/shopdetail/coin2.svg" alt="coin"/>2,500 / 포인트 선결제</td></tr>    
                        <tr><td>상품코드</td><td>abcdefg123456</td></tr>    
                        <tr><td>수량</td><td>
                            <select name="select_number" id="select_number">
                                <option value="1">1</option>
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                            </select>
                        </td></tr>
                    </tbody>
                </table>
                <div id="info_btns">
                    <button id="cartbtn">장바구니담기</button>
                    <button id="buybtn">바로 구매하기</button>
                </div>
            </div>
        </div> <!-- detail_img_info -->

        <div class="detail_tab">
            <div class="tab_active"><img src="/images/shop/shopdetail/pawprint_black.svg">상품상세정보</div>
            <div>상품후기</div>
            <div>상품안내</div>
        </div>

        <div id="product_detail"></div>
        
        <div class="detail_tab">
            <div>상품상세정보</div>
            <div class="tab_active"><img src="/images/shop/shopdetail/pawprint_black.svg">상품안내</div>
            <div>상품후기</div>
        </div>

        <div id="product_infomation">
            <h4>배송안내</h4>
            <p>
                ▪ 배송방법 : 순차배송<br>
                ▪ 배송비 : 2,500원 / 포인트 선결제<br>
                <span class="tab">&#9;</span>- 배송비 포함하여 전액 포인트 결제를 진행해 주셔야 합니다.<br>
                ▪ 배송기간 : 결제 완료 후 2~3일 이내 도착<br>
                <span class="tab">&#9;</span>- 도서 산간 지역은 하루가 더 소요될 수 있습니다.<br>                
            </p>
            <h4>주의사항</h4>
            <p>
                라이스샵은 수익을 창출하지 않는 회원 전용 포인트샵으로 운영되며 라이스샵 내 모든 상품은 교환 및 반품이 불가합니다.<br>
                구매 시 신중한 선택을 부탁드리며, 기타 문의사항은 문의게시판을 이용해주시기 바랍니다.
            </p>
        </div>
        
        <div class="detail_tab">
            <div>상품상세정보</div>
            <div>상품안내</div>
            <div class="tab_active"><img src="/images/shop/shopdetail/pawprint_black.svg">상품후기</div>
        </div>

        <div id="product_review">
            <div id="review_title">
                <div>
                    <h4>상품후기</h4>
                    <p>
                        이 상품을 구매한 회원님들의 후기입니다.<br>
                        구매한 제품에 대한 후기는 마이페이지 구매목록에서 남기실 수 있습니다.
                    </p>
                </div>
                <button>구매목록가기</button>
            </div>

            <div id="review_statistic">
                <div id="score">
                    <span>구매고객 만족도</span>
                    <span>4.5점</span>
                    <div>
                        <img src="/images/shop/shopdetail/borns5_line.svg"/>
                        <span id="fillscore" style="width: 90%;">
                            <img src="/images/shop/shopdetail/borns5_fill.svg"/>
                        </span>
                    </div>
                </div>
                <div id="count">
                    <span>작성 후기 건수</span>
                    <span>10건</span>
                </div>
                
                <div id="score_count">
                    <div id="score_box">
                        <div class="scores">
                            <div class="score_score">5점</div>
                            <div class="graph_back">
                                <div class="graph_color" style="width:50%;"></div>
                            </div>
                            <div class="score_cnt">5건 (50%)</div>
                        </div>
                        <div class="scores">
                            <div class="score_score">4점</div>
                            <div class="graph_back">
                                <div class="graph_color" style="width:30%;"></div>
                            </div>
                            <div class="score_cnt">3건 (30%)</div>
                        </div>
                        <div class="scores">
                            <div class="score_score">3점</div>
                            <div class="graph_back">
                                <div class="graph_color" style="width:20%;"></div>
                            </div>
                            <div class="score_cnt">2건 (20%)</div>
                        </div>
                        <div class="scores">
                            <div class="score_score">2점</div>
                            <div class="graph_back">
                                <div class="graph_color" style="width:0%;"></div>
                            </div>
                            <div class="score_cnt">0건 (0%)</div>
                        </div>
                        <div class="scores">
                            <div class="score_score">1점</div>
                            <div class="graph_back">
                                <div class="graph_color" style="width:0%;"></div>
                            </div>
                            <div class="score_cnt">0건 (0%)</div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- review_statistic end -->
            
            <div class="review_container" style="border-top: 1px solid var(--light-sub, #FBC252);">
                <div class="review_info">
                    <div class="user_info">
                        <div class="box" style="background: #BDBDBD;">
                            <img class="profile" src="https://images.mypetlife.co.kr/content/uploads/2021/10/22152410/IMG_2087-scaled-e1634883900174.jpg">
                        </div>
                        <span>자몽</span>
                        <span>2023.06.28</span>
                    </div><!--유저정보영역-->
                    <div class="review_contents">
                        <div class="score">
                            <img class="score_fill" src="/images/shop/shopdetail/bone_fill.svg">
                            <img class="score_fill" src="/images/shop/shopdetail/bone_fill.svg">
                            <img class="score_fill" src="/images/shop/shopdetail/bone_fill.svg">
                            <img class="score_fill" src="/images/shop/shopdetail/bone_fill.svg">
                            <img class="score_fill" src="/images/shop/shopdetail/bone_fill.svg">
                            <span>5점</span>
                        </div>
                        <div class="contents">
                            <p>
                                아이가 엄청 좋아해요 ㅎㅎ 포인트로 사본건데 너무 좋아해서 값 주고도 구입할 것 같습니다 :) <br>
                                앞으로도 포인트 열심히 모아봐야겠어요!!
                            </p>
                        </div><!--후기내용-->
                    </div><!--후기영역-->
                </div><!--정보/후기영역-->

                <div class="review_img_box">
                    <img class="review_img" src="https://images.mypetlife.co.kr/content/uploads/2021/10/22152410/IMG_2087-scaled-e1634883900174.jpg">
                </div>

                <div class="review_btns_my">
                    <button id="editbtn"><span class="material-symbols-outlined">edit</span></button>
                    <button id="deletebtn"><span class="material-symbols-outlined">delete</span></button>
                </div>
            </div><!--리뷰1개-->

            <div class="review_container">
                <div class="review_info">
                    <div class="user_info">
                        <div class="box" style="background: #BDBDBD;">
                            <img class="profile" src="https://image.dongascience.com/Photo/2020/03/5bddba7b6574b95d37b6079c199d7101.jpg">
                        </div>
                        <span>몽자</span>
                        <span>2023.06.28</span>
                    </div><!--유저정보영역-->
                    <div class="review_contents">
                        <div class="score">
                            <img class="score_fill" src="/images/shop/shopdetail/bone_fill.svg">
                            <img class="score_line" src="/images/shop/shopdetail/bone_line.svg">
                            <img class="score_line" src="/images/shop/shopdetail/bone_line.svg">
                            <img class="score_line" src="/images/shop/shopdetail/bone_line.svg">
                            <img class="score_line" src="/images/shop/shopdetail/bone_line.svg">
                            <span>1점</span>
                        </div>
                        <div class="contents">
                            <p>
                                주인님이 별로라고 화내시네요ㅋㅋ큐ㅠㅠ 주인님 의사 반영하여 1점......
                                주인님이 별로라고 화내시네요ㅋㅋ큐ㅠㅠ 주인님 의사 반영하여 1점......
                                주인님이 별로라고 화내시네요ㅋㅋ큐ㅠㅠ 주인님 의사 반영하여 1점......
                                주인님이 별로라고 화내시네요ㅋㅋ큐ㅠㅠ 주인님 의사 반영하여 1점......
                                주인님이 별로라고 화내시네요ㅋㅋ큐ㅠㅠ 주인님 의사 반영하여 1점......
                                주인님이 별로라고 화내시네요ㅋㅋ큐ㅠㅠ 주인님 의사 반영하여 1점......
                                주인님이 별로라고 화내시네요ㅋㅋ큐ㅠㅠ 주인님 의사 반영하여 1점......
                                주인님이 별로라고 화내시네요ㅋㅋ큐ㅠㅠ 주인님 의사 반영하여 1점......
                                주인님이 별로라고 화내시네요ㅋㅋ큐ㅠㅠ 주인님 의사 반영하여 1점......
                                주인님이 별로라고 화내시네요ㅋㅋ큐ㅠㅠ 주인님 의사 반영하여 1점......
                                주인님이 별로라고 화내시네요ㅋㅋ큐ㅠㅠ 주인님 의사 반영하여 1점......
                                주인님이 별로라고 화내시네요ㅋㅋ큐ㅠㅠ 주인님 의사 반영하여 1점......
                                주인님이 별로라고 화내시네요ㅋㅋ큐ㅠㅠ 주인님 의사 반영하여 1점......
                            </p>
                        </div><!--후기내용-->
                    </div><!--후기영역-->
                </div><!--정보/후기영역-->

                <div class="review_img_box">
                    <img class="review_img" src="https://image.dongascience.com/Photo/2020/03/5bddba7b6574b95d37b6079c199d7101.jpg">
                </div>

                <div class="review_btns_others">
                    <button id="likebtn"><span class="material-symbols-outlined">thumb_up</span></button>
                    <span>10</span>
                </div>
            </div><!--리뷰1개-->

            <div id="pages">
                <a href="" class="page_active">1</a>
                <a href="">2</a>
                <a href="">3</a>
                <a href="">4</a>
            </div>

        </div>

    </div> <!-- Layout -->
</body>
</html>