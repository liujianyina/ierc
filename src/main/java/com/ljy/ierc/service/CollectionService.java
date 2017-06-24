package com.ljy.ierc.service;

import com.ljy.ierc.domain.Collection;
import com.ljy.ierc.repository.CollectionRepository;
import com.ljy.ierc.util.Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by 刘剑银 on 2017/4/15.
 */
@Service
public class CollectionService {

    @Autowired
    private CollectionRepository collectionRepository;

    /**
     * 保存
     */
    @Transactional
    public boolean save(Collection collection) {
        if (isExist(collection)) {
            return false;
        }
        return !Utils.isNull(collectionRepository.save(collection));
    }

    /**
     * 是否存在该条记录
     */
    private boolean isExist(Collection collection) {
        return !Utils.isNull(collectionRepository.isExist(collection.getSourceId(), collection.getExerId()));
    }

    /**
     * 找到该用户的所有收藏题库id
     */
    public List<Long> getAllCollectionExerId(Long sid) {
        List<Long> allExerId = new ArrayList<>();

        List<Collection> collections = collectionRepository.findBySourceId(sid);


        for (Collection collection : collections) {
            allExerId.add(collection.getExerId());
        }
        return allExerId;
    }

    @Transactional
    public boolean deleteCollection(Long sourceId, Long exerId) {
        collectionRepository.deleteBySourceIdAndExerId(sourceId, exerId);
        return true;
    }

}
