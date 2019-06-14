package com.bosomblog.entity;

public class PostType {
    private Integer ptypeId;

    private String ptypeName;

    public Integer getPtypeId() {
        return ptypeId;
    }

    public void setPtypeId(Integer ptypeId) {
        this.ptypeId = ptypeId;
    }

    public String getPtypeName() {
        return ptypeName;
    }

    public void setPtypeName(String ptypeName) {
        this.ptypeName = ptypeName;
    }

	@Override
	public String toString() {
		return "PostType [ptypeId=" + ptypeId + ", ptypeName=" + ptypeName
				+ "]";
	}
    
}