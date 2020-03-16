package vo;

public class LanguagesVO extends ProfileVO  {

	private String languageName;
	private String fluency;
	private String languageComments;
	private int fileId;

	public String getLanguageName() {
		return languageName;
	}
	public void setLanguageName(String languageName) {
		this.languageName = languageName;
	}
	public String getFluency() {
		return fluency;
	}
	public void setFluency(String fluency) {
		this.fluency = fluency;
	}
	public String getLanguageComments() {
		return languageComments;
	}
	public void setLanguageComments(String languageComments) {
		this.languageComments = languageComments;
	}
	public int getFileId() {
		return fileId;
	}
	public void setFileId(int fileId) {
		this.fileId = fileId;
	}
	
	
	
}
