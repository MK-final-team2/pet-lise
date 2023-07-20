package admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {

//	@Autowired
//	@Qualifier("adminRecipeServiceImpl")
//	AdminRecipeService service;

	@RequestMapping
	public String adminHome() {
		return "admin/dashboard";
	}

	@RequestMapping("/usermanagement")
	public String userManagement() {
		return "admin/userManagement";
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
