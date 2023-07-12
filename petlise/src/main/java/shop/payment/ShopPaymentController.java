package shop.payment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ShopPaymentController {
	
	@Autowired
	ShopPaymentService service;
	
	@GetMapping("/payment")
	public ModelAndView getOrderList() throws Exception {
		ShopOrderProductDTO dto = new ShopOrderProductDTO();
		List<ShopOrderProductDTO> orderList = service.getOrderList(dto);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("orderList", orderList);
		mv.setViewName("/shop/payment");
		return mv;
	}
}
