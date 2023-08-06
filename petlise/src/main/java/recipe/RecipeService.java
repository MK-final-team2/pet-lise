
package recipe;


import java.sql.Timestamp;
import java.util.HashMap;
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
    
    
    public void insertRecipe(RecipeDTO recipeDTO, String user_id) {
        recipeDTO.setRecipe_id(UUID.randomUUID().toString());  // 게시글 ID 설정 (UUID 사용)
        recipeDTO.setRecipe_created_at(new Timestamp(System.currentTimeMillis()));  // 게시글 생성 시간 설정
        recipeDTO.setRecipe_updated_at(new Timestamp(System.currentTimeMillis()));  // 게시글 수정 시간 설정
        recipeDTO.setRecipe_category("나만의레시피");
        recipeDTO.setRecipe_of_the_month(0); //이달의 레시피 조건충족X false=0
        recipeDTO.setUser_id(user_id);
        
        // 이미지 URL 설정
        String imageUrl = recipeDTO.getImage();
        recipeDTO.setImage(imageUrl);
        
        // Quill 에디터의 HTML 내용을 recipe_content로 설정
        String recipeContents = recipeDTO.getRecipe_contents();
        recipeDTO.setRecipe_contents(recipeContents);
        
        // 레시피 등록시 사용자 포인트 업데이트
        recipeDAO.updateUserPoint(user_id, 500); // 50 포인트 추가, 필요에 따라 조정


        recipeDAO.insertRecipe(recipeDTO);  // 게시글 등록
    }
    
  //좋아요 증가
  	int likeUp(String user_id,String recipe_id) {
  		HashMap<String, String> map = new HashMap<>();
  		map.put("user_id", user_id);
  		map.put("recipe_id", recipe_id);
  		
  		int result1 = recipeDAO.likeUp(recipe_id);
  		int result2 = recipeDAO.insertLike(map);
  		
  		return result1+result2;
  	};
  	
  	//좋아요 감소
  	int likeDown(String user_id,String recipe_id){
  		HashMap<String, String> map = new HashMap<>();
  		map.put("user_id", user_id);
  		map.put("recipe_id", recipe_id);
  		
  		int result1 = recipeDAO.likeDown(recipe_id);
  		int result2 = recipeDAO.deleteLike(map);
  		
  		return result1+result2;
  	};
  	
  	 
  	public boolean isRecipeLiked(String user_id, String recipe_id) {
  	    return recipeDAO.isRecipeLiked(user_id, recipe_id);
  	}
  	 
  	public RecipeDTO getRecipeDetailById(String recipe_id) {
        return recipeDAO.getRecipeDetailById(recipe_id);
    }
  	 
  	 // 레시피 조회수 증가 메소드
    public void recipeViewCount(String recipe_id) {
        recipeDAO.recipeViewCount(recipe_id);
    }
  	 
}

