package shop.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminProductController {

	@GetMapping("/adminproductlist")
	public String adminproductlist() {
		return "admin/shopManagement";
	}

}
