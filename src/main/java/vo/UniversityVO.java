package vo;

public class UniversityVO {
	private int id;
	private String userId;
	private String uName;
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
	private int fileId1;
	private int fileId2;
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
	public String getuName() {
		return uName;
	}
	public void setuName(String uName) {
		this.uName = uName;
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
	public double getTotalGrade() {
		return totalGrade;
	}
	public void setTotalGrade(double totalGrade) {
		this.totalGrade = totalGrade;
	}
	public double getMaxGrade() {
		return maxGrade;
	}
	public void setMaxGrade(double maxGrade) {
		this.maxGrade = maxGrade;
	}
	public double getMajorGrade() {
		return majorGrade;
	}
	public void setMajorGrade(double majorGrade) {
		this.majorGrade = majorGrade;
	}
	public int getIsTransfer() {
		return isTransfer;
	}
	public void setIsTransfer(String isTransfer) {
		if(isTransfer.equals("편입")) 
			this.isTransfer = 1;
		else this.isTransfer = 0;
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
	

	
	
}
