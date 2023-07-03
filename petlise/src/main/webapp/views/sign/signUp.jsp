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
    <link rel="stylesheet" href="/css/sign/signUp.css" />
    <title>Pet LiSe</title>
    <script src="/js/text.js"></script>
  </head>
  <body>
    <main class="container">
      <a href="/signin">
        <img src="/images/login-logo.png" alt="로고아이콘" />
      </a>
      <form class="signupForm">
        <div class="emailWrapper">
          <p>이메일</p>
          <div class="checkEmail">
            <input type="email" />
            <button type="button">중복확인</button>
          </div>
          <div class="CertificationEmail">
            <input type="text" />
            <button type="button">인증번호 발송</button>
          </div>
        </div>
        <div class="passwordWrapper">
          <p>비밀번호</p>
          <p>영문, 숫자를 포함한 8자리 이상의 비밀번호를 입력해주세요.</p>
          <input type="password" />
          <p>비밀번호 확인</p>
          <input type="password" class="checkPassword" />
        </div>
        <div class="nameWrapper">
          <p>이름</p>
          <input type="text" />
        </div>
        <div class="addressWrapper">
          <p>주소</p>
          <div class="post">
            <input type="text" readonly />
            <button>우표번호 검색</button>
          </div>
          <input type="text" class="address1" />
          <input type="text" class="address2" />
        </div>
        <div class="chooseAnimal">
          <p>어떤 동물과 함께 하시나요? (선택)</p>
          <input type="checkbox" name="animal" value="default" checked />
          <div class="inputWrapper">
            <label>
              <input type="checkbox" name="animal" id="animal1" value="dog" />
              <label for="animal1"></label> 댕댕이<img
                src="/images/dog-icon.svg"
                alt="강아지"
              />
            </label>
            <label>
              <input type="checkbox" name="animal" id="animal2" value="cat" />
              <label for="animal2"></label> 냥냥이<img
                src="/images/cat-icon.svg"
                alt="고양이"
              />
            </label>
          </div>
        </div>
        <div class="petWrapper">
          <p>반려동물 이름</p>
          <input type="text" class="petName" />
          <p>반려동물 나이</p>
          <input type="text" class="petAge" />
        </div>
        <ul>
          <li class="list">
            <label>
              <input type="checkbox" id="text1" />
              <label for="text1"></label>
              <p>이용약관 (필수)</p>
            </label>
            <div id="textBorder1"></div>
          </li>
          <li class="list">
            <label>
              <input type="checkbox" id="text2" />
              <label for="text2"></label>
              <p>개인정보 수집 및 이용에 대한 동의 (필수)</p>
            </label>
            <div id="textBorder2"></div>
          </li>
        </ul>
        <button class="submit">회원 가입</button>
      </form>
    </main>
  </body>
</html>