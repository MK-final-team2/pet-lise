<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="icon" href="/images/favicon.ico" />
	<link rel="apple-touch-icon" href="/images/favicon.ico" />
    <link rel="stylesheet" href="css/shop/orderEnd.css" />
    <link rel="stylesheet" href="/css/style.css" />
    <title>Pet LiSe</title>
    <script src="/js/jquery-3.6.4.min.js"></script>
    <script>
      $(document).ready(function () {});
    </script>
  </head>
  <body>
    <div id="layout">
      <div id="title">
        <div id="first">
          <img src="/images/shop/orderend/orderConfirm.svg" alt="cart" />
          <span>주문완료</span>
        </div>
        <div id="second">
          <span>01 장바구니 > 02 주문/결제 ></span>
          <span class="second_active">&nbsp;03 주문완료</span>
        </div>
      </div>
      <!--title end-->

      <hr class="line" />

      <p style="font: var(--heading24)">주문이 완료되었습니다.</p>
      <p style="font: var(--heading18); margin-bottom: 30px">
        주문일 2023.06.26ㅣ주문번호 dOG20230626A001
      </p>

      <div id="container">
        <!-- 배달정보 -->
        <div id="order_info">
          <div id="info_title">배송지 정보</div>
          <div class="info_contents">
            <div>이름</div>
            <div>홍길동</div>
          </div>
          <div class="info_contents">
            <div>연락처</div>
            <div>010-1234-1234</div>
          </div>
          <div class="info_contents">
            <div>배송주소</div>
            <div style="height: 70px">
              서울특별시 강남구 테헤란로 14길 684-45
            </div>
          </div>
          <div class="info_contents">
            <div>배송요청사항</div>
            <div style="height: 70px">
              부재시 문 앞에 두고 가주세요(벨누르지말아주세요)
            </div>
          </div>

          <div>
            <img src="/images/shop/orderend/order_logo.svg" alt="logo" />
          </div>
        </div>

        <!-- 영수증 -->
        <div id="order_receipt">
          <div id="receipt_title">
            <img src="/images/shop/shopdetail/coin2.svg" alt="coin" />포인트
            영수증
          </div>
          <div class="receipt_contents">
            <div>주문날짜</div>
            <div>2023.06.30</div>
          </div>
          <hr class="dotline" />
          <div class="receipt_contents">
            <div>상품 전체 Point</div>
            <div>
              <img
                src="/images/shop/shopdetail/coin2.svg"
                alt="coin"
                style="width: 20px; margin-right: 5px"
              />
              <span>10,000</span>
            </div>
          </div>
          <div class="receipt_contents">
            <div>배송 Point</div>
            <div>
              <img
                src="/images/shop/shopdetail/coin2.svg"
                alt="coin"
                style="width: 20px; margin-right: 5px"
              />
              <span>2,500</span>
            </div>
          </div>
          <hr class="dotline" />
          <div class="receipt_contents">
            <div>총 결제 Point</div>
            <div>
              <img
                src="/images/shop/shopdetail/coin2.svg"
                alt="coin"
                style="width: 20px; margin-right: 5px"
              />
              <span>12,500</span>
            </div>
          </div>
          <div class="receipt_contents">
            <div>결제 가능 Point</div>
            <div>
              <img
                src="/images/shop/shopdetail/coin2.svg"
                alt="coin"
                style="width: 20px; margin-right: 5px"
              />
              <span>13,500</span>
            </div>
          </div>
          <hr class="dotline" />
          <div class="receipt_contents">
            <div>잔여 Point</div>
            <div>
              <img
                src="/images/shop/shopdetail/coin2.svg"
                alt="coin"
                style="width: 20px; margin-right: 5px"
              />
              <span>1,000</span>
            </div>
          </div>
          <div>
            <img src="/images/shop/orderend/order_logo.svg" alt="logo" />
          </div>
        </div>
      </div>

      <p style="font: var(--body16); margin-bottom: 30px">
        펫라이스는 배송지 정보 오기입으로 인한 배송오류에 대해 책임지지
        않습니다.<br />
        <br />
        배송지 정보 수정을 원하시는 경우 마이페이지>내 주문내역에서 해당 주문건
        취소 후 재주문해주세요.
      </p>

      <hr class="line" />

      <div id="orderend_btns">
        <button>
          홈으로 가기
          <img
            src="/images/shop/shopdetail/pawprint_black.svg"
            style="width: 25px; margin-left: 5px"
          />
        </button>
        <button>
          주문내역보기
          <img
            src="/images/shop/shopdetail/pawprint_black.svg"
            style="width: 25px; margin-left: 5px"
          />
        </button>
      </div>
    </div>
    <!--layout end-->
  </body>
</html>
