package vo;

public class ProfileVO {
	protected int id;
	protected String userId;
	
	public int getId() {
		return id;
	}
	public void setId(String id) {
		if(id == null) return;
		else if(id=="") return;
		try {
			this.id = Integer.parseInt(id);
		} catch (Exception e) {
			return;
		}
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}

}
