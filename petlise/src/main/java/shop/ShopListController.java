package shop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import admin.shop.*;
import jakarta.servlet.http.HttpSession;
import pagination.*;
import shop.cart.ShopCartDTO;

@Controller
public class ShopListController {
	@Autowired
	ProductService service;

	@GetMapping("/shop")
	public ModelAndView shop(@ModelAttribute SearchDTO searchdto, HttpSession session) {
		searchdto.setRecordSize(20);
		PagingResponse<ProductDTO> productlist = service.getAllProductPaging(searchdto);
		
		//임의 세션처리 (로그인)
		session.setAttribute("user_id", "9a86c657-232b-11ee-b6f4-00ff2f3d08fa");
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("response", productlist);
		mv.setViewName("shop/shopList");
		return mv;
	}

	@PostMapping("/isincart")
	@ResponseBody
	public String isincart(ShopCartDTO cartdto) {
		int cartcnt = service.isinCart(cartdto);
		
		String result ="";
		if(cartcnt <= 0) { result = "no";}
		else { result = "yes";}
		
		return "{\"result\":\""+result+"\"}";
	}
	
	@PostMapping("/insertcart")
	@ResponseBody
	public String insertcart(String user_id, String product_id, int quantity) {
		//상품정보조회
		ProductDTO product = service.getProductById(product_id);
		
		//ShopCart정보 담기
		ShopCartDTO cartdto = new ShopCartDTO();
		cartdto.setUser_id(user_id);
		cartdto.setProduct_id(product.getProduct_id());
		cartdto.setProduct_image(product.getImage_main());
		cartdto.setProduct_name(product.getProduct_name());
		cartdto.setQuantity(quantity);
		cartdto.setProduct_price(product.getPrice());
		cartdto.setPrice_total(quantity*product.getPrice());
		
		int result = service.insertCart(cartdto);
		return "{\"result\":\""+result+"\"}";
	}
	
	
}
