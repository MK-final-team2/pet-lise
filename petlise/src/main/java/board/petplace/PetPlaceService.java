package board.petplace;

import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import pagination.Pagination;
import pagination.PagingResponse;
import pagination.SearchDTO;



@Service
public class PetPlaceService {
	@Autowired
	PetPlaceDAO dao;

	public int insertPetPlace(PetPlaceDTO dto) {
		return dao.insertPetPlace(dto);
	}

	public int maxPetPlaceNum() {
		return dao.maxPetPlaceNum();
	}

	public int countTotalPetPlaceNum() {
		return dao.countTotalPetPlaceNum();
	}
	
	public List<PetPlaceDTO> getAllPetPlace() {
		return dao.getAllPetPlace();
	}
	
	public PetPlaceDTO getPetPlaceById(String PetPlace_id) {
		return dao.getPetPlaceById(PetPlace_id);
	};
	
	public int deletePetPlace(String PetPlace_id) {
		return dao.deletePetPlace(PetPlace_id);
	};
	
	public int updatePetPlace(PetPlaceDTO dto) {
		return dao.updatePetPlace(dto);
	};
	
	//Pagination
	public PagingResponse<PetPlaceDTO> getAllPetPlacePaging(SearchDTO dto) {

        // 조건에 해당하는 데이터가 없는 경우, 응답 데이터에 비어있는 리스트와 null을 담아 반환
        int count = dao.getCount(dto);
        if (count < 1) {
            return new PagingResponse<>(Collections.emptyList(), null);
        }

        // Pagination 객체를 생성해서 페이지 정보 계산 후 SearchDto 타입의 객체인 params에 계산된 페이지 정보 저장
        Pagination pagination = new Pagination(count, dto);
        dto.setPagination(pagination);

        // 계산된 페이지 정보의 일부(limitStart, recordSize)를 기준으로 리스트 데이터 조회 후 응답 데이터 반환
        List<PetPlaceDTO> list = dao.getAllPetPlacePaging(dto);
        return new PagingResponse<>(list, pagination);
    }

	public static int savePetPlace(PetPlaceDTO petPlaceDTO) {
		// TODO Auto-generated method stub
		return 0;
	}
	

}
