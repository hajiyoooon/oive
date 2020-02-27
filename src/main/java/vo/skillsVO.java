package vo;

public class skillsVO {
	private int id;
	private int userId;
	private String skillsName;
	private String level;
	private String skillsComments;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getSkillsName() {
		return skillsName;
	}
	public void setSkillsName(String skillsName) {
		this.skillsName = skillsName;
	}
	public String getLevel() {
		return level;
	}
	public void setLevel(String level) {
		this.level = level;
	}
	public String getComments() {
		return skillsComments;
	}
	public void setComments(String comments) {
		this.skillsComments = comments;
	}

	

}
