package admin.notice;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
public interface AdminNoticeService {
	public void insertNotice(AdminNoticeRequestDTO dto);
	public List<AdminNoticeResponseDTO> findAllNotice(AdminFindAllNoticeRequestDTO dto);
	public List<AdminQnAResponseDTO> findAllQnA(String keyword, int page);
}
