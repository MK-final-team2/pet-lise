package recipe;


import java.sql.Timestamp;
import java.util.UUID;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RecipeService {
    private final RecipeDAO recipeDAO;

    @Autowired
    public RecipeService(RecipeDAO recipeDAO) {
        this.recipeDAO = recipeDAO;
    }
    
    public void createRecipe(RecipeDTO recipeDTO) {
        recipeDTO.setRecipe_id(UUID.randomUUID().toString());  // 게시글 ID 설정 (UUID 사용)
        recipeDTO.setRecipe_created_at(new Timestamp(System.currentTimeMillis()));  // 게시글 생성 시간 설정
        recipeDTO.setRecipe_updated_at(new Timestamp(System.currentTimeMillis()));  // 게시글 수정 시간 설정
        recipeDTO.setRecipe_category("나만의레시피");
        recipeDTO.setRecipe_of_the_month(0); //이달의 레시피 조건충족X false=0
        
        // 이미지 URL 설정
        String imageUrl = recipeDTO.getImage();
        recipeDTO.setImage(imageUrl);
        
        // Quill 에디터의 HTML 내용을 recipe_content로 설정
        String recipeContents = recipeDTO.getRecipe_contents();
        recipeDTO.setRecipe_contents(recipeContents);

        recipeDAO.insertRecipe(recipeDTO);  // 게시글 등록
    }
}
