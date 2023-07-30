package board;


import java.util.List;

import org.springframework.stereotype.Service;

import pagination.PagingResponse;
import pagination.SearchDTO;



@Service
public interface BoardService {
    
    List<BoardDTO> getAllBoard();

    PagingResponse<BoardDTO> getAllBoardPaging(SearchDTO dto);
	public void insertBoard(BoardDTO dto);
	public BoardDTO findBoard (int place_id);
	public void updateBoard(BoardDTO dto);
	public void deleteBoard(int place_id);
}
