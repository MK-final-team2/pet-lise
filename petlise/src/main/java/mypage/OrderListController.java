package mypage;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OrderListController {
	@RequestMapping("/orderlist")
	public String test() {
		return "/mypage/orderList";
	}
	
	@RequestMapping("/myreview")
	public String test2() {
		return "/mypage/myReview";
	}
	
	@RequestMapping("/orderdetail")
	public String test3() {
		return "/mypage/orderDetail";
	}

}
