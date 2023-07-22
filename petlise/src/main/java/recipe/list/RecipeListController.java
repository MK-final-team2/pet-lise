package recipe.list;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import pagination.PagingResponse;
import pagination.SearchDTO;

@Controller
public class RecipeListController {
    @Autowired
    RecipeListService service;

    // 상품목록페이지
    @GetMapping("/recipelist")
    public ModelAndView recipelist(@ModelAttribute SearchDTO searchdto) {
        searchdto.setRecordSize(12);
        PagingResponse<RecipeListDTO> recipelist = service.getAllRecipePaging(searchdto);
        
        System.out.println(recipelist.getList().size());

        ModelAndView mv = new ModelAndView();
        mv.addObject("response", recipelist);
        mv.setViewName("recipe/myRecipeList");
        return mv;
    }
}
