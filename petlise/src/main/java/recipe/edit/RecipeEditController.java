package recipe.edit;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;
import recipe.RecipeDTO;

@Controller
public class RecipeEditController {
	
	@Autowired
	RecipeEditService service;
	
	@GetMapping("/recipeedit")
	public ModelAndView getRecipeEdit(HttpSession session, String recipe_id) {
		session.getAttribute("user_id").toString();
		ModelAndView mv = new ModelAndView();
		RecipeDTO recipeEdit = service.getRecipeEdit(recipe_id);
		mv.addObject("recipeEdit", recipeEdit);
		mv.setViewName("recipe/recipeEdit");
		return mv;
	}
	
	@PostMapping("/recipeupdate")
	public String recipeUpdate(String recipe_id) {
		int result = service.updateLastRecipe(recipe_id);
	    return "{\"result\":\"success\":\"" + result +"\"}";
	}
}
