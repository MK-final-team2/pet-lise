package mypage.board;

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
import board.BoardDTO;
import jakarta.servlet.http.HttpSession;
import pagination.PagingResponse;
import pagination.SearchDTO;
import shop.detail.ProductReviewDTO;

@Controller
public class MypageBoardsController {
	@Autowired
	MyBoardService service;
	
	@GetMapping("/mypage/board")
	public ModelAndView myboard(@ModelAttribute SearchDTO searchdto, HttpSession session) {
		String userId = (String)session.getAttribute("user_id");
		searchdto.setSearchType1(userId);
		PagingResponse<MyBoardDTO> response = service.getMyBoard(searchdto);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("response", response);
		mv.setViewName("/mypage/myBoard");
		return mv;
	}

	@GetMapping("/mypage/petplace")
	public ModelAndView mypetplace(@ModelAttribute SearchDTO searchdto, HttpSession session) {
		String userId = (String)session.getAttribute("user_id");
		searchdto.setSearchType1(userId);
		PagingResponse<MyPetPlaceDTO> response = service.getMyPetPlace(searchdto);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("response", response);
		mv.setViewName("/mypage/myPetPlace");
		return mv;
	}
}
