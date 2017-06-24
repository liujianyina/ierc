package com.ljy.ierc.domain;

import javax.persistence.Entity;

/**
 * 收藏队列
 * Created by 刘剑银 on 2017/4/15.
 */
@Entity
public class Collection extends BaseDomain {

    /**
     * 收藏人的id
     */
    private Long sourceId;

    /**
     * 收藏的题库Id
     */
    private Long exerId;

    public Collection() {
    }

    public Collection(Long sourceId, Long exerId) {
        this.sourceId = sourceId;
        this.exerId = exerId;
    }

    public Long getSourceId() {
        return sourceId;
    }

    public void setSourceId(Long sourceId) {
        this.sourceId = sourceId;
    }

    public Long getExerId() {
        return exerId;
    }

    public void setExerId(Long exerId) {
        this.exerId = exerId;
    }
}
