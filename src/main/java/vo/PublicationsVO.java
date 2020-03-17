package vo;

public class PublicationsVO extends ProfileVO  {

	private String pubName;
	private String pubDate;
	private String authors;
	private String pubNumber;
	private String fileId;
	private String publisher;

	public String getPubName() {
		return pubName;
	}
	public void setPubName(String pubName) {
		this.pubName = pubName;
	}
	public String getPubDate() {
		return pubDate;
	}
	public void setPubDate(String pubDate) {
		this.pubDate = pubDate;
	}
	public String getAuthors() {
		return authors;
	}
	public void setAuthors(String authors) {
		this.authors = authors;
	}
	public String getPubNumber() {
		return pubNumber;
	}
	public void setPubNumber(String pubNumber) {
		this.pubNumber = pubNumber;
	}
	public String getFileId() {
		return fileId;
	}
	public void setFileId(String fileId) {
		this.fileId = fileId;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}

	
}
