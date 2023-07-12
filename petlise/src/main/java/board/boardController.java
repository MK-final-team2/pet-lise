package board;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class boardController {
	
	@GetMapping("/boardMain")
	public String boardMain() {
		return "/board/boardMain";
	}


	@GetMapping("/boardWrite")
	public String boardWrite() {
		return "/board/boardWrite";
	}
    
	@GetMapping("/petplaceMain")
	public String petplaceMain() {
		return "/board/petplaceMain";
	}

	@GetMapping("/petplaceWrite")
	public String petplaceWrite() {
		return "/board/petplaceWrite";
	}
	
	@GetMapping("/petplaceDetail")
	public String petplaceDetail() {
		return "/board/petplaceDetail";
	}
	

}
