package mypage.orderlist;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;
import shop.payment.ShopOrderInfoDTO;

@Controller
public class OrderListController {
	
	@Autowired
	OrderListService service;
	
	@GetMapping("/orderlist")
	public ModelAndView getMyOrder(HttpSession session) {
		String user_id = session.getAttribute("user_id").toString();

		ModelAndView mv = new ModelAndView();
		List<ShopOrderInfoDTO> myOrder = service.getMyOrder(user_id);
		mv.addObject("myOrder", myOrder);
		mv.setViewName("/mypage/orderList");
		return mv;
	}
	
	@PostMapping("/cancelorder")
	@ResponseBody
	public String cancelOrder(@RequestParam("order_id") String order_id) {
	    int result = service.cancelOrder(order_id);
	    return "{\"result\":\"" + result + "\"}";
	}

}

