package recipe.list;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import pagination.SearchDTO;


@Mapper
@Repository
public interface RecipeListDAO {
	List<RecipeListDTO> getAllRecipe();
	int deleteRecipe(String recipe_id);	
	int updateRecipe(RecipeListDTO dto);
	String getRecipeName(String recipe_id);
	
	//Pagination
	List<RecipeListDTO> getAllRecipePaging(SearchDTO dto);
	Integer getCount(SearchDTO dto); 
} 