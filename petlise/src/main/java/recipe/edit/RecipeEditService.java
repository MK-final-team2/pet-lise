package recipe.edit;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import recipe.RecipeDTO;

@Service
public class RecipeEditService {
	
	@Autowired
	RecipeEditDAO dao;
	
	public RecipeDTO getRecipeEdit(String recipe_id){
		return dao.getRecipeEdit(recipe_id);
	}
	public int updateLastRecipe(String recipe_id) {
		return dao.updateLastRecipe(recipe_id);
	}
}
