package admin.notice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminNoticeServiceImpl implements AdminNoticeService {
	@Autowired
	AdminNoticeDAO dao;

	public void insertNotice(AdminNoticeRequestDTO dto) {
		dao.insertNotice(dto);
	}

	public List<AdminNoticeResponseDTO> findAllNotice(AdminFindAllNoticeRequestDTO dto){
		return dao.findAllNotice(dto);
	}
	
	public List<AdminQnAResponseDTO> findAllQnA(String keyword, int page){
		return dao.findAllQnA(keyword, page);
	}
}
