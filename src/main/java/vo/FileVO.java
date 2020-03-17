package vo;

import org.springframework.web.multipart.MultipartFile;

public class FileVO {
    private String fileId;
    private String uploadDate;
    private String profileCategory;
    private String id;
    private String userId;
    private String fileName;
    private MultipartFile uploadFile;
   
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
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
	public String getFileId() {
		return fileId;
	}
	public void setFileId(String fileId) {
		this.fileId = fileId;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}


   
}