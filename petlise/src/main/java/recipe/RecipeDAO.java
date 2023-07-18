package recipe;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface RecipeDAO {
    public void insertRecipe(RecipeDTO recipe);
    
}
