package board.petplace;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;


import pagination.PagingResponse;
import pagination.SearchDTO;

@Controller
public class PetPlaceController {

    @Autowired
    private PetPlaceService service;

    
    
	//펫플레이스리스트 
	@GetMapping("/petplaceMain")
	public ModelAndView petPlaceList(@ModelAttribute SearchDTO searchdto) {
		PagingResponse<PetPlaceDTO> petPlaces = service. getAllPetPlacePaging(searchdto);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("response", petPlaces);
		mv.setViewName("board/petplaceMain");
		return mv;
	}
}
