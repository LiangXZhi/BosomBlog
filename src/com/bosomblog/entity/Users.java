package com.bosomblog.entity;

import java.util.Date;

public class Users {
    private Integer usesid;

    private String userpic;

    private String usersname;

    private String password;

    private String phone;

    private String sex;

    private Date birthday;

    private String address;

    private String intro;

    private Integer grade;

    private Date createtime;

    private Integer banaccount;

    public Integer getUsesid() {
        return usesid;
    }

    public void setUsesid(Integer usesid) {
        this.usesid = usesid;
    }

    public String getUserpic() {
        return userpic;
    }

    public void setUserpic(String userpic) {
        this.userpic = userpic;
    }

    public String getUsersname() {
        return usersname;
    }

    public void setUsersname(String usersname) {
        this.usersname = usersname;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getSex() {
        return sex;
    }

    public void setSex(String sex) {
        this.sex = sex;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getIntro() {
        return intro;
    }

    public void setIntro(String intro) {
        this.intro = intro;
    }

    public Integer getGrade() {
        return grade;
    }

    public void setGrade(Integer grade) {
        this.grade = grade;
    }

    public Date getCreatetime() {
        return createtime;
    }

    public void setCreatetime(Date createtime) {
        this.createtime = createtime;
    }

    public Integer getBanaccount() {
        return banaccount;
    }

    public void setBanaccount(Integer banaccount) {
        this.banaccount = banaccount;
    }

	@Override
	public String toString() {
		return "Users [usesid=" + usesid + ", userpic=" + userpic
				+ ", usersname=" + usersname + ", password=" + password
				+ ", phone=" + phone + ", sex=" + sex + ", birthday="
				+ birthday + ", address=" + address + ", intro=" + intro
				+ ", grade=" + grade + ", createtime=" + createtime
				+ ", banaccount=" + banaccount + "]";
	}
    
    
}