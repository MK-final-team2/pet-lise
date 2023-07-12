package recipe;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping
public class RecipeCreateController {
    private final RecipeService recipeService;

    @Autowired
    public RecipeCreateController(RecipeService recipeService) {
        this.recipeService = recipeService;
    }
    
    @GetMapping("/recipecreate")
    public String showRecipeCreateForm() {
        return "recipe/recipeCreate";
    }
    
    @PostMapping("/recipecreate")
    public String createRecipe(RecipeDTO recipeDTO) {
        recipeDTO.recipe_id = recipeDTO.getRecipe_id(); // 직접 필드에 접근하여 값을 설정
        
        recipeService.createRecipe(recipeDTO);
        String redirectUrl;
        if (recipeDTO.getMain_category().equals("일반식")) {
            redirectUrl = "redirect:/myrecipelistn";
        } else if (recipeDTO.getMain_category().equals("건강식")) {
            redirectUrl = "redirect:/myrecipelisth";
        } else if (recipeDTO.getMain_category().equals("간식")) {
            redirectUrl = "redirect:/myrecipelists";
        } else {
            redirectUrl = "redirect:/myrecipeliste";
        }

        return redirectUrl;
    }
    

}
