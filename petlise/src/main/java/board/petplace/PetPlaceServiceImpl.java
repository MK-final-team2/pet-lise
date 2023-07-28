package board.petplace;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;

import pagination.Pagination;
import pagination.PagingResponse;
import pagination.SearchDTO;

@Service
public class PetPlaceServiceImpl implements PetPlaceService {
    @Autowired
     PetPlaceDAO dao;

    public PagingResponse<PetPlaceDTO> getAllPetPlacePaging(SearchDTO dto) {
        int count = dao.getCount(dto);
        if (count < 1) {
            return new PagingResponse<>(Collections.emptyList(), null);
        }

        Pagination pagination = new Pagination(count, dto);
        dto.setPagination(pagination);

        List<PetPlaceDTO> list = dao.getAllPetPlacePaging(dto);
        return new PagingResponse<>(list, pagination);
    }

    public List<PetPlaceDTO> getAllPetPlace() {
        return dao.getAllPetPlace();
    }
    
	public void insertPetPlace(PetPlaceDTO dto) {
	dao.insertPetPlace(dto);
		
	}





	public PetPlaceDTO findpetplace(int place_id) {
		return dao.findpetplace(place_id);
	}





	public void updatepetplace(PetPlaceDTO dto) {
		dao.updatepetplace(dto);
	}




	public void deletepetplace(int place_id) {
		dao.deletepetplace(place_id);
	}

	




	
}
