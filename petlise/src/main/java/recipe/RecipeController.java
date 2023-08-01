
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
import org.springframework.web.context.request.RequestContextHolder;
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
    
    @GetMapping("/myrecipelistbest")
	public String myRecipeListBest() {
		return "recipe/myRecipeListBest";
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
	public String createRecipe(RecipeDTO recipeDTO) {
	    recipeDTO.recipe_id = recipeDTO.getRecipe_id(); 
	    recipeService.insertRecipe(recipeDTO);
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
