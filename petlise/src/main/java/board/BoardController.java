package board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;
import pagination.PagingResponse;
import pagination.SearchDTO;

@Controller
public class BoardController {
	
	


	 @Autowired
	    @Qualifier("boardServiceImpl")
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
	
	

		@RequestMapping("/boardWrite")
	    public String BoardWrite(HttpSession session, BoardDTO dto) {
	        // 로그인 여부 확인
	        
	        if (session.getAttribute("user_id") != null && dto.getBoard_title() != null) {
	        	System.out.println(dto.toString());
	            String user_id = session.getAttribute("user_id").toString();
	            dto.setUser_id(user_id);
	            service.insertBoard(dto);
	        }
	        
	        return "board/boardWrite";
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



