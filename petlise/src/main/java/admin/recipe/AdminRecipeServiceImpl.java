package admin.recipe;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminRecipeServiceImpl implements AdminRecipeService {
	@Autowired
	AdminRecipeDAO dao;

	@Override
	public void insertRecipe(AdminRecipeRequestDTO dto) {
		dao.insertRecipe(dto);
	}

	@Override
	public AdminRecipeResponseDTO findAllRecipe() {
		return dao.findAllRecipe();
	}
}
