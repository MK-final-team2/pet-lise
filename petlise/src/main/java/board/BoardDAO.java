package board;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import pagination.SearchDTO;
@Mapper
@Repository
public interface BoardDAO {
  
    List<BoardDTO> getAllBoard();
   
    // Pagination
    List<BoardDTO> getAllBoardPaging(SearchDTO dto);
    int getCount(SearchDTO dto);
    
    int insertBoard(BoardDTO dto);
    
	public BoardDTO findboard (int seq);
	
	public int viewCnt(int seq);
	
	
	public void updateboard(BoardDTO dto);
	
	public void deleteboard(int seq);



}
