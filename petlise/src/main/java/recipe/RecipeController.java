
package recipe;

import java.io.IOException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import jakarta.servlet.http.HttpSession;
import upload.UploadService;

@Controller
@RequestMapping
public class RecipeController {
	private final RecipeService recipeService;

	@Autowired
	public RecipeController(RecipeService recipeService) {
		this.recipeService = recipeService;
	}

	@GetMapping("/recipecreate")
	public String showRecipeCreateForm() {
		return "recipe/recipeCreate";
	}

	@GetMapping("/recipelistbest")
	public String recipeListBest() {
		return "recipe/recipeListBest";
	}

	@GetMapping("/recipedetail")
	public String test() {
		return "recipe/recipeDetail";
	}

	@PostMapping("/recipecreate")
	public String createRecipe(RecipeDTO recipeDTO, HttpSession session) {
	    String user_id = (String) session.getAttribute("user_id");
	    recipeDTO.setRecipe_id(recipeDTO.getRecipe_id());
	    recipeService.insertRecipe(recipeDTO, user_id); // user_id 값을 전달
	    return "recipe/recipeCreate";
	}


	// 세션
	@RequestMapping("/recipecreate")
	public String recipeCreate(HttpSession session, RecipeDTO dto) {
		// 로그인 여부 확인
	

		if (session.getAttribute("user_id") != null && dto.getRecipe_title() != null) {
			System.out.println(dto.toString());
			String user_id = session.getAttribute("user_id").toString();
			dto.setUser_id(user_id);
		}
		return "recipe/recipeCreate";
	}
	

	
	@Value("${spring.cloud.gcp.storage.bucket}")
	private String bucketName;

	@Autowired
	UploadService upload;

	@ResponseBody
	@RequestMapping(value = "/api/image-upload-recipe", method = RequestMethod.POST)
	public String imageUpload(MultipartFile image, HttpSession session) throws IOException {
		String imageUrl = upload.uploadFile(image);

		return bucketName + "/" + imageUrl;
	}
}
