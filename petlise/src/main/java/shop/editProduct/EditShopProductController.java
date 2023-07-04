package shop.editProduct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class EditShopProductController {
	@Autowired
	ProductService service;
	
	@GetMapping("/editproductform")
	public String editProduct() {
		return "admin/editShopProduct";
	}
	
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
		}
		
		if(product_nextnum<10) {
			productId += "00"+product_nextnum;
		} else if(product_nextnum>10 && product_nextnum<100) {
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
