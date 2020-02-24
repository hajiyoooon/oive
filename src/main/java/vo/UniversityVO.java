package vo;

public class UniversityVO {
	private int id;
	private int userId;
	private String enrollDate;
	private String gradDate;
	private String status;
	private String degree;
	private String majorType;
	private String majorName;
	private double totalGrade;
	private double maxGrade;
	private double majorGrade;
	private int isTransfer;
	private String uName;
	private int fileId1;
	public double getMajorGrade() {
		return majorGrade;
	}
	public void setMajorGrade(double majorGrade) {
		this.majorGrade = majorGrade;
	}
	public String getuName() {
		return uName;
	}
	public void setuName(String uName) {
		this.uName = uName;
	}
	public int getFileId1() {
		return fileId1;
	}
	public void setFileId1(int fileId1) {
		this.fileId1 = fileId1;
	}
	public int getFileId2() {
		return fileId2;
	}
	public void setFileId2(int fileId2) {
		this.fileId2 = fileId2;
	}
	public void setTotalGrade(double totalGrade) {
		this.totalGrade = totalGrade;
	}
	public void setMaxGrade(double maxGrade) {
		this.maxGrade = maxGrade;
	}
	public void setIsTransfer(int isTransfer) {
		this.isTransfer = isTransfer;
	}
	private int fileId2;
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
	public String getEnrollDate() {
		return enrollDate;
	}
	public void setEnrollDate(String enrollDate) {
		this.enrollDate = enrollDate;
	}
	public String getGradDate() {
		return gradDate;
	}
	public void setGradDate(String gradDate) {
		this.gradDate = gradDate;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getDegree() {
		return degree;
	}
	public void setDegree(String degree) {
		this.degree = degree;
	}
	public String getMajorType() {
		return majorType;
	}
	public void setMajorType(String majorType) {
		this.majorType = majorType;
	}
	public String getMajorName() {
		return majorName;
	}
	public void setMajorName(String majorName) {
		this.majorName = majorName;
	}

	
	
}
