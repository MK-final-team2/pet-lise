function edit() {
	let title = document.getElementsByName('title')[0].value
	let contents = quill.root.innerHTML
	let category = document.getElementsByName('category')[0].value

	if (category.length === 0) {
		alert('카테고리를 선택해주세요.')
		return false;
	}
	if (title === '') {
		alert('제목을 입력해주세요.')
		return false;
	}
	if (contents === '<p><br></p>') {
		alert('내용을 입력해주세요.')
		return false;
	}

	let formData = new FormData();
	formData.append("title", title)
	formData.append("contents", contents)
	formData.append("category", category)

	$.ajax({
		url: 'editnotice',
		type: "post",
		data: formData,
		contentType: false,
		processData: false,
		success: function(data) {
			alert("등록이 완료되었습니다.")
			location.href = `/admin/notice`;
		},
		error: function(error) {
			console.log(error);
		}
	});

}