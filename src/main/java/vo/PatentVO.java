package vo;

public class PatentVO extends ProfileVO  {

    private String patentName;
    private String country; 
    private String pubNumber;
    private String pubDate;
    private int fileId;
    private String patentComment;

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
	public String getPubNumber() {
		return pubNumber;
	}
	public void setPubNumber(String pubNumber) {
		this.pubNumber = pubNumber;
	}
	public String getPubDate() {
		return pubDate;
	}
	public void setPubDate(String pubDate) {
		this.pubDate = pubDate;
	}
	public int getFileId() {
		return fileId;
	}
	public void setFileId(int fileId) {
		this.fileId = fileId;
	}
	public String getPatentComment() {
		return patentComment;
	}
	public void setPatentComment(String patentComment) {
		this.patentComment = patentComment;
	}

	
}
