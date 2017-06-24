package com.ljy.ierc.domain;

import javax.persistence.Entity;

/**
 * 消息队列
 * Created by 刘剑银 on 2017/4/15.
 */
@Entity
public class Message extends BaseDomain {

    /**
     * 发出申请人Id
     */
    private Long sourceId;

    /**
     * 目标Id
     */
    private Long targetId;

    /**
     * 目标题库Id
     */
    private Long ExerFileId;

    public Long getSourceId() {
        return sourceId;
    }

    public void setSourceId(Long sourceId) {
        this.sourceId = sourceId;
    }

    public Long getTargetId() {
        return targetId;
    }

    public void setTargetId(Long targetId) {
        this.targetId = targetId;
    }

    public Long getExerFileId() {
        return ExerFileId;
    }

    public void setExerFileId(Long exerFileId) {
        ExerFileId = exerFileId;
    }
}
