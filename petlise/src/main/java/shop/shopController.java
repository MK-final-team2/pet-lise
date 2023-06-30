package shop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class shopController {
	@RequestMapping("/payment")
	public String test() {
		return "/shop/payment";
	}

}
