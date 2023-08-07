package mypage.board;

import java.util.Collections;
import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import board.BoardDTO;
import pagination.Pagination;
import pagination.PagingResponse;
import pagination.SearchDTO;
import shop.cart.ShopCartDTO;
import shop.detail.ProductReviewDTO;

@Service
public class MyBoardService {
	@Autowired
	MyBoardDAO dao;
	
	//Pagination-board
	public PagingResponse<MyBoardDTO> getMyBoard(SearchDTO dto) {
        // 조건에 해당하는 데이터가 없는 경우, 응답 데이터에 비어있는 리스트와 null을 담아 반환
        int count = dao.getMyBoardCount(dto);
        if (count < 1) {
            return new PagingResponse<>(Collections.emptyList(), null);
        }

        // Pagination 객체를 생성해서 페이지 정보 계산 후 SearchDto 타입의 객체인 params에 계산된 페이지 정보 저장
        Pagination pagination = new Pagination(count, dto);
        dto.setPagination(pagination);

        // 계산된 페이지 정보의 일부(limitStart, recordSize)를 기준으로 리스트 데이터 조회 후 응답 데이터 반환
        List<MyBoardDTO> list = dao.getMyBoard(dto);
        
        // 좋아요 수 계산
        for(MyBoardDTO board : list) {
        	board.setLikes(dao.getMyBoardlike(board.getBoard_id()));
        }
        return new PagingResponse<>(list, pagination);
    }

	//Pagination-petplace
	public PagingResponse<MyPetPlaceDTO> getMyPetPlace(SearchDTO dto) {
		// 조건에 해당하는 데이터가 없는 경우, 응답 데이터에 비어있는 리스트와 null을 담아 반환
		int count = dao.getMyPetPlaceCount(dto);
		if (count < 1) {
			return new PagingResponse<>(Collections.emptyList(), null);
		}
		
		// Pagination 객체를 생성해서 페이지 정보 계산 후 SearchDto 타입의 객체인 params에 계산된 페이지 정보 저장
		Pagination pagination = new Pagination(count, dto);
		dto.setPagination(pagination);
		
		// 계산된 페이지 정보의 일부(limitStart, recordSize)를 기준으로 리스트 데이터 조회 후 응답 데이터 반환
		List<MyPetPlaceDTO> list = dao.getMyPetPlace(dto);
		
		// 좋아요 수 계산
		for(MyPetPlaceDTO petplace : list) {
			petplace.setLikes(dao.getMyPetPlacelike(petplace.getPlace_id()));
		}
		return new PagingResponse<>(list, pagination);
	}

	//Pagination-myWriteRecipe
	public PagingResponse<MyRecipeDTO> getMyWriteRecipe(SearchDTO dto) {
		// 조건에 해당하는 데이터가 없는 경우, 응답 데이터에 비어있는 리스트와 null을 담아 반환
		int count = dao.getMyWriteRecipeCount(dto);
		if (count < 1) {
			return new PagingResponse<>(Collections.emptyList(), null);
		}
		
		// Pagination 객체를 생성해서 페이지 정보 계산 후 SearchDto 타입의 객체인 params에 계산된 페이지 정보 저장
		Pagination pagination = new Pagination(count, dto);
		dto.setPagination(pagination);
		
		// 계산된 페이지 정보의 일부(limitStart, recordSize)를 기준으로 리스트 데이터 조회 후 응답 데이터 반환
		List<MyRecipeDTO> list = dao.getMyWriteRecipe(dto);
		
		return new PagingResponse<>(list, pagination);
	}
	
	int deleteMyWriteRecipe(String recipe_id) {
		return dao.deleteMyWriteRecipe(recipe_id);
	}
	
}
