let link = document.location.pathname;

document.getElementById('nav').innerHTML += `
  <header class="header">
    <div class="container">
        <div class="row v-center">
            <!--로고-->
            <div class="header-item item-left">
                <div class="logo">
                    <a href="#" title="펫라이스">
                        <img src="yellow.png" alt="Logo">
                    </a>
                </div>
            </div>
            <!-- 메뉴시작 -->
            <div class="header-item item-center">
                <div class="menu-overlay">
                </div>
                <nav class="menu">
                    <ul class="menu-main">
                        <li class="menu-item-has-children">
                            <a href="#">전문가 레시피</a>
                            <div class="sub-menu mega-menu mega-menu-column-4">
                                
                                <div class="list-item">
                                <a href="#">    
                                <span class="title">이달의 레시피</span>
                                </a>
                                </div>
                            
                              <div class="list-item">
                                <div class="list-item-kind">
                                <span class="title">강아지</span>
                              </div>

                            <div class="list-container">
                                <div class="list-item-col">                                
                                <span class="subtitle"><a href="#">건강식</a></span>
                                <div class="list-item-recipe">
                                 <ul>
                                       <li><a href="#">다이어트식</a></li>
                                       <li><a href="#">병원식</a></li>
                                       <li><a href="#">이유식</a></li>
                                       <li><a href="#">영양식</a></li>
                                  </ul>
                                </div>
                                </div>
                                <div class="list-item-col">                                
                                    <span class="subtitle"><a href="#">일반식</a></span>
                                    <ul>
                                           <li><a href="#">습식</a></li>
                                           <li><a href="#">건식</a></li>
                                           <li><a href="#">생식</a></li>                                           
                                    </ul>
                                </div>
                                <div class="list-item-col">                                
                                    <span class="subtitle"><a href="#">간식</a></span>
                                    <ul>
                                           <li><a href="#">건조간식</a></li>
                                           <li><a href="#">화식간식</a></li>                                          
                                    </ul>
                                </div>
                                <div class="list-item-col">                                
                                    <span class="subtitle"><a href="#">기타</a></span>                                    
                                </div>
                            </div>                            
                        </div>
                        <div class="list-item">
                            <div class="list-item-kind">
                            <span class="title">고양이</span>
                            </div>

                        <div class="list-container">
                            <div class="list-item-col">                                
                            <span class="subtitle"><a href="#">건강식</a></span>
                            <ul>
                                   <li><a href="#">다이어트식</a></li>
                                   <li><a href="#">병원식</a></li>
                                   <li><a href="#">이유식</a></li>
                                   <li><a href="#">영양식</a></li>
                              </ul>
                            </div>
                            <div class="list-item-col">                                
                                <span class="subtitle"><a href="#">일반식</a></span>
                                <ul>
                                       <li><a href="#">습식</a></li>
                                       <li><a href="#">건식</a></li>
                                       <li><a href="#">생식</a></li>                                           
                                </ul>
                            </div>
                            <div class="list-item-col">                                
                                <span class="subtitle"><a href="#">간식</a></span>
                                <ul>
                                       <li><a href="#">건조간식</a></li>
                                       <li><a href="#">화식간식</a></li>                                          
                                </ul>
                            </div>
                            <div class="list-item-col">                                
                                <span class="subtitle"><a href="#">기타</a></span>                                    
                            </div>
                        </div>                            
                    </div>
                    </div>
                        </li>

                        <li class="menu-item-has-children">
                            <a href="#">나만의 레시피</a>
                            <div class="sub-menu mega-menu mega-menu-column-4">
                              <div class="list-item">
                                <a href="#">    
                                <span class="title">이달의 레시피</span>
                                </a>
                            </div>
                              <div class="list-item">
                                <div class="list-item-kind">
                                <span class="title">강아지</span>
                                </div>

                            <div class="list-container">
                                <div class="list-item-col">                                
                                <span class="subtitle"><a href="#">건강식</a></span>
                                <ul>
                                       <li><a href="#">다이어트식</a></li>
                                       <li><a href="#">병원식</a></li>
                                       <li><a href="#">이유식</a></li>
                                       <li><a href="#">영양식</a></li>
                                  </ul>
                                </div>
                                <div class="list-item-col">                                
                                    <span class="subtitle"><a href="#">일반식</a></span>
                                    <ul>
                                           <li><a href="#">습식</a></li>
                                           <li><a href="#">건식</a></li>
                                           <li><a href="#">생식</a></li>                                           
                                    </ul>
                                </div>
                                <div class="list-item-col">                                
                                    <span class="subtitle"><a href="#">간식</a></span>
                                    <ul>
                                           <li><a href="#">건조간식</a></li>
                                           <li><a href="#">화식간식</a></li>                                          
                                    </ul>
                                </div>
                                <div class="list-item-col">                                
                                    <span class="subtitle"><a href="#">기타</a></span>                                    
                                </div>
                            </div>                            
                        </div>
                        <div class="list-item">
                            <div class="list-item-kind">
                            <span class="title">고양이</span>
                            </div>

                        <div class="list-container">
                            <div class="list-item-col">                                
                            <span class="subtitle"><a href="#">건강식</a></span>
                               <ul>
                                   <li><a href="#">다이어트식</a></li>
                                   <li><a href="#">병원식</a></li>
                                   <li><a href="#">이유식</a></li>
                                   <li><a href="#">영양식</a></li>
                              </ul>
                            </div>
                            <div class="list-item-col">                                
                                <span class="subtitle"><a href="#">일반식</a></span>
                                <ul>
                                       <li><a href="#">습식</a></li>
                                       <li><a href="#">건식</a></li>
                                       <li><a href="#">생식</a></li>                                           
                                </ul>
                            </div>
                            <div class="list-item-col">                                
                                <span class="subtitle"><a href="#">간식</a></span>
                                <ul>
                                       <li><a href="#">건조간식</a></li>
                                       <li><a href="#">화식간식</a></li>                                          
                                </ul>
                            </div>
                            <div class="list-item-col">                                
                                <span class="subtitle"><a href="#">기타</a></span>                                    
                            </div>
                        </div>
                        </div>                            
                    </div>
                        </li>
                        <li class="menu-item-has-children">
                            <a href="#">라이스샵</a>
                        </li>
                        <li class="menu-item-has-children">
                            <a href="#">커뮤니티</a>
                            <div class="sub-menu mega-menu mega-menu-column-4">
                                <div class="list-item2">
                                  <a href="#">    
                                      <span class="title">펫플레이스</span>
                                  </a>
                                </div>
                                <div class="list-item2">
                                  <a href="#">    
                                      <span class="title">자유게시판</span>
                                  </a>
                                </div>
                              </div>
                          </li>
                          <li class="menu-item-has-children">
                              <a href="#">공지사항</a>
                              <div class="sub-menu mega-menu mega-menu-column-4">
                                <div class="list-item2">
                                  <a href="#">    
                                      <span class="title">공지사항</span>
                                  </a>
                                </div>
                                <div class="list-item2">
                                  <a href="#">    
                                      <span class="title">문의사항</span>
                                  </a>
                                </div>
                                <div class="list-item2">
                                  <a href="#">    
                                      <span class="title">이벤트</span>
                                  </a>
                                </div>
                                <div class="list-item2">
                                  <a href="#">    
                                      <span class="title">가족찾기</span>
                                  </a>
                              </div>
                            </div>
                        </li>
                    </ul>
                </nav>
            </div>
            <!-- menu end here -->
            <!--
            <div class="header-right">
                <div class="header-item item-right">
                    <a href="#">
                    <div class="header-icon-block">
                        <div class="header-icon-4"></div>
                        <div class="header-icon-text">
                            <p>회원가입</p>
                        </div>
                    </div>
                </a>
                <a href="#">
                    <div class="header-icon-block">
                        <div class="header-icon-5"></div>
                        <div class="header-icon-text-2">
                            <p>로그인</p>
                        </div>
                    </div>
                </a>
                </div>
            </div>
            -->

            
            <div class="header-right">
            <div class="header-item item-right">
                <a href="#">
                <div class="header-icon-block">
                    <div class="header-icon-1"></div>
                    <div class="header-icon-text">
                        <p>마이페이지</p>
                    </div>
                </div>
                </a>
                <a href="#">
                <div class="header-icon-block">
                    <div class="header-icon-2"></div>                        
                    <div class="header-icon-text">
                        <p>장바구니</p>
                    </div>
                </div>
                </a>
                <a href="#">
                <div class="header-icon-block">
                    <div class="header-icon-3"></div>
                    <div class="header-icon-text-1">
                        <p>로그아웃</p>
                    </div>
                </div>
            </a>
                </div>
            </div>
            
                

            </div>             
        </div>
</header>