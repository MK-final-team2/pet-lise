// 대표이미지 썸네일
$("#file").change(function() {
  if (this.files && this.files[0]) {
    var reader = new FileReader();
    reader.onload = function(data) {
      $("#fileimg").attr("src", data.target.result).width(100).height(100).css('border','2px solid var(--light-sub)').css('border-radius','10px');
    };
    reader.readAsDataURL(this.files[0]);
  }
});

// 모달
function showModal() {
  var modal = document.getElementById("alertmodal");
  modal.style.display = "block";
}

function hideModal() {
  var modal = document.getElementById("alertmodal");
  modal.style.display = "none";
}

// 등록 버튼 클릭 시
document.getElementById("submitButton").addEventListener("click", function() {
  // 이미 이벤트가 등록되어 있다면, 더 이상 실행하지 않음
  if (this.getAttribute("data-clicked") === "true") {
    return;
  }
  
  // 등록 버튼 비활성화
  document.getElementById("submitButton").disabled = true;
  
 // 이벤트 등록 상태 표시
  this.setAttribute("data-clicked", "true");

// 등록 처리
  edit(); // edit() 함수 호출
});


// 모달 확인 버튼 클릭 시 모달 닫기
$("#alertmodal .okaybtn").on('click', function() {
  hideModal();
});

function edit() {
  // 등록 전 유효성 검사
  let recipe_title = document.getElementById("recipeTitle").value;
  let pet_category = document.querySelector("input[name='pet_category']:checked");
  let main_category = document.querySelector("#dropdown .select span").textContent; // 수정된 부분
  let sub_category = document.querySelector("#dropdown2 .select span").textContent; // 수정된 부분
  let recipe_contents = quill.root.innerHTML;
  let imageValue = $('#imageValue').val();
  let profile_image = imageValue.length == 0 ? '' : imageValue;

  // 유효성 검사 추가
  if (recipe_title === "") {
    document.querySelector(".modal_text div").textContent = "레시피 제목을 입력해주세요.";
    showModal();
    return false;
  }

  if (!pet_category) {
    document.querySelector(".modal_text div").textContent = "어떤 반려동물을 위한 레시피인지 선택해주세요.";
    showModal();
    return false;
  }

  if (main_category === "카테고리 선택"&& main_category !== "기타") {
    document.querySelector(".modal_text div").textContent = "메인 카테고리를 선택해주세요.";
    showModal();
    return false;
  }

  if (sub_category === "카테고리 선택") {
  document.querySelector(".modal_text div").textContent = "서브 카테고리를 선택해주세요.";
  showModal();
  return false;
}


  if (recipe_contents === '<p><br></p>') {
    document.querySelector(".modal_text div").textContent = "레시피 내용을 입력해주세요.";
    showModal();
    return false;
  }

  // 유효성 검사 통과 시, 모달 닫기
  hideModal();

  // 데이터 서버로 전송
  let formData = new FormData();
  formData.append("recipe_title", recipe_title);
  formData.append("recipe_contents", recipe_contents);
  formData.append("main_category", main_category);
  formData.append("pet_category", pet_category.value);
  formData.append("sub_category", sub_category);
  formData.append("image", imageValue);

  $.ajax({
    url: "/recipecreate",
    type: "post",
    data: formData,
    contentType: false,
    processData: false,
    success: function(data) {
      // 성공적으로 저장되었을 때 처리
      console.log("레시피가 성공적으로 저장되었습니다.");
      

      // 리다이렉션 처리
      let petCategory = "강아지";
      if (pet_category.value === "고양이") {
        petCategory = "고양이";
      }
      let redirectUrl;
      if (main_category === "일반식") {
        redirectUrl = "recipelist";
      } else if (main_category === "건강식") {
        redirectUrl = "recipelist";
      } else if (main_category === "간식") {
        redirectUrl = "recipelist";
      } else {
        redirectUrl = "recipelist";
      }
      redirectUrl = `recipelist?recipeType=나만의레시피&searchType1=${petCategory}&searchType2=${main_category}&searchType3=전체`;
      window.location.replace(redirectUrl);
    },
    error: function(error) {
      // 저장 중 오류가 발생했을 때 처리
      console.log(error);
      // 등록 버튼 다시 활성화
      document.getElementById("submitButton").disabled = false;
    }
  });

  return false; // 이벤트 전파를 막음
}
