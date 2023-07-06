const pwReg = /^(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{6,12}$/;

function regPw() {
  let pw = $('#password').val();

  if (!pwReg.test(pw)) {
    $('#pwRequired').text('비밀번호는 영문과 숫자를 포함한 6~12자리 입니다.');
    $('#pwRequired').addClass('required');
  } else {
    $('#pwRequired').text('');
    $('#pwRequired').removeClass('required');
  }
}

function checkPw() {
  let pw = $('#password').val();
  let checkpw = $('#checkPassword').val();

  if (pw !== checkpw) {
    $('#checkPwRequired').text('비밀번호가 일치하지 않습니다.');
    $('#checkPwRequired').addClass('required');
  } else {
    $('#checkPwRequired').text('');
    $('#checkPwRequired').removeClass('required');
  }
}

function check() {
  if (searchform.name.value.length < 2) {
    alert('이름 필수 입력 사항입니다.');
    searchform.name.focus();
    return false;
  }

  if (searchform.email.value == '') {
    alert('이메일 필수 입력 사항입니다.');
    searchform.email.focus();
    return false;
  }

  if (searchform.checkNum.value == 'false') {
    alert('이메일 인증 확인해주세요.');
    searchform.number.focus();
    return false;
  }
}
