package user;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class UserController {
	@Autowired
	@Qualifier("userServiceImpl")
	UserService service;

	@RequestMapping("/signin")
	public String signIn() {
		return "sign/signIn";
	}

	@GetMapping("/signup")
	public String getSignUp() {
		return "sign/signUp";
	}

	@PostMapping("/signup")
	public String signUp(UserDTO userDTO) {
		service.insertUser(userDTO);

		return "sign/signIn";
	}

	@PostMapping("/checkemail")
	@ResponseBody
	public int checkEmail(String email) {
		int count = service.checkEmail(email);

		return count;
	}

	@RequestMapping("/findid")
	public String FindId() {
		return "sign/findId";
	}

	@RequestMapping("/findpw")
	public String FindPw() {
		return "sign/findPw";
	}

	@RequestMapping("/newpw")
	public String NewPw() {
		return "sign/newPw";
	}

}