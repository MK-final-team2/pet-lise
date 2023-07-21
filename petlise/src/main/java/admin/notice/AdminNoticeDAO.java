package admin.notice;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface AdminNoticeDAO {
	public void insertNotice(AdminNoticeRequestDTO dto);
	public List<AdminNoticeResponseDTO> findAllNotice(AdminFindAllNoticeRequestDTO dto);
	public List<AdminQnAResponseDTO> findAllQnA(String keyword, int page);
}
