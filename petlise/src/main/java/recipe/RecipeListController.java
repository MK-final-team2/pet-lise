package recipe;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class RecipeListController {
	@GetMapping("/myrecipelistbest")
	public String test() {
		return "recipe/myRecipeListBest";
	}

	@GetMapping("/myrecipeliste")
	public String test2() {
		return "recipe/myRecipeListE";
	}

	@GetMapping("/myrecipelisth")
	public String test3() {
		return "recipe/myRecipeListH";
	}

	@GetMapping("/myrecipelistn")
	public String test4() {
		return "recipe/myRecipeListN";
	}

	@GetMapping("/myrecipelists")
	public String test5() {
		return "recipe/myRecipeListS";
	}

	@GetMapping("/recipelistbest")
	public String test6() {
		return "recipe/recipeListBest";
	}

	@GetMapping("/recipeliste")
	public String test7() {
		return "recipe/recipeListE";
	}

	@GetMapping("/recipelisth")
	public String test8() {
		return "recipe/recipeListH";
	}

	@GetMapping("/recipelistn")
	public String test9() {
		return "recipe/recipeListN";
	}

	@GetMapping("/recipelists")
	public String test10() {
		return "recipe/recipeListS";
	}
}
