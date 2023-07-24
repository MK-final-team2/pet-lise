package board.petplace;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import pagination.SearchDTO;



@Mapper
@Repository
public interface PetPlaceDAO {
	int insertPetPlace(PetPlaceDTO dto);
	int updatePetPlace(PetPlaceDTO dto);
	int deletePetPlace(String _id);	
	int maxPetPlaceNum();
	int countTotalPetPlaceNum();
	List<PetPlaceDTO> getAllPetPlace();
	PetPlaceDTO getPetPlaceById(String PetPlace_id);
	
	//Pagination
	List<PetPlaceDTO> getAllPetPlacePaging(SearchDTO dto);
	int getCount(SearchDTO dto);
	
	
}
