package com.ljy.ierc.service;

import com.ljy.ierc.domain.Actions;
import com.ljy.ierc.repository.ActionsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.w3c.dom.ls.LSException;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by 刘剑银 on 2017/4/16.
 */
@Service
public class ActionsService {

    @Autowired
    private ActionsRepository actionsRepository;

    /**
     * 保存记录
     *
     * @param actions
     * @return
     */
    @Transactional
    public Actions save(Actions actions) {
        return actionsRepository.save(actions);
    }

    /***
     * 查询该用户下的所有动态
     * @param sid
     * @return
     */
    public List<Actions> findByUserId(Long sid) {
        return actionsRepository.findByUserId(sid);
    }

}
