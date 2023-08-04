package recipe.detail;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import recipe.RecipeDTO;
import user.UserDTO;

@Service
public class RecipeDetailService {
	
	@Autowired
	RecipeDetailDAO dao;
	
	public RecipeDTO getRecipeDetail(String recipe_id){
		return dao.getRecipeDetail(recipe_id);
	}
	public List<RecipeCommentDTO> getRecipeComment(String recipe_id){
		return dao.getRecipeComment(recipe_id);
	}
	public List<RecipeCommentDTO> getReply(String comment_id){
		return dao.getReply(comment_id);
	}
	public int writeRecipeComment(RecipeCommentDTO dto) {
		return dao.writeRecipeComment(dto);
	}
	public UserDTO getUserInfoRecipe(String user_id){
		return dao.getUserInfoRecipe(user_id);
	}
	public int likeCount(RecipeLikeDTO dto) {
		return dao.likeCount(dto);
	}
}
