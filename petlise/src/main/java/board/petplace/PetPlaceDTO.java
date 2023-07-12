package board.petplace;

import java.util.Date;

public class PetPlaceDTO {
    private int place_id;
    private int view_count;
    private int like_count;
    private String user_id;
    private String title;
    private String category;
    private Date petplace_created;
    private Date petplace_updated;
	public int getPlace_id() {
		return place_id;
	}
	public void setPlace_id(int place_id) {
		this.place_id = place_id;
	}
	public int getView_count() {
		return view_count;
	}
	public void setView_count(int view_count) {
		this.view_count = view_count;
	}
	public int getLike_count() {
		return like_count;
	}
	public void setLike_count(int like_count) {
		this.like_count = like_count;
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
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public Date getPetplace_created() {
		return petplace_created;
	}
	public void setPetplace_created(Date petplace_created) {
		this.petplace_created = petplace_created;
	}
	public Date getPetplace_updated() {
		return petplace_updated;
	}
	public void setPetplace_updated(Date petplace_updated) {
		this.petplace_updated = petplace_updated;
	}
    

}