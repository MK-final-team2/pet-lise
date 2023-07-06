package recipe;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class RecipeCreateController {

	@GetMapping("/recipecreate")
	public String test() {
		return "recipe/recipeCreate";
	}

}
