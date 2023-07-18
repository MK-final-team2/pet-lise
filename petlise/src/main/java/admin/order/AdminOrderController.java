package admin.order;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class AdminOrderController {
	
	
	@GetMapping("/adminorderlist")
	public String adminorderlist() {
		return "admin/payDeliveryManagement";
	}
}
