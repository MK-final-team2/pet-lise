let link = document.location.pathname;

document.getElementById('menu').innerHTML += `
  <img src="../../../resources/static/images/login-logo.png" alt="로고" />
  <ul class="menuWrapper">
    <li onClick="location.href='./dashboard.html'"  style="background:${
      link === '/petlise/src/main/webapp/views/admin/dashboard.html'
        ? '#181818'
        : ''
    } ;">
      <embed
        src="../../../resources/static/images/dashboard-icon.svg"
        alt="대시보드아이콘"
      />
      <span>대시보드</span>
    </li>
    <li onClick="location.href='./userManagement.html'">
      <embed
        src="../../../resources/static/images/userManagement-icon.svg"
        alt="사용자관리아이콘"
      />
      <span>사용자 관리</span>
    </li>
    <li onClick="location.href='./expertRecipeManagement.html'">
      <embed
        src="../../../resources/static/images/expertRecipe-icon.svg"
        alt="전문가레시피아이콘"
      />
      <span>전문가 레시피 관리</span>
    </li>
    <li onClick="location.href='./myRecipeManagement.html'">
      <embed
        src="../../../resources/static/images/myRecipe-icon.svg"
        alt="나만의레시피아이콘"
      />
      <span>나만의 레시피 관리</span>
    </li>
    <li onClick="location.href='./shopManagement.html'">
      <embed
        src="../../../resources/static/images/shop-icon.svg"
        alt="라이스샵아이콘"
      />
      <span>라이스샵 관리</span>
    </li>
    <li onClick="location.href='./payDeliveryManagement.html'">
      <embed
        src="../../../resources/static/images/delivery-icon.svg"
        alt="배달아이콘"
      />
      <span>결제/배송 관리</span>
    </li>
    <li onClick="location.href='./boardManagement.html'">
      <embed
        src="../../../resources/static/images/board-icon.svg"
        alt="자유게시판아이콘"
      />
      <span>자유게시판 관리</span>
    </li>
    <li onClick="location.href='./petPlaceManagement.html'">
      <embed
        src="../../../resources/static/images/place-icon.svg"
        alt="펫플레이스아이콘"
      />
      <span>펫플레이스 관리</span>
    </li>
    <li onClick="location.href='./announcement.html'">
      <embed
        src="../../../resources/static/images/announcement-icon.svg"
        alt="공지사항아이콘"
      />
      <span>공지사항 관리</span>
    </li>
  </ul>
`;
