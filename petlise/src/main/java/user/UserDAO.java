package user;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface UserDAO {
	public int insertUser(UserDTO userDTO);
	public int checkEmail(String email);

}
