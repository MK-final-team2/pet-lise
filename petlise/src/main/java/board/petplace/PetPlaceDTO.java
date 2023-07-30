package board.petplace;

import java.util.Date;

import org.springframework.stereotype.Component;

import user.UserDTO;

@Component
public class PetPlaceDTO {
    int place_id;
    int view_count;
    int like_count;
    int comments;
    String user_id;
    String title;
    String category;
    String p_address;
    String p_detailaddress;
   	String petplace_contents;
    Date deleted_at;    
    Date petplace_created;
    Date petplace_updated;
    
    private UserDTO user;
    
    
    
    public String getP_detailaddress() {
		return p_detailaddress;
	}

	public void setP_detailaddress(String p_detailaddress) {
		this.p_detailaddress = p_detailaddress;
	}

    public int getComments() {
		return comments;
	}

	public void setComments(int comments) {
		this.comments = comments;
	}

	public String getP_address() {
		return p_address;
	}

	public void setP_address(String p_address) {
		this.p_address = p_address;
	}

	public String getPetplace_contents() {
		return petplace_contents;
	}

	public void setPetplace_contents(String petplace_contents) {
		this.petplace_contents = petplace_contents;
	}

	public Date getDeleted_at() {
		return deleted_at;
	}

	public void setDeleted_at(Date deleted_at) {
		this.deleted_at = deleted_at;
	}
    
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
    public UserDTO getUser() {
		return user;
	}
	public void setUser(UserDTO user) {
		this.user = user;
	}
    
    
}
