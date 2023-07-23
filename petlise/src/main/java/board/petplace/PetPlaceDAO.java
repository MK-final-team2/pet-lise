package board.petplace;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import pagination.SearchDTO;



@Mapper
@Repository
public interface PetPlaceDAO {
	int insertPetPlace(PetPlaceDTO dto);
	int maxPetPlaceNum();
	int countTotalPetPlaceNum();
	List<PetPlaceDTO> getAllPetPlace();
	int deletePetPlace(String _id);	
	PetPlaceDTO getPetPlaceById(String PetPlace_id);
	int updatePetPlace(PetPlaceDTO dto);
	
	//Pagination
	List<PetPlaceDTO> getAllPetPlacePaging(SearchDTO dto);
	int getCount(SearchDTO dto);
	
	
}
