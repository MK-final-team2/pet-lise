package board;

import java.util.Date;

public class BoardDTO {
    int board_id;
    int board_view;
    int like;
    String user_id;
    String board_title;
    Date board_created;
    Date board_updated;
    
    
    public int getBoard_id() {
		return board_id;
	}
	public void setBoard_id(int board_id) {
		this.board_id = board_id;
	}
	public int getBoard_view() {
		return board_view;
	}
	public void setBoard_view(int board_view) {
		this.board_view = board_view;
	}
	public int getLike() {
		return like;
	}
	public void setLike(int like) {
		this.like = like;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getBoard_title() {
		return board_title;
	}
	public void setBoard_title(String board_title) {
		this.board_title = board_title;
	}
	public Date getBoard_created() {
		return board_created;
	}
	public void setBoard_created(Date board_created) {
		this.board_created = board_created;
	}
	public Date getBoard_updated() {
		return board_updated;
	}
	public void setBoard_updated(Date board_updated) {
		this.board_updated = board_updated;
	}
    
}