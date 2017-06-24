package com.ljy.ierc.domain;

import javax.persistence.Entity;

/**
 * 记录访客记录
 * Created by 刘剑银 on 2017/4/15.
 */
@Entity
public class Visit extends BaseDomain {

    private String ip;

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }
}
