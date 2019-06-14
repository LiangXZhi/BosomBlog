package com.bosomblog.entity;

public class Administrator {
    private Integer aid;

    private String aname;

    private String apassword;

    private String asex;

    public Integer getAid() {
        return aid;
    }

    public void setAid(Integer aid) {
        this.aid = aid;
    }

    public String getAname() {
        return aname;
    }

    public void setAname(String aname) {
        this.aname = aname;
    }

    public String getApassword() {
        return apassword;
    }

    public void setApassword(String apassword) {
        this.apassword = apassword;
    }

    public String getAsex() {
        return asex;
    }

    public void setAsex(String asex) {
        this.asex = asex;
    }

	public Administrator(Integer aid, String aname, String apassword,
			String asex) {
		super();
		this.aid = aid;
		this.aname = aname;
		this.apassword = apassword;
		this.asex = asex;
	}

	public Administrator() {
		super();
		// TODO Auto-generated constructor stub
	}
    
    
}