package admin.user;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/admin")
public class AdminUserController {

	@Autowired
	@Qualifier("adminUserServiceImpl")
	AdminUserService service;

	@RequestMapping
	public String getAdminHome(Model model) {
		int todayRecipeCount = service.findTodayRecipe();
		int todayOrderCount = service.findTodayOrder();
		int todayBoardCount = service.findTodayBoard();
		int todayPetplaceCount = service.findTodayPetplace();
		
		model.addAttribute("todayRecipeCount", todayRecipeCount);
		model.addAttribute("todayOrderCount", todayOrderCount);
		model.addAttribute("todayBoardCount", todayBoardCount);
		model.addAttribute("todayPetplaceCount", todayPetplaceCount);
		
		return "admin/dashboard";
	}
	
	@ResponseBody
	@RequestMapping("/userchart")
	public List<AdminUserResponseDTO> adminHome() {
		List<AdminUserResponseDTO> create_user = service.findJoinUser();
		
		return create_user;
	}
	
	@GetMapping("/usermanagement")
	public String getUserManagement() {
		return "admin/userManagement";
	}

	@ResponseBody
	@RequestMapping("/usermanagement")
	public List<AdminUserResponseDTO> userManagement(String keyword, int page) {
		int pages = (page - 1) * 10;

		List<AdminUserResponseDTO> user_list = service.findAllUser(keyword, pages);

		return user_list;
	}
}
