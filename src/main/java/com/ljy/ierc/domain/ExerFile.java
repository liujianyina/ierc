package com.ljy.ierc.domain;

import javax.persistence.Entity;

/**
 * 保存在数据库中的文件信息
 * <p>
 * Created by 刘剑银 on 2017/4/15.
 */
@Entity
public class ExerFile extends BaseDomain {

    /**
     * 库名
     */
    private String exerName;

    /**
     * 备注
     */
    private String exerRemark;

    /**
     * 语言
     */
    private String language;

    /**
     * 权限
     */
    private String power;

    /**
     * 存在本地的文件名
     */
    private String fileName;

    /**
     * 访问次数
     */
    private int count;

    /**
     * 上传人
     */
    private String adminName;

    /**
     * 文本类型
     */
    private String text;

    public String getText() {
        return text;
    }

    public void setText(String text) {
        this.text = text;
    }

    public String getAdminName() {
        return adminName;
    }

    public void setAdminName(String adminName) {
        this.adminName = adminName;
    }

    public int getCount() {
        return count;
    }

    public void setCount(int count) {
        this.count = count;
    }

    public String getExerName() {
        return exerName;
    }

    public void setExerName(String exerName) {
        this.exerName = exerName;
    }

    public String getExerRemark() {
        return exerRemark;
    }

    public void setExerRemark(String exerRemark) {
        this.exerRemark = exerRemark;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public String getPower() {
        return power;
    }

    public void setPower(String power) {
        this.power = power;
    }

    public String getFileName() {
        return fileName;
    }

    public void setFileName(String fileName) {
        this.fileName = fileName;
    }
}
