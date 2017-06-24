package com.ljy.ierc.repository;

import com.ljy.ierc.domain.Collection;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * Created by 刘剑银 on 2017/4/15.
 */
public interface CollectionRepository extends BaseRepository<Collection> {

    @Query("SELECT c FROM Collection c WHERE c.sourceId = ?1 AND c.exerId = ?2")
    Collection isExist(Long sourceId, Long exerId);

    List<Collection> findBySourceId(Long sourceId);

    void deleteBySourceIdAndExerId(Long sourceId, Long exerId);
}
