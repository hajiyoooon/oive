package vo;

public class FileVO {
    private Integer fileId;
    private byte[] fileCon;
    private String upDate;
    private String profilCategory;
    private Integer id;
    private String userId;
    private String fileName;

    public Integer getFileId() {
        return fileId;
    }

    public void setFileId(Integer fileId) {
        this.fileId = fileId;
    }

    public byte[] getFileCon() {
        return fileCon;
    }

    public void setFileCon(byte[] fileCon) {
        this.fileCon = fileCon;
    }

    public String getUpDate() {
        return upDate;
    }

    public void setUpDate(String upDate) {
        this.upDate = upDate;
    }

    public String getProfilCategory() {
        return profilCategory;
    }

    public void setProfilCategory(String profilCategory) {
        this.profilCategory = profilCategory;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
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