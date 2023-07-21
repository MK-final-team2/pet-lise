package admin.recipe;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin")
public class AdminRecipeController {

	@Autowired
	@Qualifier("adminRecipeServiceImpl")
	AdminRecipeService service;

	@RequestMapping("/editexpertrecipe")
	public String editExpertRecipeDog(Model model, HttpSession session, AdminRecipeRequestDTO dto) {
		model.addAttribute("pet_category", "강아지");

		if (session.getAttribute("user_id") != null) {
			String user_id = session.getAttribute("user_id").toString();

			dto.setUser_id(user_id);
			service.insertRecipe(dto);
		}
		return "admin/editExpertRecipe";
	}

	@GetMapping("/expertrecipemanagement")
	public String getExpertRecipeDog(Model model) {
		model.addAttribute("pet_category", "강아지");

		return "admin/expertRecipeManagement";
	}

	@ResponseBody
	@RequestMapping("/expertrecipemanagement")
	public List<AdminRecipeResponseDTO> expertRecipeDog(AdminFindAllRecipeRequestDTO dto) {
		
		int pages = (dto.getPage() - 1) * 10;
		dto.setPage(pages);
		List<AdminRecipeResponseDTO> recipe_list = service.findAllRecipe(dto);

		return recipe_list;
	}

	@RequestMapping("/addrecipeofthemonth")
	public ResponseEntity<Void> addRecipeOfTheMonth(String recipe_id, boolean recipe_of_the_month) {
		service.updateRecipeOfTheMonth(recipe_id, recipe_of_the_month);
		
		return new ResponseEntity(HttpStatus.OK);
	}
	@RequestMapping("/deleterecipe")
	public ResponseEntity<Void> deleteRecipe(String recipe_id) {
		service.deleteRecipe(recipe_id);

		return new ResponseEntity(HttpStatus.OK);
	}

	@RequestMapping("/editexpertrecipe-cat")
	public String editExpertRecipeCat(Model model, HttpSession session, AdminRecipeRequestDTO dto) {
		model.addAttribute("pet_category", "고양이");

		if (session.getAttribute("user_id") != null) {
			String user_id = session.getAttribute("user_id").toString();

			dto.setUser_id(user_id);
			service.insertRecipe(dto);
		}
		return "admin/editExpertRecipe";
	}

	@GetMapping("/expertrecipemanagement-cat")
	public String getExpertRecipeCat(Model model) {
		model.addAttribute("pet_category", "고양이");

		return "admin/expertRecipeManagement";
	}

	@GetMapping("/myrecipemanagement")
	public String getMyRecipeDog(Model model) {
		model.addAttribute("pet_category", "강아지");

		return "admin/myRecipeManagement";
	}

	@ResponseBody
	@RequestMapping("/myrecipemanagement")
	public List<AdminRecipeResponseDTO> myRecipeDog(Model model, AdminFindAllRecipeRequestDTO dto) {
		int pages = (dto.getPage() - 1) * 10;
		dto.setPage(pages);
		List<AdminRecipeResponseDTO> recipe_list = service.findAllRecipe(dto);

		return recipe_list;
	}

	@GetMapping("/myrecipemanagement-cat")
	public String getMyRecipeCat(Model model) {
		model.addAttribute("pet_category", "고양이");

		return "admin/myRecipeManagement";
	}

}
