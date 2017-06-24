package com.ljy.ierc.domain;

import com.fasterxml.jackson.databind.ser.Serializers;

import javax.persistence.Entity;

/**
 * 授权列表
 * <p>
 * Created by 刘剑银 on 2017/4/15.
 */
@Entity
public class GrantList extends BaseDomain {

    /**
     * 被授权用户Id
     */
    private String sourceId;

    /**
     * 题库Id
     */
    private Long exerId;

    public String getSourceId() {
        return sourceId;
    }

    public void setSourceId(String sourceId) {
        this.sourceId = sourceId;
    }

    public Long getExerId() {
        return exerId;
    }

    public void setExerId(Long exerId) {
        this.exerId = exerId;
    }
}
