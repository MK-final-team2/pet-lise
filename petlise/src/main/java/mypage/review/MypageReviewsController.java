package mypage.review;

import java.util.HashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import admin.order.OrderDTO;
import jakarta.servlet.http.HttpSession;
import pagination.PagingResponse;
import pagination.SearchDTO;
import shop.detail.ProductReviewDTO;

@Controller
public class MypageReviewsController {
	@Autowired
	MyOrderProductService service;

	@GetMapping("/myreview")
	public ModelAndView myreview(@ModelAttribute SearchDTO searchdto, HttpSession session) {
		searchdto.setRecordSize(5);
		searchdto.setSearchType1("9a86c657-232b-11ee-b6f4-00ff2f3d08fa");
		session.setAttribute("user_id", "9a86c657-232b-11ee-b6f4-00ff2f3d08fa");
		
		PagingResponse<MyOrderProductDTO> list = service.getMyOrderDetail(searchdto);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("response", list);
		mv.setViewName("/mypage/myReview");
		return mv;
	}
	
	@GetMapping("/editreview")
	public ModelAndView editreview(String di, String pi, String pn, HttpSession session) {
		String user_id = (String)session.getAttribute("user_id");
		ProductReviewDTO reviewdto = service.getProductReview(di, user_id);
		if(reviewdto != null) {
			reviewdto.setContents(reviewdto.getContents().replace("<br>", "&#10;"));
		}
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("product_name", pn);
		mv.addObject("reviewdto", reviewdto);
		mv.setViewName("/mypage/editReview");
		return mv;
	}
	
	@PostMapping("/insertreview")
	@ResponseBody
	public String insertreview(ProductReviewDTO dto, String point) {
		service.updateIsReviewTrue(dto.getOrder_detail_id());
		HashMap<String, String> map = new HashMap<>();
		map.put("point", point);
		map.put("user_id", dto.getUser_id());
		service.updatePointUp(map);
		int result = service.insertReview(dto);
		return "{\"result\":\""+result+"\"}";
	}
	
	@PostMapping("/updatereview")
	@ResponseBody
	public String updatereview(ProductReviewDTO dto) {
		int result = service.updateReview(dto);
		return "{\"result\":\""+result+"\"}";
	}

	@PostMapping("/updatedeletedat")
	@ResponseBody
	public String updatedeletedat(String review_id) {
		int result = service.updateDeleteAtReview(review_id);
		return "{\"result\":\""+result+"\"}";
	}
	
}
