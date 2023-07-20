package board;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;


import pagination.PagingResponse;
import pagination.SearchDTO;

@Controller
public class BoardController {
	
	


	    @Autowired
	    private BoardService service;

	    
	    
		//펫플레이스리스트 
		@GetMapping("/boardMain")
		public ModelAndView boardList(@ModelAttribute SearchDTO searchdto) {
			PagingResponse<BoardDTO> boards = service. getAllBoardPaging(searchdto);
			
			ModelAndView mv = new ModelAndView();
			mv.addObject("response", boards);
			mv.setViewName("board/boardMain");
			return mv;
		}
	
	


	@GetMapping("/boardWrite")
	public String boardWrite() {
		return "/board/boardWrite";
	}
	
	@GetMapping("/boardDetail")
	public String boardDetail() {
		return "/board/boardDetail";
	}
	

}



