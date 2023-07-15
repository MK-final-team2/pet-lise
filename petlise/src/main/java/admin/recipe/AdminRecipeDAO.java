package admin.recipe;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface AdminRecipeDAO {
	public void insertRecipe(AdminRecipeRequestDTO dto);
	public AdminRecipeResponseDTO findAllRecipe();
}
