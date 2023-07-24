package admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {

//	@Autowired
//	@Qualifier("adminNoticeServiceImpl")
//	AdminNoticeService service;

	@RequestMapping
	public String adminHome() {
		return "admin/dashboard";
	}

	@RequestMapping("/usermanagement")
	public String userManagement() {
		return "admin/userManagement";
	}
}
