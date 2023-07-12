//대표이미지 썸네일
$("#file").change(function() {
	if (this.files && this.files[0]) {
		var reader = new FileReader;
		reader.onload = function(data) {
			$("#fileimg").attr("src", data.target.result).width(100);
			$("#fileimg").attr("src", data.target.result).height(100);
			$("#fileimg").css('border','2px solid var(--light-sub)');
			$("#fileimg").css('border-radius','10px');
		}
		reader.readAsDataURL(this.files[0]);
	}
});


//모달
function showModal() {
  var modal = document.getElementById("alertmodal");
  modal.style.display = "block";
}

function hideModal() {
  var modal = document.getElementById("alertmodal");
  modal.style.display = "none";
}

function registerRecipe(event) {
  event.preventDefault();

  var recipeTitle = document.getElementById("recipeTitle").value;
  var petCategory = document.querySelector("input[name='pet_category']:checked");
  var mainCategory = document.querySelector("input[name='main_category']").value;
  var subCategory = document.querySelector("input[name='sub_category']").value;

  if (recipeTitle === "") {
    document.querySelector(".modal_text div").textContent = "레시피 제목을 입력해주세요.";
    showModal();
    return false;
  }

  if (!petCategory) {
    document.querySelector(".modal_text div").textContent = "어떤 반려동물을 위한 레시피인지 선택해주세요.";
    showModal();
    return false;
  }

  if (mainCategory === "") {
    document.querySelector(".modal_text div").textContent = "카테고리를 선택해주세요.";
    showModal();
    return false;
  }

  if (subCategory === "") {
    document.querySelector(".modal_text div").textContent = "상세카테고리를 선택해주세요.";
    showModal();
    return false;
  }

  hideModal(); // 수정된 부분: 등록하기 전에 모달창을 닫음
  document.getElementById("recipeForm").submit();
}

document.getElementById("submitButton").addEventListener("click", registerRecipe);

// 모달경고창 확인 버튼
$("#alertmodal .okaybtn").on('click', function(){hideModal();});
