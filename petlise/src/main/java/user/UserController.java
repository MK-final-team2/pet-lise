package user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {
	@Autowired
	@Qualifier("userServiceImpl")
	UserService service;

	@Autowired
	private BCryptService bCryptService;

	@Value("${spring.bcrypt.number}")
	private int bcryptNum;

	/*
	 * @RequestMapping("/") public String home() { return "home"; }
	 */

	@GetMapping("/signup")
	public String getSignUp() {
		return "sign/signUp";
	}

	@PostMapping("/signup")
	public ModelAndView signUp(UserDTO userDTO) {
		ModelAndView mv = new ModelAndView();

		String password = userDTO.password;
		String hashPassword = bCryptService.encodeBcrypt(password, bcryptNum);
		userDTO.setPassword(hashPassword);

		service.insertUser(userDTO);

		mv.setViewName("redirect:/signin");

		return mv;
	}

	@GetMapping("/signin")
	public String getSignIn(HttpSession session) {
		session.setAttribute("error_message", "");

		return "sign/signIn";
	}

	@PostMapping("/signin")
	public ModelAndView signIn(String email, String password, HttpSession session) {
		ModelAndView mv = new ModelAndView();
		UserDTO dto = service.loginUser(email);

		if (dto != null) {
			if (bCryptService.matchesBcrypt(password, dto.getPassword(), bcryptNum)) {
				if (dto.getDeleted_at() == null) {
					session.setAttribute("user_id", dto.getUser_id());
					session.setAttribute("role", dto.getRole());

					if (dto.getRole().equals("admin")) {
						mv.setViewName("redirect:/admin");
					} else {						
						mv.setViewName("redirect:/");
					}
					
				} else {
					session.setAttribute("error_message", "로그인이 불가한 이메일입니다.");
					mv.setViewName("sign/signIn");
				}
			} else {
				session.setAttribute("error_message", "비밀번호를 확인해 주세요");
				session.removeAttribute("user_id");
				mv.setViewName("sign/signIn");
			}

		} else {
			session.setAttribute("error_message", "등록되지 않은 이메일 입니다");
			mv.setViewName("sign/signIn");
		}
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
	public ModelAndView NewPw(String email, String password) {
		ModelAndView mv = new ModelAndView();

		String hashPassword = bCryptService.encodeBcrypt(password, bcryptNum);

		service.newPassword(hashPassword, email);

		mv.setViewName("redirect:/signin");

		return mv;
	}
}