package recipe;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class RecipeDetailController {
	
	@GetMapping("/recipedetail")
	public String test() {
		return "recipe/recipeDetail";
	}
}
