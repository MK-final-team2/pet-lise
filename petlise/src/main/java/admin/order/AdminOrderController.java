package admin.order;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import pagination.PagingResponse;
import pagination.SearchDTO;

@Controller
public class AdminOrderController {
	@Autowired
	OrderService service;

	@GetMapping("/adminorderlist")
	public ModelAndView adminorderlist(@ModelAttribute SearchDTO searchdto) {
		PagingResponse<OrderDTO> productlist = service.getOrdersPaging(searchdto);

		// 처리대기건수
		int waitCnt = service.getCountWait();

		ModelAndView mv = new ModelAndView();
		mv.addObject("response", productlist);
		mv.addObject("waitCnt", waitCnt);
		mv.setViewName("admin/payDeliveryManagement");
		return mv;
	}

	@PostMapping("/adminorderlist")
	public ModelAndView adminorderlistpost(@ModelAttribute SearchDTO searchdto) {
		PagingResponse<OrderDTO> productlist = service.getOrdersPaging(searchdto);

		// 처리대기건수
		int waitCnt = service.getCountWait();
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("response", productlist);
		mv.addObject("waitCnt", waitCnt);
		mv.setViewName("admin/payDeliveryManagement");
		return mv;
	}
}
