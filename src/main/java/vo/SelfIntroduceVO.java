package vo;

public class SelfIntroduceVO {
    private int id;
    private String userId;
    private String question;
    private String answer;
    private String applyDate;
    private String appliedCompany;
    private String writeDate;
    private String editDate;
    private String keywords;

    public String getKeywords() {
		return keywords;
	}

	public void setKeywords(String keywords) {
		this.keywords = keywords;
	}

	public String getApplyDate() {
		return applyDate;
	}

	public void setApplyDate(String applyDate) {
		this.applyDate = applyDate;
	}

	public String getEditDate() {
		return editDate;
	}

	public void setEditDate(String editDate) {
		this.editDate = editDate;
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

	public String getQuestion() {
        return question;
    }

    public void setQuestion(String question) {
        this.question = question;
    }

    public String getAnswer() {
        return answer;
    }

    public void setAnswer(String answer) {
        this.answer = answer;
    }

    public String getWriteDate() {
        return writeDate;
    }

    public void setWriteDate(String writeDate) {
        this.writeDate = writeDate;
    }

    public String getAppliedCompany() {
        return appliedCompany;
    }

    public void setAppliedCompany(String appliedCompany) {
        this.appliedCompany = appliedCompany;
    }

}
