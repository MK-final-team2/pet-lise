document.getElementById('category').innerHTML += `
  <div id="dropdown" class="dropdown">
  <div class="select">
    <span>카테고리 선택</span>
  </div>
  <input type="hidden" name="category" />
  <ul class="dropdown-menu">
    <li>공지</li>
    <li>이벤트</li>
  </ul>
  </div>
`;

$('#dropdown').click(function () {
  $(this).attr('tabindex', 1).focus();
  $(this).toggleClass('active');
  $(this).find('.dropdown-menu').slideToggle(300);
});
$('#dropdown').focusout(function () {
  $(this).removeClass('active');
  $(this).find('.dropdown-menu').slideUp(300);
});
$('#dropdown .dropdown-menu li').click(function () {
  $(this).parents('.dropdown').find('span').text($(this).text());
  $(this).parents('.dropdown').find('input').attr('value', $(this).text());
});