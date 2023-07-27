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
    
    @Value("${spring.cloud.gcp.storage.bucket}")
	private String bucketName;


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

	@GetMapping("/myrecipeliste")
	public String myRecipeListE() {
		return "recipe/myRecipeListE";
	}

	@GetMapping("/myrecipelisth")
	public String myRecipeListH() {
		return "recipe/myRecipeListH";
	}

	@GetMapping("/myrecipelistn")
	public String myRecipeListN() {
		return "recipe/myRecipeListN";
	}

	@GetMapping("/myrecipelists")
	public String myRecipeListS() {
		return "recipe/myRecipeListS";
	}

	@GetMapping("/recipelistbest")
	public String recipeListBest() {
		return "recipe/recipeListBest";
	}

	@GetMapping("/recipeliste")
	public String recipeListE() {
		return "recipe/recipeListE";
	}

	@GetMapping("/recipelisth")
	public String recipeListH() {
		return "recipe/recipeListH";
	}

	@GetMapping("/recipelistn")
	public String recipeListN() {
		return "recipe/recipeListN";
	}

	@GetMapping("/recipelists")
	public String recipeListS() {
		return "recipe/recipeListS";
	}

	@GetMapping("/recipedetail")
	public String test() {
		return "recipe/recipeDetail";
	}
    
    @PostMapping("/recipecreate")
    public String createRecipe(RecipeDTO recipeDTO) {
        recipeDTO.recipe_id = recipeDTO.getRecipe_id(); // 직접 필드에 접근하여 값을 설정
        
        recipeService.createRecipe(recipeDTO);
        String redirectUrl;
        if (recipeDTO.getMain_category().equals("일반식")) {
            redirectUrl = "redirect:/recipelist?recipeType=나만의레시피&searchType1=강아지&searchType2=일반식&searchType3=전체";
        } else if (recipeDTO.getMain_category().equals("건강식")) {
            redirectUrl = "redirect:/myrecipelisth";
        } else if (recipeDTO.getMain_category().equals("간식")) {
            redirectUrl = "redirect:/myrecipelists";
        } else {
            redirectUrl = "redirect:/myrecipeliste";
        }

        return redirectUrl;
    }
      
    @Autowired
  	UploadService upload;

    @ResponseBody
    @RequestMapping(value = "/api/image-upload-recipe", method = RequestMethod.POST)
    public String imageUpload(MultipartFile image, HttpSession session) throws IOException {
        String imageUrl = upload.uploadFile(image);

        return bucketName + "/" + imageUrl;
    }


}
