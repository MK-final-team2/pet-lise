function addCheck(event) {
	const checkValue = $(`#${event.id}`).is(":checked")
	
	$.ajax({
		url: `/admin/addrecipeofthemonth`,
		type: 'post',
		data: {
			recipe_id: event.id,
			recipe_of_the_month: checkValue
		},
		success: function() {},
		error: function(error) {
			console.log(error);
		}
	})
}