package com.bosomblog.entity;

import java.util.Date;

public class Notify {
    private Integer notityId;

    private String notityTitle;

    private String notityContent;

    private Date sendtime;

    private Integer visible;

    public Integer getNotityId() {
        return notityId;
    }

    public void setNotityId(Integer notityId) {
        this.notityId = notityId;
    }

    public String getNotityTitle() {
        return notityTitle;
    }

    public void setNotityTitle(String notityTitle) {
        this.notityTitle = notityTitle;
    }

    public String getNotityContent() {
        return notityContent;
    }

    public void setNotityContent(String notityContent) {
        this.notityContent = notityContent;
    }

    public Date getSendtime() {
        return sendtime;
    }

    public void setSendtime(Date sendtime) {
        this.sendtime = sendtime;
    }

    public Integer getVisible() {
        return visible;
    }

    public void setVisible(Integer visible) {
        this.visible = visible;
    }
}