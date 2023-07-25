package shop.payment;

import java.util.List;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import admin.shop.ProductDTO;
import jakarta.servlet.http.HttpSession;
import user.UserDTO;

@Controller
public class ShopPaymentController {

	@Autowired
	ShopPaymentService service;

	@GetMapping("/payment")
	public ModelAndView payment(HttpSession session) throws Exception {
		ProductDTO ProductDTO = new ProductDTO();

		session.setAttribute("user_id", "petlise");		
		String user_id = session.getAttribute("user_id").toString();

		List<ShopOrderProductDTO> orderProduct = service.getOrderList(user_id);
		List<UserDTO> userInfo = service.getUserInfo(user_id);
		List<ProductDTO> products = service.getProducts(ProductDTO);

		ModelAndView mv = new ModelAndView();
		mv.addObject("userInfo", userInfo);
		mv.addObject("orderProduct", orderProduct);
		mv.addObject("products", products);
		mv.setViewName("/shop/payment");
		return mv;
	}

	@PostMapping("/saveorderinfo")
	@ResponseBody
	public String saveOrderInfo(ShopOrderInfoDTO dto) {
	    // 주문번호 생성
	    String order_id = UUID.randomUUID().toString();
	    // 주문번호를 DTO에 설정
	    dto.setOrder_id(order_id);
		
		int result = service.saveOrderInfo(dto);
		return "{\"order_id\":\"" + order_id + "\", \"result\":\"" + result + "\"}";
	}

	@PostMapping("/orderconfirm")
	@ResponseBody
	public String orderConfirm(String user_id) {
		int result = service.orderConfirm(user_id);
		return "{\"result\":\"" + result + "\"}";
	}

	@RequestMapping("/deletecart")
	public @ResponseBody String deleteCart(String user_id) {
		service.deleteCart(user_id);
		return "";
	}

	@PostMapping("/updatesales")
	@ResponseBody
	public String updateSales(@RequestParam("product_ids") List<Integer> productIds) {
		int result = 0;
		for (int product_id : productIds) {
			result += service.updateSales(product_id);
		}
		return "{\"result\":\"" + result + "\"}";
	}
}
