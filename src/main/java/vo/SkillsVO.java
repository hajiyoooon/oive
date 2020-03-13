package vo;

public class SkillsVO extends ProfileVO  {
	private String skillsName;
	private String level;
	private String skillsComments;

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
