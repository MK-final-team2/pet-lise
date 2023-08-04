package board.petplace;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;
import pagination.PagingResponse;
import pagination.SearchDTO;


@Controller

public class PetPlaceController {

	@Autowired
	@Qualifier("petPlaceServiceImpl")
	private PetPlaceService service;

	// 펫플레이스 리스트
	@GetMapping("/petplaceMain")
	public ModelAndView petPlaceList(@ModelAttribute SearchDTO searchdto) {
		PagingResponse<PetPlaceDTO> petPlaces = service.getAllPetPlacePaging(searchdto);

		ModelAndView mv = new ModelAndView();
		mv.addObject("response", petPlaces);
		mv.setViewName("board/petplaceMain");
		return mv;
	}

//펫플레이스 작성
	@RequestMapping("/petplaceWriteform")
	public ResponseEntity<Integer> petplaceWriteform(HttpSession session, PetPlaceDTO dto, Model model) {
		// 로그인 여부 확인
		if (session.getAttribute("user_id") != null && dto.getTitle() != null) {
			String user_id = session.getAttribute("user_id").toString();
			dto.setUser_id(user_id);
		}

		int seq = service.insertPetPlace(dto); // 새로 생성된 seq를 얻어옵니다.

		// ResponseEntity를 사용하여 seq를 응답합니다.
		return new ResponseEntity<Integer>(seq, HttpStatus.OK);
	}
	@RequestMapping("/petplacecommentWrite")
	private String insertComment(@RequestParam("comment_id")String comment_id, 
	@RequestParam("comment_contents")String comment_contents, HttpSession session)throws Exception{
	PetPlaceCommentDTO petplacecommentdto = new PetPlaceCommentDTO();
	petplacecommentdto.setComment_contents(comment_contents);
	petplacecommentdto.setComment_id(comment_id);
	service.insertComment(petplacecommentdto);
	int seq = (int) session.getAttribute("seq");
	String redirect_url = "redirect:/petplaceDetail?seq="+seq;
	
		
		return redirect_url;
		
	}

	@GetMapping("/petplaceWrite")
	public String petplacewrite() {
		// 펫 플레이스 등록으로 이동합니다.
		return "board/petplaceWrite";
	}

	// delete
	@RequestMapping("/petplaceDelete")
	public ResponseEntity<Void> petplaceDetail(PetPlaceDTO dto, HttpSession session) {
		Integer seq = (Integer) session.getAttribute("seq");
		dto.setSeq(seq);

		service.deletepetplace(seq);

		return new ResponseEntity(HttpStatus.OK);
	}

//상세페이지
	@RequestMapping("/getpetplace")
	public String getFindpetplace(Model model, @RequestParam("seq") int seq, HttpSession session) {
	    PetPlaceDTO petplaceInfo = service.findpetplace(seq);
	    service.viewCnt(seq);

		/*
		 * // 후기 좋아요 여부 String user_id = (String) session.getAttribute("user_id");
		 * 
		 * // Null check for PetPlaceLike if (petplaceInfo.getPetplacelike() != null) {
		 * if (user_id != null) { if (service.isLikeReview(user_id,
		 * petplaceInfo.getPetplacelike().getPlace_id()) > 0) {
		 * petplaceInfo.getPetplacelike().setIs_like(true); } else {
		 * petplaceInfo.getPetplacelike().setIs_like(false); } } }
		 */

	    model.addAttribute("petplaceInfo", petplaceInfo);

	    model.addAttribute("seq", seq);
	    session.setAttribute("seq", seq);

	    return "board/petplaceDetail";
	}


	// update
	@RequestMapping("/getUpdatepetplace")
	public String getUpdatepetplace(Model model, @RequestParam("seq") int seq, HttpSession session) {
		PetPlaceDTO petplaceInfo = service.findpetplace(seq);
		model.addAttribute("petplaceInfo", petplaceInfo);
		model.addAttribute("seq", seq); // seq를 모델 속성으로 추가
		session.setAttribute("seq", seq);

		return "board/petplaceUpdate";
	}

	@RequestMapping("/petplaceUpdate")
	public ResponseEntity<Integer> petplaceUpdate(PetPlaceDTO dto, HttpSession session) {
		// 세션에서 seq를 읽어옴
		Integer seq = (Integer) session.getAttribute("seq");

		// DTO에 세션에서 읽어온 seq를 설정
		dto.setSeq(seq);

		// 서비스를 호출하여 쿼리 실행
		seq = service.updatepetplace(dto); // 새로 생성된 seq를 얻어옵니다.

		// ResponseEntity를 사용하여 seq를 응답합니다.
		return new ResponseEntity<Integer>(seq, HttpStatus.OK);
	}
	
	@GetMapping("/getCommentList")
	@ResponseBody
	private List<PetPlaceCommentDTO> getCommentList(@RequestParam("Comment_id")String Comment_id)throws Exception{
		PetPlaceCommentDTO petplacecommentdto = new PetPlaceCommentDTO();
		petplacecommentdto.setComment_id(Comment_id);
		return service.getCommentList(petplacecommentdto);
 	}
			

	/*
	 * @RequestMapping("/petplacelikeup")
	 * 
	 * @ResponseBody public String petplacelikeup(String user_id, String place_id,
	 * String comment_id) { int result = service.likeUp(user_id, place_id,
	 * comment_id); return "{\"result\":\"" + result + "\"}"; }
	 * 
	 * @RequestMapping("/petplacelikedown")
	 * 
	 * @ResponseBody public String petplacelikedown(String user_id, String place_id)
	 * { int result = service.likeDown(user_id, place_id); return "{\"result\":\"" +
	 * result + "\"}"; }
	 */

}
