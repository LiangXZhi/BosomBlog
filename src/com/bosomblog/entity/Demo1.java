package com.bosomblog.entity;

import java.util.Date;

public class Demo1 {

	
	public int userid; //�û����,ƥ���Ƿ���¥��
	public String userpic;//�û�ͷ��
	public String uname;//�û��ǳ�
	public int ugrade;//�û��ȼ�
	
	public int cid; //���۱��
	public Date cdate; //��������
	public String ccontent;//��������
	public int sjuid;//�ϼ�������id
	public String sjname;//�ϼ�����
	
	public int pid; //���ӱ��
	
	public int sjid; //�ϼ�ID
	public int yjid; //һ��ID
	public int px; //����
	
	
	
	public int getSjuid() {
		return sjuid;
	}
	public void setSjuid(int sjuid) {
		this.sjuid = sjuid;
	}
	public String getSjname() {
		return sjname;
	}
	public void setSjname(String sjname) {
		this.sjname = sjname;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getUserpic() {
		return userpic;
	}
	public void setUserpic(String userpic) {
		this.userpic = userpic;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public int getUgrade() {
		return ugrade;
	}
	public void setUgrade(int ugrade) {
		this.ugrade = ugrade;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public Date getCdate() {
		return cdate;
	}
	public void setCdate(Date cdate) {
		this.cdate = cdate;
	}
	public String getCcontent() {
		return ccontent;
	}
	public void setCcontent(String ccontent) {
		this.ccontent = ccontent;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public int getSjid() {
		return sjid;
	}
	public void setSjid(int sjid) {
		this.sjid = sjid;
	}
	public int getYjid() {
		return yjid;
	}
	public void setYjid(int yjid) {
		this.yjid = yjid;
	}
	public int getPx() {
		return px;
	}
	public void setPx(int px) {
		this.px = px;
	}
	@Override
	public String toString() {
		return "Demo1 [userid=" + userid + ", userpic=" + userpic + ", uname="
				+ uname + ", ugrade=" + ugrade + ", cid=" + cid + ", cdate="
				+ cdate + ", ccontent=" + ccontent + ", sjname=" + sjname
				+ ", pid=" + pid + ", sjid=" + sjid + ", yjid=" + yjid
				+ ", px=" + px + "]";
	}
	
//	public String cname;//��������
	
	
	
	
}
