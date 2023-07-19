package board.notice;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import pagination.SearchDTO;



@Mapper
@Repository
public interface NoticeDAO {
	int insertNotice(NoticeDTO dto);
	int maxNoticeNum();
	int countTotalNoticeNum();
	List<NoticeDTO> getAllNotice();
	int deleteNotice(String _id);	
	NoticeDTO getNoticeById(String Notice_id);
	int updateNotice(NoticeDTO dto);
	
	//Pagination
	List<NoticeDTO> getAllNoticePaging(SearchDTO dto);
	int getCount(SearchDTO dto);
	
	
}
