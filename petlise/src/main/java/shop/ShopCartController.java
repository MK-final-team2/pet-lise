package shop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class ShopCartController {
	
	@GetMapping("/shopcart")
	public String shop() {
		return "shop/shopCart";
	}
}
