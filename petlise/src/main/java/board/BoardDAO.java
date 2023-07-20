package board;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import pagination.SearchDTO;



@Mapper
@Repository
public interface BoardDAO {
	int insertBoard(BoardDTO dto);
	int maxBoardNum();
	int countTotalBoardNum();
	List<BoardDTO> getAllBoard();
	int deleteBoard(String _id);	
	BoardDTO getBoardById(String Board_id);
	int updateBoard(BoardDTO dto);
	
	//Pagination
	List<BoardDTO> getAllBoardPaging(SearchDTO dto);
	int getCount(SearchDTO dto);
	
	
}
