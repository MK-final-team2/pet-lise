package admin.user;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface AdminUserService {
	public List<AdminUserResponseDTO> findAllUser(String keyword, int pages);
	public List<AdminUserResponseDTO> findJoinUser();
	public int findTodayOrder();
	public int findTodayRecipe();
	public int findTodayBoard();
	public int findTodayPetplace();
}
