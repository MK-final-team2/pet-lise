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
	public int writeRecipeComment(RecipeCommentDTO dto) {
		return dao.writeRecipeComment(dto);
	}
	public int editComment(RecipeCommentDTO dto) {
		return dao.editComment(dto);
	}
	public UserDTO getUserInfoRecipe(String user_id){
		return dao.getUserInfoRecipe(user_id);
	}
	public boolean checkLike(RecipeLikeDTO dto) {
		return dao.checkLike(dto);
	}
	public boolean liked(RecipeLikeDTO dto) {
		return dao.liked(dto);
	}
	public int likeCount(RecipeLikeDTO dto) {
		return dao.likeCount(dto);
	}
	public int updateLike(RecipeLikeDTO dto) {
		return dao.updateLike(dto);
	}
	public int recipeLike(RecipeDTO dto) {
		return dao.recipeLike(dto);
	}
	public UserDTO getUserProfile(String recipe_id) {
		return dao.getUserProfile(recipe_id);
	}
	public int deleteRecipeComment(String comment_id) {
		return dao.deleteRecipeComment(comment_id);
	}
	public void incrementViewCount(String recipe_id) {
		dao.incrementViewCount(recipe_id);
	}
}
