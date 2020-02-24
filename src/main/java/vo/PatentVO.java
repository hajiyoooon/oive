package vo;

public class PatentVO {
    private int id;
    private String userId;
    private String name;
    private String country; 
    private String pubNumber;
    private String pubDate;
    private int fileId;

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

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
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

    public int getFildId() {
        return fileId;
    }

    public void setFildId(int fildId) {
        this.fileId = fildId;
    }
	
}
