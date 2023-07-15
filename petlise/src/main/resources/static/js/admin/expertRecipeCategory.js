document.getElementById('dropdown').innerHTML += `
  <div class="select">
    <span>카테고리 선택</span>
  </div>
  <input type="hidden" name="main_category" />
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
  $(this).parents('.dropdown').find('input').attr('value', $(this).text());
});

$('.dropdown-menu li').click(function () {
  let value = $(this).text();
  let defaultCate = $('#dropdown2 .select span').text('카테고리 선택');
  let changValue = $('.smallCateName').attr('value', '');

  if (value === '일반식') {
    $('#smallCategory').css('display', 'block');
    defaultCate
    changValue
    document.getElementById('dropdown-menu').innerHTML = `
      <li onclick="getValue(event)">습식</li>
      <li onclick="getValue(event)">건식</li>`;
  } else if (value === '건강식') {
    $('#smallCategory').css('display', 'block');
    changValue
    defaultCate
    document.getElementById('dropdown-menu').innerHTML = `
      <li onclick="getValue(event)">다이어트식</li>
      <li onclick="getValue(event)">병원식</li>
      <li onclick="getValue(event)">영양식</li>`;
  } else if (value === '간식') {
    $('#smallCategory').css('display', 'block');
    changValue
    defaultCate
    document.getElementById('dropdown-menu').innerHTML = `
      <li onclick="getValue(event)">건조간식</li>
      <li onclick="getValue(event)">화식간식</li>`;
  } else {
    $('#smallCategory').css('display', 'none');
    $('#smallCategory').removeClass('active');
    defaultCate
    changValue
  }
});

$('#dropdown2').click(function () {
  $(this).attr('tabindex', 1).focus();
  $(this).toggleClass('active');
  $(this).find('.dropdown-menu').slideToggle(300);
});
$('#dropdown2').focusout(function () {
  $(this).removeClass('active');
  $(this).find('.dropdown-menu').slideUp(300);
});

function getValue(event) {
   let e = event.target;
   let value = $(e).text()
   $('#dropdown2 .select span').text(value);
   $('.smallCateName').val(value)
}
