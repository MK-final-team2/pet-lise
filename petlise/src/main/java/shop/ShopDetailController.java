package shop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import admin.shop.ProductDTO;
import admin.shop.ProductService;


@Controller
public class ShopDetailController {
	@Autowired
	ProductService service;

	@GetMapping("/shopdetail")
	public ModelAndView shop(String product_id) {
		
		ProductDTO product = service.getProductById(product_id);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("product", product);
		mv.setViewName("shop/shopDetail");
		return mv;
	}
}
