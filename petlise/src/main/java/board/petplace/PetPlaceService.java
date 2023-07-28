package board.petplace;

import pagination.PagingResponse;
import pagination.SearchDTO;
import java.util.List;
import org.springframework.stereotype.Service;

@Service
public interface PetPlaceService {
    
    List<PetPlaceDTO> getAllPetPlace();

    PagingResponse<PetPlaceDTO> getAllPetPlacePaging(SearchDTO dto);
	public void insertPetPlace(PetPlaceDTO dto);
	public PetPlaceDTO findpetplace (int place_id);
	public void updatepetplace(PetPlaceDTO dto);
	public void deletepetplace(int place_id);
}
