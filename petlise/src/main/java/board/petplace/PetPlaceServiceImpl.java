package board.petplace;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
    
    @Override
    public int insertPetPlace(PetPlaceDTO dto) {
        // Your logic to insert the pet place into the database

        // Assuming you have a method in the mapper to insert the pet place
        dao.insertPetPlace(dto);

        // Get the generated seq after insertion and set it in the DTO
        int generatedPlaceId = dto.getSeq();
        dto.setSeq(generatedPlaceId);
		return generatedPlaceId;
    }




	public int viewCnt(int seq) {
		// TODO Auto-generated method stub
		return dao.viewCnt(seq);
	}

	
	public PetPlaceDTO findpetplace(int seq) {
		return dao.findpetplace(seq);
	}




	@Override
	public int updatepetplace(PetPlaceDTO dto) {
		dao.updatepetplace(dto);
		 int generatedPlaceId = dto.getSeq();
	        dto.setSeq(generatedPlaceId);
			return generatedPlaceId;
		
	}




	public void deletepetplace(int seq) {
		dao.deletepetplace(seq);
	}

	




	
}
