package com.bosomblog.entity;

import java.util.Date;

public class Posts {
    private Integer pid;

    private Users users;

    private String ptitle;

    private String pcontent;

    private PostType posttype;

    private Date pdate;

    private Integer pcomments;

    private Integer preadings;

    private Integer pstatus;

    private Integer plike;

    private Integer pprivate;

    private Integer paudit;

    private Integer pelite;

    public Integer getPid() {
        return pid;
    }

    public void setPid(Integer pid) {
        this.pid = pid;
    }


    public String getPtitle() {
        return ptitle;
    }

    public void setPtitle(String ptitle) {
        this.ptitle = ptitle;
    }

    public String getPcontent() {
        return pcontent;
    }

    public void setPcontent(String pcontent) {
        this.pcontent = pcontent;
    }

    public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public PostType getPosttype() {
		return posttype;
	}

	public void setPosttype(PostType posttype) {
		this.posttype = posttype;
	}

	public Date getPdate() {
        return pdate;
    }

    public void setPdate(Date pdate) {
        this.pdate = pdate;
    }

    public Integer getPcomments() {
        return pcomments;
    }

    public void setPcomments(Integer pcomments) {
        this.pcomments = pcomments;
    }

    public Integer getPreadings() {
        return preadings;
    }

    public void setPreadings(Integer preadings) {
        this.preadings = preadings;
    }

    public Integer getPstatus() {
        return pstatus;
    }

    public void setPstatus(Integer pstatus) {
        this.pstatus = pstatus;
    }

    public Integer getPlike() {
        return plike;
    }

    public void setPlike(Integer plike) {
        this.plike = plike;
    }

    public Integer getPprivate() {
        return pprivate;
    }

    public void setPprivate(Integer pprivate) {
        this.pprivate = pprivate;
    }

    public Integer getPaudit() {
        return paudit;
    }

    public void setPaudit(Integer paudit) {
        this.paudit = paudit;
    }

    public Integer getPelite() {
        return pelite;
    }

    public void setPelite(Integer pelite) {
        this.pelite = pelite;
    }

	@Override
	public String toString() {
		return "Posts [pid=" + pid + ", users=" + users + ", ptitle=" + ptitle
				+ ", pcontent=" + pcontent + ", posttype=" + posttype
				+ ", pdate=" + pdate + ", pcomments=" + pcomments
				+ ", preadings=" + preadings + ", pstatus=" + pstatus
				+ ", plike=" + plike + ", pprivate=" + pprivate + ", paudit="
				+ paudit + ", pelite=" + pelite + "]";
	}
    
}