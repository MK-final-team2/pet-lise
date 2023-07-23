package board.petplace;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import admin.recipe.AdminRecipeRequestDTO;
import jakarta.servlet.http.HttpSession;
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

	@RequestMapping("/petplaceWrite")
	public String petplaceWrite() {
		return "/board/petplaceWrite";
	}

	@RequestMapping(value = "/petplaceWrite", method = RequestMethod.POST)
    public String savePetPlace(@ModelAttribute PetPlaceDTO petPlaceDTO) {
        // 필요한 유효성 검사 등을 수행한 후 Service를 통해 글 작성을 처리합니다.
        int result = service.savePetPlace(petPlaceDTO);

        // 글 작성이 성공적으로 처리되면 원하는 페이지로 리디렉션합니다.
        if (result > 0) {
            return "redirect:/petplaceMain"; // 글 작성이 성공했을 때 리디렉션할 경로
        } else {
            // 글 작성이 실패한 경우 에러 페이지 또는 다른 처리를 수행합니다.
            return "errorPage"; // 에러 페이지의 경로
        }
    }

}
