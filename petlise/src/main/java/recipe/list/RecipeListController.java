package recipe.list;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import board.petplace.PetPlaceDTO;
import jakarta.servlet.http.HttpSession;
import pagination.PagingResponse;
import pagination.SearchDTO;
import recipe.RecipeDTO;
import recipe.RecipeService;

@Controller
public class RecipeListController {
    @Autowired
    RecipeListService service;
  

    // 상품목록페이지
    @GetMapping("/recipelist")
    public ModelAndView recipelist(String recipe_id, @ModelAttribute SearchDTO searchdto,HttpSession session) {

    	
    	searchdto.setRecordSize(12);
        PagingResponse<RecipeListDTO> recipelist = service.getAllRecipePaging(searchdto);
        
        System.out.println(recipelist.getList().size());

        ModelAndView mv = new ModelAndView();
        mv.addObject("response", recipelist);
        mv.setViewName("recipe/myRecipeList");
        return mv;
    }
    

}
