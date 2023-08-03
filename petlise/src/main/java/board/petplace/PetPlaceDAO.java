package board.petplace;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import pagination.SearchDTO;
@Mapper
@Repository
public interface PetPlaceDAO {
  
    List<PetPlaceDTO> getAllPetPlace();
   
    // Pagination
    List<PetPlaceDTO> getAllPetPlacePaging(SearchDTO dto);
    int getCount(SearchDTO dto);
    
    int insertPetPlace(PetPlaceDTO dto);
    
	public PetPlaceDTO findpetplace (int seq);
	
	public int viewCnt(int seq);
	
	
	public void updatepetplace(PetPlaceDTO dto);
	
	public void deletepetplace(int seq);



}
