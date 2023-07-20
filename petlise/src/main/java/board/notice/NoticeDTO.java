package board.notice;

import java.util.Date;

public class NoticeDTO {
    int notice_id;
    int view_count;   
    String category;
    String user_id;
    String title;
    Date notice_created;
    Date notice_updated;

    
    public int getNotice_id() {
		return notice_id;
	}
	public void setNotice_id(int notice_id) {
		this.notice_id = notice_id;
	}
	public int getView_count() {
		return view_count;
	}
	public void setView_count(int view_count) {
		this.view_count = view_count;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public Date getNotice_created() {
		return notice_created;
	}
	public void setNotice_created(Date notice_created) {
		this.notice_created = notice_created;
	}
	public Date getNotice_updated() {
		return notice_updated;
	}
	public void setNotice_updated(Date notice_updated) {
		this.notice_updated = notice_updated;
	}

}
  