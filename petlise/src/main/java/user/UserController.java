package user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {
	@Autowired
	@Qualifier("userServiceImpl")
	UserService service;

	@RequestMapping("/signin")
	public ModelAndView signIn(String email, String password, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		UserDTO dto = service.loginUser(email);
		
		if (dto != null) {
			if (dto.getPassword().equals(password)) {
				session.setAttribute("user_id", dto.getUser_id());
				mv.setViewName("redirect:/home");
			} else {
				mv.setViewName("sign/signIn");
			}
		} else {
			mv.setViewName("sign/signIn");
		}
		return mv;
	}

	@GetMapping("/signup")
	public String getSignUp() {
		return "sign/signUp";
	}
	
	@PostMapping("/signup")
	public ModelAndView signUp(UserDTO userDTO) {
		ModelAndView mv = new ModelAndView();
		service.insertUser(userDTO);
		
		mv.setViewName("redirect:/signin");
		
		return mv;
	}

	@PostMapping("/checkemail")
	@ResponseBody
	public int checkEmail(String email) {
		int count = service.checkEmail(email);

		return count;
	}

	@GetMapping("/searchuser")
	public String searchUser() {
		return "sign/searchUser";
	}
	
	@PostMapping("/findpw")
	public ModelAndView findId(String name, String email) {
		ModelAndView mv = new ModelAndView();
		String dto = service.searchUser(name, email);
		
		if (dto != null) {
			mv.addObject("userInfo", dto);
			mv.setViewName("sign/newPw");
		} else {
			mv.setViewName("sign/nullPw");
		}

		return mv;
	}

	@PostMapping("/newpw")
	public String NewPw(String email, String password) {
		service.newPassword(password, email);
		
		return "sign/signIn";
	}
}