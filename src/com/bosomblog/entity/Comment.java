package com.bosomblog.entity;

import java.util.Date;

public class Comment {
    private Integer cid;

    private Users users;

    private Integer pid;

    private String ccontent;

    private Date cdate;

    private Integer csuperiorid;//上级ID
    
    private Integer parentid;//一级ID
    
    

    public Integer getParentid() {
		return parentid;
	}

	public void setParentid(Integer parentid) {
		this.parentid = parentid;
	}

	public Integer getCid() {
        return cid;
    }

    public void setCid(Integer cid) {
        this.cid = cid;
    }


	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public Integer getPid() {
		return pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	public String getCcontent() {
        return ccontent;
    }

    public void setCcontent(String ccontent) {
        this.ccontent = ccontent;
    }

    public Date getCdate() {
        return cdate;
    }

    public void setCdate(Date cdate) {
        this.cdate = cdate;
    }

    public Integer getCsuperiorid() {
        return csuperiorid;
    }

    public void setCsuperiorid(Integer csuperiorid) {
        this.csuperiorid = csuperiorid;
    }

	@Override
	public String toString() {
		return "Comment [cid=" + cid + ", users=" + users + ", pid=" + pid
				+ ", ccontent=" + ccontent + ", cdate=" + cdate
				+ ", csuperiorid=" + csuperiorid + ", parentid=" + parentid
				+ "]";
	}


    
}