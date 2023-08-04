package recipe.detail;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import recipe.RecipeDTO;
import user.UserDTO;
@Mapper
@Repository
public interface RecipeDetailDAO {

	RecipeDTO getRecipeDetail(String recipe_id);
	List<RecipeCommentDTO> getRecipeComment(String recipe_id);
	List<RecipeCommentDTO> getReply(String comment_id);
	int writeRecipeComment(RecipeCommentDTO dto);
	UserDTO getUserInfoRecipe(String user_id);
	int likeCount(RecipeLikeDTO dto); 
}
