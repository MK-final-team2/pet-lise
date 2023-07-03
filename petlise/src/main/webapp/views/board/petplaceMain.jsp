<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/css/board/petplaceMain.css">
<!--      <link rel="stylesheet" href="/css/style.css" />  -->
    <title>펫플레이스메인</title>
    <!--  <script src="/js/jquery-3.6.4.min.js"></script>
        <script>
      $(document).ready(function () {});
    </script>  -->
</head>
<body>
    
    <div id = "container">
        

        <!-- 본문 -->
        <div class="board_wrap">
            <div class="board_title">
                펫플레이스
                <img src="/images/board/petplaceLogo.png" style="margin-left: -7px;" alt="펫플레이스이미지">

                
            </div> 
            
            <div class="search-container">
                <div class="searchbox">
                    <button type="submit"><img src="/images/board/Vector.png" alt="검색"></button>
                    <input type="text" placeholder="검색">
                </div>
              </div>
            
                <div class="board_main_category_btn1">
                    <button><a href="boardMain.jsp">자유게시판</a></button>
                </div>
                <div class="board_main_category_btn2">
                    <button><a href="petplaceMain.jsp"> 펫플레이스</a></button>
                
            </div>
            <div class="petplace_category">
            <div>
                <a class="on" href="카페 링크">동반카페</a>
              </div>
              <div>
                <a href="식당 링크">동반식당</a>
              </div>
              <div>
                <a href="산책 링크">동반산책</a>
              </div>
              <div>
                <a href="숙소 링크">동반숙소</a>
              </div>
            </div>
            <div class="bt_wrap">
                <a href="post.html" class="on">글쓰기</a>
            </div>
            <div class="board_list_wrap">
                <div class="board_list">
                    <div class="top">
                        <div class="title">제목</div>
                        <div class="writer">작성자</div>
                        <div class="date">날짜</div>
                        <div class="view">조회</div>
                        <div class="like">추천</div>
                    </div>
                    <div>
                        <div class="title"><a href="#">라떼와 산책중에 바닐라라떼가 맛있는 카페 발견!
                        </a>
                        <div class="comment-count">[13]</div></div> <!-- 댓글 수 추가 -->
                        <div class="writer">라뗴눈나 </div>
                        <div class="date">2021.10.22</div>
                        <div class="view">999</div>
                        <div class="like">1120</div>
                    </div>
                    <div>
                        <div class="title"><a href="#">선선한 카페 테라스에서 반려견과 함께 여유 즐기고 왔습니다.
                        </a>
                        <div class="comment-count">[200]</div></div> <!-- 댓글 수 추가 -->
                        <div class="writer">아아메독 </div>
                        <div class="date">2023.2.22</div>
                        <div class="view">1999</div>
                        <div class="like">11120</div>
                    </div>
                    <div>
                        <div class="title"><a href="#">제목이 공백2개포함38개까지 들어갑니다짱짱짱짱짱짱짱짱짱짱짱짱짱짱짱짱짱짱
                        </a>
                        <div class="comment-count">[5]</div></div> <!-- 댓글 수 추가 -->
                        <div class="writer">강형욱 </div>
                        <div class="date">2021.10.22</div>
                        <div class="view">999</div>
                        <div class="like">1120</div>
                    </div>
                    <div>
                        <div class="title"><a href="#">제목이 공백2개포함38개까지 들어갑니다짱짱짱짱짱짱짱짱짱짱짱짱짱짱짱짱짱짱
                        </a>
                        <div class="comment-count">[5]</div></div> <!-- 댓글 수 추가 -->
                        <div class="writer">강형욱 </div>
                        <div class="date">2021.10.22</div>
                        <div class="view">999</div>
                        <div class="like">1120</div>
                    </div>
                    <div>
                        <div class="title"><a href="#">제목이 공백2개포함38개까지 들어갑니다짱짱짱짱짱짱짱짱짱짱짱짱짱짱짱짱짱짱
                        </a>
                        <div class="comment-count">[5]</div></div> <!-- 댓글 수 추가 -->
                        <div class="writer">강형욱 </div>
                        <div class="date">2021.10.22</div>
                        <div class="view">999</div>
                        <div class="like">1120</div>
                    </div>
                    <div>
                        <div class="title"><a href="#">제목이 공백2개포함38개까지 들어갑니다짱짱짱짱짱짱짱짱짱짱짱짱짱짱짱짱짱짱
                        </a>
                        <div class="comment-count">[5]</div></div> <!-- 댓글 수 추가 -->
                        <div class="writer">강형욱 </div>
                        <div class="date">2021.10.22</div>
                        <div class="view">999</div>
                        <div class="like">1120</div>
                    </div>
                    <div>
                        <div class="title"><a href="#">제목이 공백2개포함38개까지 들어갑니다짱짱짱짱짱짱짱짱짱짱짱짱짱짱짱짱짱짱
                        </a>
                        <div class="comment-count">[5]</div></div> <!-- 댓글 수 추가 -->
                        <div class="writer">강형욱 </div>
                        <div class="date">2021.10.22</div>
                        <div class="view">999</div>
                        <div class="like">1120</div>
                    </div>
                    <div>
                        <div class="title"><a href="#">제목이 공백2개포함38개까지 들어갑니다짱짱짱짱짱짱짱짱짱짱짱짱짱짱짱짱짱짱
                        </a>
                        <div class="comment-count">[5]</div></div> <!-- 댓글 수 추가 -->
                        <div class="writer">강형욱 </div>
                        <div class="date">2021.10.22</div>
                        <div class="view">999</div>
                        <div class="like">1120</div>
                    </div>
                    
                    
                </div>
                
                <div class="board_page">
                    <a href="#" class="bt first"></a>
                    <a href="#" class="bt prev"></a>
                    <a href="BoardTest1.html" class="num on">1</a>
                    <a href="BoardTest1.html" class="num">2</a>
                    <a href="#" class="num">3</a>
                    <a href="#" class="num">4</a>
                    <a href="#" class="num">5</a>
                    <a href="#" class="num">6</a>
                    <a href="#" class="num">7</a>
                    <a href="#" class="num">8</a>
                    <a href="#" class="num">9</a>
                    <a href="#" class="num">10</a>
                    <a href="#" class="bt next"></a>
                    <a href="#" class="bt last"></a>
                </div>
        
                <div></div>
            </div>
        </div>




        <!-- 강아지 이미지 부분-->
        <div class="dogImg_F">
            <img src="/images/board/dogthird.png" alt="dogImg_F">
        </div>
        <div class="dogImg_S">
            <img src="/images/board/dogfourth.png" alt="dogImg_S">
        </div>
        <div class="dogImg_Up">
            <img src="/images/board/searchdog.png" alt="dogImg_up">
        </div>
        

        
        
    </div>
</body>
</html>