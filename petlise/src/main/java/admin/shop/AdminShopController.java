package admin.shop;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import pagination.PagingResponse;
import pagination.SearchDTO;

@Controller
public class AdminShopController {
	@Autowired
	ProductService service;
	
	//상품목록페이지
	@GetMapping("/adminshoplist")
	public ModelAndView adminproductlist(@ModelAttribute SearchDTO searchdto) 
	{
		PagingResponse<ProductDTO> productlist = service.getAllProductPaging(searchdto);
		ModelAndView mv = new ModelAndView();
		mv.addObject("response", productlist);
		mv.setViewName("admin/shopManagement");
		
		return mv;
	}
	
	//상품등록페이지
	@GetMapping("/shopproductregister")
	public String shopproductregister() {
		return "admin/shopProductRegister";
	}
	
	//상품수정페이지
	@GetMapping("/shopproductedit")
	public String shopproductedit() {
		return "admin/shopProductEdit";
	}

	
	//상품삭제 - ajax
	@PostMapping("/deleteproduct")
	@ResponseBody
	public String deleteProduct(String product_id) {
		int result = service.deleteProduct(product_id);
		return "{\"result\":\""+result+"\"}";
	}
	
	//상품등록 - ajax
	@PostMapping("/productsave")
	@ResponseBody
	public String productSave(ProductDTO dto) {
		/*
		 * product_id / pet_type / category / product_num / reg_date / product_name /
		 * price / quatity / image_main / image_detail
		 */

		//상품코드만들기
		String productId = "";
		if(dto.getPet_type().equals("강아지")) {
			productId += "D";
		}else {
			productId += "C";
		}

		if(dto.getCategory().equals("사료")) {
			productId += "01_";
		}else if(dto.getCategory().equals("간식")) {
			productId += "02_";
		}else if(dto.getCategory().equals("영양제")) {
			productId += "03_";
		}else if(dto.getCategory().equals("장난감")) {
			productId += "04_";
		}

		int product_nextnum = 0;
		if(service.countTotalProductNum()!=0) {
			product_nextnum = service.maxProductNum()+1;
		}else {
			product_nextnum = 1;
		}

		if(product_nextnum<10) {
			productId += "00"+product_nextnum;
		} else if(product_nextnum>=10 && product_nextnum<100) {
			productId += "0"+product_nextnum;			
		} else {
			productId += product_nextnum;
		}

		dto.setProduct_id(productId);
		dto.setProduct_num(product_nextnum);
		dto.setImage_main(null);
		dto.setImage_detail(null);

		service.insertProduct(dto);
		return "{\"success\":\"good\"}";
	}
	
}
