package shop.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class AdminProductController {
	
	@GetMapping("/adminproductlist")
	public String adminproductlist() {
		return "admin/shopManagement";
	}
	
}
