function edit() {
	let petplace_title = document.getElementsByName('title')[0].value
	let imageValue = $('#imageValue').val();

	let petplace_contents = quill.root.innerHTML
	let category = document.getElementsByName('category')[0].value
	
	if (petplace_title === '') {
		alert('제목을 입력해주세요.')
		return false;
	}
	
	if (category.length === 0 ) {
		alert('카테고리를 선택해주세요.')
		return false;
	}
	if (petplace_contents === '<p><br></p>') {
		alert('내용을 입력해주세요.')
		return false;
	}

	let formData = new FormData();
	formData.append("petplace_title", petplace_title)
	formData.append("petplace_contents", petplace_contents)
	formData.append("category", category)
	
	const url = `/board/petplaceWrite`;

	$.ajax({
		url: url,
		type: "post",
		data: formData,
		contentType: false,
		processData: false,
		success: function(data) {
			alert("등록이 완료되었습니다.")
			location.href = `/board/petplaceMain`;
		},
		error: function(error) {
			console.log(error);
		}
	});

}