package admin.user;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface AdminUserDAO {
	public List<AdminUserResponseDTO> findAllUser(String keyword, int page);
	public List<AdminUserResponseDTO> findJoinUser();
	public int findTodayOrder();
	public int findTodayRecipe();
	public int findTodayBoard();
	public int findTodayPetplace();
}
