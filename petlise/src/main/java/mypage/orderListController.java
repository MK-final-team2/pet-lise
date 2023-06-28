package mypage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class orderListController {
	@RequestMapping("/")
	public String test() {
		return "orderList";
	}
}
