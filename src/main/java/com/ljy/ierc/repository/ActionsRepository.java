package com.ljy.ierc.repository;

import com.ljy.ierc.domain.Actions;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 刘剑银 on 2017/4/16.
 */
@Repository
public interface ActionsRepository extends BaseRepository<Actions> {

    List<Actions> findByUserId(Long userId);

}
