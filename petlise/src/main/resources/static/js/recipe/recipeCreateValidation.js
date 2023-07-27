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

  hideModal(); // 등록하기 전에 모달창을 닫음
  document.getElementById("recipeForm").submit();
}

document.getElementById("submitButton").addEventListener("click", registerRecipe);

// 모달경고창 확인 버튼
$("#alertmodal .okaybtn").on('click', function(){hideModal();});




//에디터 내용 저장
function create() {
   // Quill 에디터의 HTML 내용 가져오기
   let recipe_contents = quill.root.innerHTML;
	
   // 숨겨진 입력 필드의 값을 에디터 내용으로 설정
   document.getElementById("quill_html").value = recipe_contents;

   // 양식 제출
   document.getElementById("recipeForm").submit();
}

