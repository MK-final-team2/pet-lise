package board.petplace;

import java.util.List;

import org.springframework.stereotype.Service;

import pagination.PagingResponse;
import pagination.SearchDTO;

@Service
public interface PetPlaceService {
    
    List<PetPlaceDTO> getAllPetPlace();

    PagingResponse<PetPlaceDTO> getAllPetPlacePaging(SearchDTO dto);
	public int insertPetPlace(PetPlaceDTO dto);
	public PetPlaceDTO findpetplace (int seq);
	public int viewCnt(int seq);
	public int updatepetplace(PetPlaceDTO dto);
	public void deletepetplace(int seq);
}
