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
	
	@PostMapping("/mypage/deletemyboard")
	@ResponseBody
	public String getMyBoardDelete(String board_id) {
		int result = service.deleteMyBoard(board_id);
		return "{\"result\":\""+result+"\"}";
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
	
	@PostMapping("/mypage/deletemypetplace")
	@ResponseBody
	public String deletemypetplace(String place_id) {
		int result = service.deleteMyPetPlace(place_id);
		return "{\"result\":\""+result+"\"}";
	}

	@GetMapping("/mypage/mywriterecipe")
	public ModelAndView mywriterecipe(@ModelAttribute SearchDTO searchdto, HttpSession session) {
		String userId = (String)session.getAttribute("user_id");
		searchdto.setSearchType1(userId);
		PagingResponse<MyRecipeDTO> response = service.getMyWriteRecipe(searchdto);
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("response", response);
		mv.setViewName("/mypage/myWriteRecipe");
		return mv;
	}
	
	@PostMapping("/mypage/deletemywriterecipe")
	@ResponseBody
	public String deletemywriterecipe(String recipe_id) {
		int result = service.deleteMyWriteRecipe(recipe_id);
		return "{\"result\":\""+result+"\"}";
	}
}
