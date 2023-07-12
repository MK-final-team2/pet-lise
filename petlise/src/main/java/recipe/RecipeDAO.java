package recipe;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface RecipeDAO {
    void insertRecipe(RecipeDTO recipe);
    
}
