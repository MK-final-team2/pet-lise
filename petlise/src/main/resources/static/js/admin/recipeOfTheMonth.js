function addCheck(event) {
  const checkValue = $(`#${event.id}`).is(':checked');

  $.ajax({
    url: `/admin/addrecipeofthemonth`,
    type: 'post',
    data: {
      recipe_id: event.id,
      recipe_of_the_month: checkValue
    },
    success: function () {
      alert('이달의 레시피가 수정되었습니다.');
    },
    error: function (error) {
      console.log(error);
    }
  });
}
