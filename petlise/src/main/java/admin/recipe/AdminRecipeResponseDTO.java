package admin.recipe;

public class AdminRecipeResponseDTO {
	String recipe_id, user_id, recipe_title, recipe_contents,
			recipe_created_at, image, recipe_category, pet_category,
			main_category, sub_category;
	boolean recipe_of_the_month;
	
	public String getRecipe_id() {
		return recipe_id;
	}
	public void setRecipe_id(String recipe_id) {
		this.recipe_id = recipe_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getRecipe_title() {
		return recipe_title;
	}
	public void setRecipe_title(String recipe_title) {
		this.recipe_title = recipe_title;
	}
	public String getRecipe_contents() {
		return recipe_contents;
	}
	public void setRecipe_contents(String recipe_contents) {
		this.recipe_contents = recipe_contents;
	}
	public String getRecipe_created_at() {
		return recipe_created_at;
	}
	public void setRecipe_created_at(String recipe_created_at) {
		this.recipe_created_at = recipe_created_at;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getRecipe_category() {
		return recipe_category;
	}
	public void setRecipe_category(String recipe_category) {
		this.recipe_category = recipe_category;
	}
	public String getPet_category() {
		return pet_category;
	}
	public void setPet_category(String pet_category) {
		this.pet_category = pet_category;
	}
	public String getMain_category() {
		return main_category;
	}
	public void setMain_category(String main_category) {
		this.main_category = main_category;
	}
	public String getSub_category() {
		return sub_category;
	}
	public void setSub_category(String sub_category) {
		this.sub_category = sub_category;
	}
	public boolean isRecipe_of_the_month() {
		return recipe_of_the_month;
	}
	public void setRecipe_of_the_month(boolean recipe_of_the_month) {
		this.recipe_of_the_month = recipe_of_the_month;
	}
	
}
