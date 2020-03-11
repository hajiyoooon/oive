package my.spring.oive;

public class PageControl {
	public int lineCount; // 한 화면의 글 수
	public int pageCount; // 한 화면의 페이지 수
	public int postCount; // 글 수
	public int pgNum; //현재 페이지 번호
	
	public PageControl(int postCount, int pgNum) {
		lineCount = 10;
		pageCount = 3;
		this.postCount = postCount;
		this.pgNum = pgNum;
	}
	
	int getPageCount() {
		return ((postCount - 1) / pageCount) + 1;
	}
	
	public int getPageStart() {
		return ( (pgNum - 1) / pageCount) * pageCount + 1;
	}
	
	public int getPageEnd() {
		return Math.min(getPageCount(), getPageStart() + pageCount - 1);
	}
	
	public int getRowStart() {
		return getRowEnd() - lineCount + 1;
	}
	
	public int getRowEnd() {
		return pgNum * lineCount;
	}

	public boolean isPreData() {
		if(getPageStart() != 1) return true;
		else return false;
	}
	
	public boolean isNextData() {
		if(getPageEnd() <= ((postCount-1) / lineCount) ) return true;
		else return false;
	}
	
	@Override
	public String toString() {
		return "[ " + postCount + " " + getPageStart() + " ]";
	}
}
