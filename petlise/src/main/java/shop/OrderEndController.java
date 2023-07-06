package shop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class OrderEndController {

	@GetMapping("/orderend")
	public String shop() {
		return "shop/orderEnd";
	}
}
