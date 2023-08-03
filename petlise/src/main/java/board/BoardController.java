package board;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;
import pagination.PagingResponse;
import pagination.SearchDTO;

@Controller

public class BoardController {

	@Autowired
	@Qualifier("boardServiceImpl")
	private BoardService service;

	// 펫플레이스 리스트
	@GetMapping("/boardMain")
	public ModelAndView boardList(@ModelAttribute SearchDTO searchdto) {
		PagingResponse<BoardDTO> boards = service.getAllBoardPaging(searchdto);

		ModelAndView mv = new ModelAndView();
		mv.addObject("response", boards);
		mv.setViewName("board/boardMain");
		return mv;
	}

//펫플레이스 작성
	@RequestMapping("/boardWriteform")
	public ResponseEntity<Integer> boardWriteform(HttpSession session, BoardDTO dto, Model model) {
		// 로그인 여부 확인
		if (session.getAttribute("user_id") != null && dto.getBoard_title() != null) {
			String user_id = session.getAttribute("user_id").toString();
			dto.setUser_id(user_id);
		}

		int seq = service.insertBoard(dto); // 새로 생성된 seq를 얻어옵니다.

		// ResponseEntity를 사용하여 seq를 응답합니다.
		return new ResponseEntity<Integer>(seq, HttpStatus.OK);
	}

	@GetMapping("/boardWrite")
	public String boardwrite() {
		// 펫 플레이스 등록으로 이동합니다.
		return "board/boardWrite";
	}

	// delete
	@RequestMapping("/boardDelete")
	public ResponseEntity<Void> boardDetail(BoardDTO dto, HttpSession session) {
		Integer seq = (Integer) session.getAttribute("seq");
		dto.setSeq(seq);

		service.deleteboard(seq);

		return new ResponseEntity(HttpStatus.OK);
	}

	@RequestMapping("/getboard")
	public String getFindboard(Model model, @RequestParam("seq") int seq, HttpSession session) {
		service.viewCnt(seq);
		BoardDTO boardInfo = service.findboard(seq);
		model.addAttribute("boardInfo", boardInfo);
		model.addAttribute("seq", seq);
		session.setAttribute("seq", seq);
		return "board/boardDetail";
	}

	// update
	@RequestMapping("/getUpdateboard")
	public String getUpdateboard(Model model, @RequestParam("seq") int seq, HttpSession session) {
		BoardDTO boardInfo = service.findboard(seq);
		model.addAttribute("boardInfo", boardInfo);
		model.addAttribute("seq", seq); // seq를 모델 속성으로 추가
		session.setAttribute("seq", seq);

		return "board/boardUpdate";
	}

	@RequestMapping("/boardUpdate")
	public ResponseEntity<Integer> boardUpdate(BoardDTO dto, HttpSession session) {
		// 세션에서 seq를 읽어옴
		Integer seq = (Integer) session.getAttribute("seq");

		// DTO에 세션에서 읽어온 seq를 설정
		dto.setSeq(seq);

		// 서비스를 호출하여 쿼리 실행
		 seq = service.updateboard(dto); // 새로 생성된 seq를 얻어옵니다.

		// ResponseEntity를 사용하여 seq를 응답합니다.
		return new ResponseEntity<Integer>(seq, HttpStatus.OK);
	}

}
