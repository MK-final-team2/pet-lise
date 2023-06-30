const table = document.getElementsByClassName('table');

for (let i = 0; i < table.length; i++) {
  table[i].innerHTML += `
  <thead>
    <tr>
      <th>제목</th>
      <th>작성자</th>
      <th>등록일</th>
      <th>댓글수</th>
      <th>좋아요수</th>
      <th>신고수</th>
      <th>삭제여부</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>레시피 제목인듯 아닌듯 맞는듯 함 레시피 제목인듯 아닌듯 맞는듯 함 레시피 제목인듯 아닌듯 맞는듯 함</td>
      <td>강낭콩</td>
      <td>2022.02.22</td>
      <td>100</td>
      <td>50</td>
      <td>10</td>
      <td>삭제</td>
    </tr>
  </tbody>
  `;
}
