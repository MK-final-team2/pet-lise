const table = document.getElementsByClassName('table');

for (let i = 0; i < table.length; i++) {
  table[i].innerHTML += `
  <thead>
    <tr>
      <th>제목</th>
      <th>내용</th>
      <th>작성자</th>
      <th>날짜</th>
      <th>조회수</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td>레시피 제목인듯 아닌듯 맞는듯 함 레시피 제목인듯 아닌듯 맞는듯 함 레시피 제목인듯 아닌듯 맞는듯 함</td>
      <td>레시피 제목인듯 아닌듯 맞는듯 함 레시피 제목인듯 아닌듯 맞는듯 함 레시피 제목인듯 아닌듯 맞는듯 함</td>
      <td>강낭콩</td>
      <td>2022.02.22</td>
      <td>100</td>
    </tr>
  </tbody>
  `;
}
