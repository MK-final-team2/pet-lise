package shop.payment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;


@Controller
public class OrderEndController {

	@Autowired
	OrderEndService service;
	
	@GetMapping("/orderend")
	public ModelAndView orderEnd(HttpSession session) {
		session.setAttribute("user_id", "petlise");
		String user_id = session.getAttribute("user_id").toString();
		
		ModelAndView mv = new ModelAndView();
		List<ShopOrderInfoDTO> orderInfo = service.getOrderInfo(user_id);
		mv.addObject("orderInfo", orderInfo);
		mv.setViewName("/shop/orderEnd");
		
		return mv;
	}
}
