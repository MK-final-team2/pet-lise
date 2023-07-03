let link = document.location.pathname;

document.getElementById('asideMenu').innerHTML += `
  <img src="/images/login-logo.png" alt="로고" />
  <ul class="menuWrapper">
    <li onClick="location.href='./dashboard.html'" style="background:${
      link === '/petlise/src/main/webapp/views/admin/dashboard.html'
        ? '#181818'
        : ''
    } ;">
      <embed
        src="/images/dashboard-icon.svg"
        alt="대시보드아이콘"
      />
      <span>대시보드</span>
    </li>
    <li onClick="location.href='./usermanagement.html'">
      <embed
        src="/images/userManagement-icon.svg"
        alt="사용자관리아이콘"
      />
      <span>사용자 관리</span>
    </li>
    <ul class="ul">
      <li>
        <embed
        src="/images/expertRecipe-icon.svg"
        alt="전문가레시피아이콘"
        />
        <span>전문가 레시피 관리</span>
      </li>
      <li onClick="location.href='./expertrecipemanagement.html'">강아지</li>
      <li onClick="location.href='./expertrecipemanagement-cat.html'">고양이</li>
      </ul>
    <ul class="ul">
      <li>
        <embed
        src="/images/myRecipe-icon.svg"
        alt="나만의레시피아이콘"
        />
        <span>나만의 레시피 관리</span>
      </li>
      <li onClick="location.href='./myrecipemanagement.html'">강아지</li>
      <li onClick="location.href='./myrecipemanagement-cat.html'">고양이</li>
    </ul>
    <li onClick="location.href='./shopmanagement.html'">
      <embed
        src="/images/shop-icon.svg"
        alt="라이스샵아이콘"
      />
      <span>라이스샵 관리</span>
    </li>
    <li onClick="location.href='./paydeliverymanagement.html'">
      <embed
        src="/images/delivery-icon.svg"
        alt="배달아이콘"
      />
      <span>결제/배송 관리</span>
    </li>
    <li onClick="location.href='./boardmanagement.html'">
      <embed
        src="/images/board-icon.svg"
        alt="자유게시판아이콘"
      />
      <span>자유게시판 관리</span>
    </li>
    <li onClick="location.href='./petplacemanagement.html'">
      <embed
        src="/images/place-icon.svg"
        alt="펫플레이스아이콘"
      />
      <span>펫플레이스 관리</span>
    </li>
    <li onClick="location.href='./announcement.html'">
      <embed
        src="/images/announcement-icon.svg"
        alt="공지사항아이콘"
      />
      <span>공지사항 관리</span>
    </li>
  </ul>
`;
