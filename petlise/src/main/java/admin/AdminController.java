package admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import admin.recipe.AdminRecipeRequestDTO;
import admin.recipe.AdminRecipeService;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	@Qualifier("adminRecipeServiceImpl")
	AdminRecipeService service;

	@RequestMapping("")
	public String adminHome() {
		return "admin/dashboard";
	}

	@RequestMapping("/usermanagement")
	public String userManagement() {
		return "admin/userManagement";
	}

	@RequestMapping("/expertrecipemanagement")
	public ModelAndView expertRecipeDog() {
		ModelAndView mv = new ModelAndView();
		
		//AdminRecipeResponseDTO recipe_dog = service.findAllRecipe();
		
		//mv.addObject("recipe_dog", recipe_dog);
		mv.setViewName("admin/expertRecipeManagement");
		return mv;
	}


	@RequestMapping("/editexpertrecipe")
	public String editExpertRecipeDog(Model model, HttpSession session, AdminRecipeRequestDTO dto) {
		model.addAttribute("title", "강아지");
		
		if (session.getAttribute("user_id") != null) {
			String user_id = session.getAttribute("user_id").toString();
			
			System.out.println(dto.toString());
			dto.setUser_id(user_id);
			service.insertRecipe(dto);
		}
		return "admin/editExpertRecipe";
	}

	@RequestMapping("/expertrecipemanagement-cat")
	public String expertRecipeCat() {
		return "admin/expertRecipeManagement-cat";
	}

	@RequestMapping("/editexpertrecipe-cat")
	public String editExpertRecipeCat(Model model, HttpSession session, AdminRecipeRequestDTO dto) {
		model.addAttribute("title", "고양이");
		
		if (session.getAttribute("user_id") != null) {
			String user_id = session.getAttribute("user_id").toString();
			
			dto.setUser_id(user_id);
			service.insertRecipe(dto);
		}
		return "admin/editExpertRecipe";
	}

	@RequestMapping("/myrecipemanagement")
	public String myrecipeDog() {
		return "admin/myRecipeManagement";
	}

	@RequestMapping("/myrecipemanagement-cat")
	public String myrecipeCat() {
		return "admin/expertRecipeManagement-cat";
	}

	@RequestMapping("/boardmanagement")
	public String board() {
		return "admin/boardManagement";
	}

	@RequestMapping("/petplacemanagement")
	public String adminExpertRecipeManagement() {
		return "admin/expertRecipeManagement";
	}

	@RequestMapping("/announcement")
	public String announcement() {
		return "admin/announcement";
	}
	
	@RequestMapping("/editannouncement")
	public String editAnnouncement() {
		return "admin/editAnnouncement";
	}
}
