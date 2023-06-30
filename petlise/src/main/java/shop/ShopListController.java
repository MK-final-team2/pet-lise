package shop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class ShopListController {
	
	@GetMapping("/shop")
	public String shop() {
		return "/shop/shopList";
	}
}
