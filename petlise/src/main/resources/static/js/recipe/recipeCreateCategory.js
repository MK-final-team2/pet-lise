document.getElementById('dropdown').innerHTML += `
  <div class="select">
    <span>카테고리 선택</span>
  </div>
  <input type="hidden" />
  <ul class="dropdown-menu">
    <li>일반식</li>
    <li>건강식</li>
    <li>다이어트식</li>
    <li>간식</li>
    <li>기타</li>
  </ul>
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
  $(this).parents('.dropdown').find('input').attr('value');
});

$('.dropdown-menu li').click(function () {
  let value = $(this).text();

  if (value === '일반식') {
    $('#smallCategory').css('display', 'block');
    document.getElementById('dropdown-menu').innerHTML += `
    <li>습식</li>
    <li>건식</li>
    <li>생식</li>`;
  } else if (value === '건강식') {
    $('#smallCategory').css('display', 'block');
    document.getElementById('dropdown-menu').innerHTML += `
    <li>다이어트식</li>
    <li>병원식</li>
    <li>이유식</li>
    <li>영양식</li>
    `;
  } else if (value === '간식') {
    $('#smallCategory').css('display', 'block');
    document.getElementById('dropdown-menu').innerHTML += `
      <li>건조간식</li>
      <li>화식간식</li>
    `;
  }

  $('#dropdown2').click(function () {
    $(this).attr('tabindex', 1).focus();
    $(this).toggleClass('active');
    $(this).find('.dropdown-menu').slideToggle(300);
  });
  $('#dropdown2').focusout(function () {
    $(this).removeClass('active');
    $(this).find('.dropdown-menu').slideUp(300);
  });
  $('#dropdown2 .dropdown-menu li').click(function () {
    $(this).parents('.dropdown').find('span').text($(this).text());
    $(this).parents('.dropdown').find('input').attr('value');
  });
});
