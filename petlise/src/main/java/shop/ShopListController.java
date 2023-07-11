package shop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;

import admin.shop.*;
import pagination.*;

@Controller
public class ShopListController {
	@Autowired
	ProductService service;

	@GetMapping("/shop")
	public ModelAndView shop(@ModelAttribute SearchDTO searchdto) {
		searchdto.setRecordSize(20);
		PagingResponse<ProductDTO> productlist = service.getAllProductPaging(searchdto);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("response", productlist);
		mv.setViewName("shop/shopList");
		return mv;
	}
}
