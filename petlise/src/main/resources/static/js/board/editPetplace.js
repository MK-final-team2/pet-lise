function getSessionUserId() {
    // 여기서 실제 세션에서 사용자 아이디를 가져오는 코드를 작성해야 합니다.
    // 이 예시에서는 임의의 사용자 아이디를 반환하도록 하겠습니다.
    return "a";
}

function edit() {
    let title = document.getElementsByName('title')[0].value;
    let category = document.getElementsByName('category')[0].value;
    let p_address = document.getElementsByName('p_address')[0].value;
    let petplace_contents = quill.root.innerHTML;
    
    if (title === '') {
        alert('제목을 입력해주세요.');
        return false;
    }
    
    if (category.length === 0) {
        alert('카테고리를 선택해주세요.');
        return false;
    }
    
    if (p_address.length === 0) {
        alert('주소를 입력해주세요.');
        return false;
    }
    
    if (petplace_contents === '<p><br></p>') {
        alert('내용을 입력해주세요.');
        return false;
    }

    let formData = new FormData();
    formData.append("title", title);
    formData.append("category", category);
    formData.append("p_address", p_address);
    formData.append("petplace_contents", petplace_contents);
    
    // user_id 값을 세션에서 가져와서 formData에 추가
    let user_id = getSessionUserId(); // 세션에서 user_id를 가져오는 함수를 구현해야 함
    formData.append("user_id", user_id);
    

    $.ajax({
        url: "petplaceWrite",
        type: "post",
        data: formData,
        contentType: false,
        processData: false,
        success: function(data) {
            alert('등록이 완료되었습니다.');
            /*	location.href = `/petplaceMain`;*/
        },
        error: function(xhr, status, error) {
            alert('등록이 실패했습니다.');
        }
    });
}
