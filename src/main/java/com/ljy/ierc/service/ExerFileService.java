package com.ljy.ierc.service;

import com.ljy.ierc.domain.ExerFile;
import com.ljy.ierc.repository.ExerFileRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.transaction.event.TransactionalEventListener;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by 刘剑银 on 2017/4/15.
 */
@Service
public class ExerFileService {

    @Autowired
    private ExerFileRepository exerFileRepository;

    /**
     * 插入新题库
     *
     * @param exerFile
     * @return
     */
    @Transactional
    public ExerFile save(ExerFile exerFile) {
        return exerFileRepository.save(exerFile);
    }

    /**
     * 由管理员ID找到所有题库
     *
     * @param adminName
     * @return
     */
    public List<ExerFile> findByAdminName(String adminName) {
        return exerFileRepository.findByAdminName(adminName);
    }

    /**
     * 找到所有公共题库（不包括自己上传的）
     *
     * @param adminName
     * @return
     */
    public List<ExerFile> findPub(String adminName) {
        return exerFileRepository.findPub(adminName);
    }

    public ExerFile findBySid(Long sid) {
        return exerFileRepository.findBySid(sid);
    }

    @Transactional
    public void delete(Long sid) {
        exerFileRepository.delete(sid);
    }


    /**
     * 找到集合中的所有sid对应的题库信息
     */
    public List<ExerFile> findAllExerFileBySids(List<Long> sids) {
        List<ExerFile> allExerFile = new ArrayList<>();
        for (Long sid : sids) {
            allExerFile.add(exerFileRepository.findBySid(sid));
        }
        return allExerFile;
    }
}
