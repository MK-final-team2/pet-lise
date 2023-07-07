package admin.shop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import pagination.PagingResponse;
import pagination.SearchDTO;

@Controller
public class AdminShopController {
	@Autowired
	ProductService service;
	
	@GetMapping("/adminshoplist")
	public ModelAndView adminproductlist(@ModelAttribute SearchDTO searchdto) 
	{
		PagingResponse<ProductDTO> productlist = service.getAllProductPaging(searchdto);
		ModelAndView mv = new ModelAndView();
		mv.addObject("response", productlist);
		mv.setViewName("admin/shopManagement");
		
		return mv;
	}
	
}
