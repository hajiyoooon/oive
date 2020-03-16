package vo;

public class SkillsVO extends ProfileVO  {
	private String skillsName;
	private String skillsLevel;
	private String skillsComments;

	public String getSkillsName() {
		return skillsName;
	}
	public void setSkillsName(String skillsName) {
		this.skillsName = skillsName;
	}
	public String getSkillsLevel() {
		return skillsLevel;
	}
	public void setSkillsLevel(String skillsLevel) {
		this.skillsLevel = skillsLevel;
	}
	public String getSkillsComments() {
		return skillsComments;
	}
	public void setSkillsComments(String skillsComments) {
		this.skillsComments = skillsComments;
	}	

}
