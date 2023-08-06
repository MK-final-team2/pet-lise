function edit() {
    let comment_contents = document.getElementsByName('comment_contents')[0].value;
    let user_id = document.getElementById('user_id').value;
    let place_id = document.getElementById('place_id').value;

    if (comment_contents === '') {
        alert('제목을 입력해주세요.');
        return false;
    }

    let formData = new FormData();
    formData.append("comment_contents", comment_contents);
    formData.append("user_id", user_id);
    formData.append("place_id", place_id);

    $.ajax({
        url: "petplaceCommentform",
        type: "post",
        data: formData,
        contentType: false,
        processData: false,
        success: function (data) {
            var dataArray = data.split("|");
          
            var user_id = dataArray[1];
            var place_id = dataArray[2];

           
        alert('등록이 완료되었습니다.');
        // Refresh the page
        location.reload();
    
    
},
        error: function (xhr, status, error) {
            if (xhr.status === 401) {
                alert('세션이 만료되었습니다. 다시 로그인해주세요.');
                window.location.href = "/login"; // Redirect to the login page
            } else {
                alert('등록이 실패했습니다.');
            }
        }
    });
}
