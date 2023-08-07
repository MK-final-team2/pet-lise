package recipe.list;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;
import pagination.PagingResponse;
import pagination.SearchDTO;

@Controller
public class RecipeListController {
    @Autowired
    RecipeListService service;
  

    // 상품목록페이지

    // 상품목록페이지
    @GetMapping("/recipelist")
    public ModelAndView recipelist(String recipe_id, @ModelAttribute SearchDTO searchdto, HttpSession session) {
        searchdto.setRecordSize(12);
               
        PagingResponse<RecipeListDTO> recipelist = service.getAllRecipePaging(searchdto, true);

        String userId = (String) session.getAttribute("user_id");
        for (RecipeListDTO recipe : recipelist.getList()) {
            recipe.setIs_like(service.recipeService.isRecipeLiked(userId, recipe.getRecipe_id()));
        }

        ModelAndView mv = new ModelAndView();
        mv.addObject("response", recipelist);
        mv.setViewName("recipe/myRecipeList");
        return mv;
    }
    
    
    

    @GetMapping("/recipelistbest")
    public ModelAndView recipeListBest(String recipe_id, @ModelAttribute SearchDTO searchdto, HttpSession session) {
    	searchdto.setRecordSize(12);

        PagingResponse<RecipeListDTO> recipeListBest = service.getRecipeOfTheMonth(searchdto);
        
//        // 이달의 레시피 가져올 때 나만의 레시피인지만 필터링
//        if ("나만의레시피".equals(searchdto.getRecipeType())) {
//            List<RecipeListDTO> recipeOfTheMonthList = service.getRecipeOfTheMonth(searchdto, true);
//            recipeListBest.getList().addAll(recipeOfTheMonthList);
//        } 
//            else {
//            // 전문가 레시피의 이달의 레시피를 가져올 때는 recipe_category가 "전문가레시피"인 레시피만 가져오도록 설정
//            SearchDTO expertSearchDTO = new SearchDTO();       
//            expertSearchDTO.setRecipeType("전문가레시피");
//            List<RecipeListDTO> expertRecipeOfTheMonthList = service.getRecipeOfTheMonth(expertSearchDTO, true);
//            recipeListBest.getList().addAll(expertRecipeOfTheMonthList);
//        } <-틀린코드

        String userId = (String) session.getAttribute("user_id");
        for (RecipeListDTO recipe : recipeListBest.getList()) {
            recipe.setIs_like(service.recipeService.isRecipeLiked(userId, recipe.getRecipe_id()));
        }

        ModelAndView mv = new ModelAndView();
        mv.addObject("response", recipeListBest);
        mv.setViewName("recipe/recipeListBest"); 
        return mv;
    }



}
