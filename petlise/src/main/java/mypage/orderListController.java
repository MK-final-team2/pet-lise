package mypage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class orderListController {
	@RequestMapping("/orderList")
	public String test() {
		return "/mypage/orderList";
	}
	
	@RequestMapping("/myReview")
	public String test2() {
		return "/mypage/myReview";
	}
	
	@RequestMapping("/orderDetail")
	public String test3() {
		return "/mypage/orderDetail";
	}

}
