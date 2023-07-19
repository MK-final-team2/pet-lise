package board.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.ModelAndView;


import pagination.PagingResponse;
import pagination.SearchDTO;

@Controller
public class NoticeController {
	
	


	    @Autowired
	    private NoticeService service;

	    
	    
		//펫플레이스리스트 
		@GetMapping("/noticeMain")
		public ModelAndView noticeList(@ModelAttribute SearchDTO searchdto) {
			PagingResponse<NoticeDTO> notices = service. getAllNoticePaging(searchdto);
			
			ModelAndView mv = new ModelAndView();
			mv.addObject("response", notices);
			mv.setViewName("board/notice/noticeMain");
			return mv;
		}
	
	


	@GetMapping("/noticeWrite")
	public String noticeWrite() {
		return "board/notice/noticeWrite";
	}
	
	@GetMapping("/noticeDetail")
	public String noticeDetail() {
		return "board/notice/noticeDetail";
	}
	

}



