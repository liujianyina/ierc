package com.ljy.ierc.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import java.util.Date;

/**
 * Created by 刘剑银 on 2017/4/14.
 */
@Entity
public class User extends BaseDomain {

    @Column(name = "login_name", nullable = false, updatable = false)
    private String loginName;

    @Column(name = "login_password", nullable = false)
    private String loginPassword;

    @Column(name = "real_name")
    private String realName;

    @Column(name = "phone_num")
    private String phoneNum;

    @Column(name = "last_login")
    private Date lastLogin;

    @Column(name = "address")
    private String address;

    @Column(name = "follow")
    private int follow;

    @Column(name = "number")
    private int number;

    private double balance;

    //语速
    private int speed;

    public int getSpeed() {
        return speed;
    }

    public void setSpeed(int speed) {
        this.speed = speed;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    public int getFollow() {
        return follow;
    }

    public void setFollow(int follow) {
        this.follow = follow;
    }

    public int getNumber() {
        return number;
    }

    public void setNumber(int number) {
        this.number = number;
    }

    public String getRealName() {
        return realName;
    }

    public void setRealName(String realName) {
        this.realName = realName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getLoginName() {
        return loginName;
    }

    public void setLoginName(String loginName) {
        this.loginName = loginName;
    }

    public String getLoginPassword() {
        return loginPassword;
    }

    public void setLoginPassword(String loginPassword) {
        this.loginPassword = loginPassword;
    }

    public String getCname() {
        return realName;
    }

    public void setCname(String cname) {
        this.realName = cname;
    }

    public String getPhoneNum() {
        return phoneNum;
    }

    public void setPhoneNum(String phoneNum) {
        this.phoneNum = phoneNum;
    }

    public Date getLastLogin() {
        return lastLogin;
    }

    public void setLastLogin(Date lastLogin) {
        this.lastLogin = lastLogin;
    }
}
