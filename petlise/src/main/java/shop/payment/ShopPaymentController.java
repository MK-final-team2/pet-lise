package shop.payment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import admin.shop.ProductDTO;
import user.UserDTO;

@Controller
public class ShopPaymentController {
	
	@Autowired
	ShopPaymentService service;
	
	@GetMapping("/payment")
	public ModelAndView payment() throws Exception {
		ShopOrderProductDTO shopOrderProductDTO = new ShopOrderProductDTO();
		UserDTO UserDTO = new UserDTO();
		ProductDTO ProductDTO = new ProductDTO();
		
		List<ShopOrderProductDTO> orderProduct = service.getOrderList(shopOrderProductDTO);
		List<UserDTO> userInfo = service.getUserInfo(UserDTO);
		List<ProductDTO> products = service.getProducts(ProductDTO);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("orderProduct", orderProduct);
		mv.addObject("userInfo", userInfo);
		mv.addObject("products", products);
		mv.setViewName("/shop/payment");
		return mv;
	}
	
	@PostMapping("/saveorderinfo")
	@ResponseBody
	public String saveOrderInfo(ShopOrderInfoDTO dto) {
		int result = service.saveOrderInfo(dto);
		return "{\"result\":\"" + result + "\"}";
	}
	
	@PostMapping("/orderconfirm")
	@ResponseBody
	public String orderConfirm(ShopOrderProductDTO dto) {
		int result = service.orderConfirm(dto);
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
