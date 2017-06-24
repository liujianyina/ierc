package com.ljy.ierc.service;

import com.ljy.ierc.repository.GrantListRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by 刘剑银 on 2017/4/15.
 */
@Service
public class GrantListService {

    @Autowired
    private GrantListRepository grantListRepository;

    /**
     * 找到被授权访问题库的id
     */
    public List<Long> findExerId(Long sourceId) {

        //System.out.println(grantListRepository.findBySourceId(sourceId));

        /*List<GrantList> allgrantList = grantListRepository.findBySourceId(sourceId);

        List<Long> allExerId = new ArrayList<>();

        for (GrantList item : allgrantList) {
            allExerId.add(item.getExerId());
        }*/

        return null;
    }

}
