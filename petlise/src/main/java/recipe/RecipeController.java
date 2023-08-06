package recipe;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

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
            String user_id = session.getAttribute("user_id").toString();
            dto.setUser_id(user_id);
        }
        return "recipe/recipeCreate";
    }

    @PostMapping("/recipe/likeup")
    @ResponseBody
    public String likeup(String user_id, String recipe_id) {
        int result = recipeService.likeUp(user_id, recipe_id);
        return "{\"result\":\"" + result + "\"}";
    }

    @PostMapping("/recipe/likedown")
    @ResponseBody
    public String likedown(String user_id, String recipe_id) {
        int result = recipeService.likeDown(user_id, recipe_id);
        return "{\"result\":\"" + result + "\"}";
    }
//
//    @PostMapping("/likeUp")
//    public ResponseEntity<?> likeUp(HttpServletRequest request, @RequestParam String recipe_id) {
//        // 현재 로그인한 사용자의 user_id를 세션에서 가져옴
//        String user_id = (String) request.getSession().getAttribute("user_id");
//        if (user_id == null) {
//            // 로그인되지 않은 경우
//            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).build();
//        }
//
//        // recipe_id와 user_id로 중복 클릭 여부 확인
//        boolean isIs_like = recipeService.isRecipeLiked(user_id, recipe_id);
//        if (isIs_like) {
//            // 이미 좋아요를 누른 경우
//            return ResponseEntity.status(HttpStatus.CONFLICT).build();
//        }
//
//        // 좋아요 버튼 누름
//        int result = recipeService.likeUp(user_id, recipe_id);
//        return ResponseEntity.ok(result);
//    }
//
//    @PostMapping("/likeDown")
//    public ResponseEntity<?> likeDown(HttpServletRequest request, @RequestParam String recipe_id) {
//        // 현재 로그인한 사용자의 user_id를 세션에서 가져옴
//        String user_id = (String) request.getSession().getAttribute("user_id");
//        if (user_id == null) {
//            // 로그인되지 않은 경우
//            return ResponseEntity.status(HttpStatus.UNAUTHORIZED).build();
//        }
//
//        // recipe_id와 user_id로 중복 클릭 여부 확인
//        boolean isIs_like = recipeService.isRecipeLiked(user_id, recipe_id);
//        if (!isIs_like) {
//            // 아직 좋아요를 누르지 않은 경우
//            return ResponseEntity.status(HttpStatus.CONFLICT).build();
//        }
//
//        // 좋아요 버튼 취소
//        int result = recipeService.likeDown(user_id, recipe_id);
//        return ResponseEntity.ok(result);
//    }
//    
    @GetMapping("/recipedetail")
    public String showRecipeDetail(@RequestParam("recipe_id") String recipe_id, Model model) {
        // 조회수 증가를 위해 RecipeService의 recipeViewCount 메서드를 호출
        recipeService.recipeViewCount(recipe_id);

        // 나머지 레시피 상세 정보를 가져오는 로직 추가
        RecipeDTO recipe = recipeService.getRecipeDetailById(recipe_id);
        model.addAttribute("recipe", recipe);

        return "recipe/recipeDetail";
    }

}
