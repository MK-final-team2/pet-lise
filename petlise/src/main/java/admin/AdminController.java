package admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import admin.notice.AdminFindAllNoticeRequestDTO;
import admin.notice.AdminNoticeRequestDTO;
import admin.notice.AdminNoticeResponseDTO;
import admin.notice.AdminNoticeService;
import admin.notice.AdminQnAResponseDTO;
import jakarta.servlet.http.HttpSession;

@Controller
@RequestMapping("/admin")
public class AdminController {

	@Autowired
	@Qualifier("adminNoticeServiceImpl")
	AdminNoticeService service;

	@RequestMapping
	public String adminHome() {
		return "admin/dashboard";
	}

	@RequestMapping("/usermanagement")
	public String userManagement() {
		return "admin/userManagement";
	}

	@RequestMapping("/createnotice")
	public String editNotice(HttpSession session, AdminNoticeRequestDTO dto) {
		if (session.getAttribute("user_id") != null) {
			String user_id = session.getAttribute("user_id").toString();

			dto.setUser_id(user_id);
			service.insertNotice(dto);
		}
		
		return "admin/editNotice";
	}

	@GetMapping("/noticemanagement")
	public String getNotice() {
		return "admin/noticeManagement";
	}
	
	@ResponseBody
	@RequestMapping("/noticemanagement")
	public List<AdminNoticeResponseDTO> notice(AdminFindAllNoticeRequestDTO dto) {
		int pages = (dto.getPage() - 1) * 10;
		dto.setPage(pages);
		List<AdminNoticeResponseDTO> notice_list = service.findAllNotice(dto);

		return notice_list;
	}
	
	@ResponseBody
	@RequestMapping("/qnamanagement")
	public List<AdminQnAResponseDTO> QnA(String keyword, int page) {
		int pages = (page - 1) * 10;

		List<AdminQnAResponseDTO> notice_list = service.findAllQnA(keyword, pages);

		return notice_list;
	}
}
