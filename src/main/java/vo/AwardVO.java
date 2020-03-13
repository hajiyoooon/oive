package vo;

public class AwardVO extends ProfileVO{
	private String awardName;
	private String aquiredDate;
	private String orgName;
	private String fileId;
	private String awardType;
	private String awardComments;

	public String getAwardName() {
		return awardName;
	}
	public void setAwardName(String awardName) {
		this.awardName = awardName;
	}
	public String getAquiredDate() {
		return aquiredDate;
	}
	public void setAquiredDate(String aquiredDate) {
		this.aquiredDate = aquiredDate;
	}
	public String getOrgName() {
		return orgName;
	}
	public void setOrgName(String orgName) {
		this.orgName = orgName;
	}
	public String getFileId() {
		return fileId;
	}
	public void setFileId(String fileId) {
		this.fileId = fileId;
	}
	public String getAwardType() {
		return awardType;
	}
	public void setAwardType(String awardType) {
		this.awardType = awardType;
	}
	public String getAwardComments() {
		return awardComments;
	}
	public void setAwardComments(String awardComments) {
		this.awardComments = awardComments;
	}	
}
