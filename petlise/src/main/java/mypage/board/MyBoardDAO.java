package mypage.board;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import pagination.SearchDTO;
import shop.detail.ProductReviewDTO;

@Mapper
@Repository
public interface MyBoardDAO {
	List<MyBoardDTO> getMyBoard(SearchDTO dto);
	Integer getMyBoardCount(SearchDTO dto);
	Integer getMyBoardlike(String board_id);

	List<MyPetPlaceDTO> getMyPetPlace(SearchDTO dto);
	Integer getMyPetPlaceCount(SearchDTO dto);
	Integer getMyPetPlacelike(String place_id);
	
}
