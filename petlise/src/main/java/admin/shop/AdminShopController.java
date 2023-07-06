package admin.shop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class AdminShopController {
	@Autowired
	ProductService service;
	
	@GetMapping("/adminshoplist")
	public ModelAndView adminproductlist(@RequestParam(value="petType",required=false, defaultValue="all")String petType) 
	{
		List<ProductDTO> productlist = null;
		if(petType.equals("all")) {
			productlist = service.getAllProduct();
		}else {
			String type = "";
			if(petType.equals("dog")) { type = "강아지"; }
			else if(petType.equals("cat")) { type = "고양이"; }
			productlist = service.getAllByPetType(type);
		}
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("productlist",productlist);
		mv.addObject("petType", petType);
		mv.setViewName("admin/shopManagement");
		return mv;
	}
	
}
