package shop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class EditShopProductController {
	
	@GetMapping("/editproduct")
	public String editProduct() {
		return "admin/editShopProduct";
	}
}
