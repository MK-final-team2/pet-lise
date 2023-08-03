package board;

import java.util.List;

import org.springframework.stereotype.Service;

import pagination.PagingResponse;
import pagination.SearchDTO;

@Service
public interface BoardService {
    
    List<BoardDTO> getAllBoard();

    PagingResponse<BoardDTO> getAllBoardPaging(SearchDTO dto);
	public int insertBoard(BoardDTO dto);
	public BoardDTO findboard (int seq);
	public int viewCnt(int seq);
	public int updateboard(BoardDTO dto);
	public void deleteboard(int seq);
}
