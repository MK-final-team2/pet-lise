package shop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class ShopDetailController {

	@GetMapping("/shopdetail")
	public String shop() {
		return "shop/shopDetail";
	}
}
