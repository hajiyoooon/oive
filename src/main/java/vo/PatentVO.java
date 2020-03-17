package vo;

public class PatentVO extends ProfileVO  {

    private String patentName;
    private String country; 
    private String patNumber;
    private String patDate;
    public String getPatNumber() {
		return patNumber;
	}
	public void setPatNumber(String patNumber) {
		this.patNumber = patNumber;
	}
	public String getPatDate() {
		return patDate;
	}
	public void setPatDate(String patDate) {
		this.patDate = patDate;
	}
	public String getPatentComments() {
		return patentComments;
	}
	public void setPatentComments(String patentComments) {
		this.patentComments = patentComments;
	}
	private String fileId;
    private String patentComments;

	public String getPatentName() {
		return patentName;
	}
	public void setPatentName(String patentName) {
		this.patentName = patentName;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	
	public String getFileId() {
		return fileId;
	}
	public void setFileId(String fileId) {
		this.fileId = fileId;
	}
	
	
}
