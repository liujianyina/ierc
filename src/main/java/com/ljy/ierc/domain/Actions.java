package com.ljy.ierc.domain;

import javax.persistence.Entity;

/**
 * 用户动态列表
 * <p>
 * Created by 刘剑银 on 2017/4/16.
 */
@Entity
public class Actions extends BaseDomain {

    /**
     * 上传人的id
     */
    private Long userId;

    /**
     * 操作的类型：上传、更新、删除
     */
    private String actionsName;

    /**
     * 操作的库名
     */
    private String exerName;

    public Actions() {
    }

    public Actions(Long userId, String actionsName, String exerName) {
        this.userId = userId;
        this.actionsName = actionsName;
        this.exerName = exerName;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getActionsName() {
        return actionsName;
    }

    public void setActionsName(String actionsName) {
        this.actionsName = actionsName;
    }

    public String getExerName() {
        return exerName;
    }

    public void setExerName(String exerName) {
        this.exerName = exerName;
    }

    @Override
    public String toString() {
        return "Actions{" +
                "exerName='" + exerName + '\'' +
                ", sid=" + sid +
                ", createTime=" + createTime +
                ", updateTime=" + updateTime +
                ", status=" + status +
                '}';
    }
}
