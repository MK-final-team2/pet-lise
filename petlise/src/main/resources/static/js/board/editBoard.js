

function edit() {
    let board_title = document.getElementsByName('board_title')[0].value;
    let board_contents = quill.root.innerHTML;
    

	
    if (board_title === '') {
        alert('제목을 입력해주세요.');
        return false;
    }
    

    
    if (board_contents === '<p><br></p>') {
        alert('내용을 입력해주세요.');
        return false;
    }
    let formData = new FormData();
    formData.append("board_title", board_title);
   
    formData.append("board_contents", board_contents);
  	

    
    
    $.ajax({
        url: "boardWrite",
        type: "post",
        data: formData,
        contentType: false,
        processData: false,
        success: function(data) {
            alert('등록이 완료되었습니다.');
            	location.href = `/boardMain`;
        },
        error: function(xhr, status, error) {
            alert('등록이 실패했습니다.');
        }
    });
}
