package shop.payment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class OrderEndController {

	@Autowired
	OrderEndService service;
	
	@GetMapping("/orderend")
	public ModelAndView orderEnd() {
		ShopOrderInfoDTO shopOrderInfoDTO = new ShopOrderInfoDTO();
		
		ModelAndView mv = new ModelAndView();
		List<ShopOrderInfoDTO> orderInfo = service.getOrderInfo(shopOrderInfoDTO);
		mv.addObject("orderInfo", orderInfo);
		mv.setViewName("/shop/orderEnd");
		
		return mv;
	}
}
