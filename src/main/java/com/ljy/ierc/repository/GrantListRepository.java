package com.ljy.ierc.repository;

import com.ljy.ierc.domain.GrantList;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 刘剑银 on 2017/4/15.
 */
@Repository
public interface GrantListRepository extends BaseRepository<GrantList> {

    /**
     * 找到授权信息
     */
   // List<GrantList> findBySourceId(Long sourceId);
}
