package recipe;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class NavController {
	
	@GetMapping("/nav")
	public String test() {
		return "nav/nav";
	}
}
