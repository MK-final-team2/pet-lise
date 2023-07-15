package admin.recipe;

import org.springframework.stereotype.Service;

@Service
public interface AdminRecipeService {
	public void insertRecipe(AdminRecipeRequestDTO dto);
	public AdminRecipeResponseDTO findAllRecipe();

}
