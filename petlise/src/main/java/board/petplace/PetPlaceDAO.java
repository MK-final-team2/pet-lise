package board.petplace;

import java.util.HashMap;
import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import pagination.SearchDTO;
@Mapper
@Repository
public interface PetPlaceDAO {
  
 
    // Pagination
    List<PetPlaceDTO> getAllPetPlacePaging(SearchDTO dto);
    List<PetPlaceCommentDTO> getAllCommentPaging(SearchDTO dto);
    int getCCount(SearchDTO dto);
    int getCount(SearchDTO dto);
    
    
    
    int insertPetPlace(PetPlaceDTO dto);
    
    int insertComment(PetPlaceCommentDTO dto) ;
    public void updatepetplace(PetPlaceDTO dto);
    
    public void deletepetplace(int seq);
    
	public PetPlaceDTO findpetplace (int seq);
	
	public int viewCnt(int seq);
	
	/*
	 * int likeUp(String place_id); int likeDown(String place_id);
	 * 
	 * int insertLike(HashMap<String, String> map); int deleteLike(HashMap<String,
	 * String> map);
	 * 
	 * int isLikeReview(HashMap<String, String> map); int likeCntReview(String
	 * place_id);
	 * 
	 */

	
		
}
