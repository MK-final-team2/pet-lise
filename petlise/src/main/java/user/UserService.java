package user;


public interface UserService {
	public int insertUser(UserDTO userDTO);
	public int checkEmail(String email);
}
