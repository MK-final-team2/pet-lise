package mypage.orderlist;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import mypage.review.MyOrderProductDTO;
import pagination.PagingResponse;
import pagination.SearchDTO;
import shop.payment.ShopOrderInfoDTO;

@Controller
public class OrderListController {
	
	@Autowired
	OrderListService service;
	
	@GetMapping("/orderlist")
	public ModelAndView getMyOrder(HttpSession session, HttpServletRequest request, @ModelAttribute SearchDTO searchdto) {
		ModelAndView mv = new ModelAndView();
		if (session.getAttribute("user_id") != null) {
			searchdto.setSearchType1(session.getAttribute("user_id").toString());
			searchdto.setRecordSize(5);
			PagingResponse<ShopOrderInfoDTO> myOrder = service.getMyOrder(searchdto);
			mv.addObject("response", myOrder);
			mv.setViewName("/mypage/orderList");
		} else {
			request.setAttribute("msg", "로그인 후 이용가능합니다.");
			request.setAttribute("url", "/");
			mv.setViewName("alert");
		}
		return mv;
	}
	
	@PostMapping("/cancelorder")
	@ResponseBody
	public String cancelOrder(@RequestParam("order_id") String order_id) {
	    int result = service.cancelOrder(order_id);
	    return "{\"result\":\"" + result + "\"}";
	}

}

