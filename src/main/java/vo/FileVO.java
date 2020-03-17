package vo;

import org.springframework.web.multipart.MultipartFile;

public class FileVO {
    private int fileId;
    private String uploadDate;
    private String profileCategory;
    private int id;
    private String userId;
    private String fileName;
    private MultipartFile uploadFile;
   
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	public int getFileId() {
		return fileId;
	}
	public void setFileId(int fileId) {
		this.fileId = fileId;
	}
	public String getUploadDate() {
		return uploadDate;
	}
	public void setUploadDate(String uploadDate) {
		this.uploadDate = uploadDate;
	}
	public String getProfileCategory() {
		return profileCategory;
	}
	public void setProfileCategory(String profileCategory) {
		this.profileCategory = profileCategory;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}


   
}