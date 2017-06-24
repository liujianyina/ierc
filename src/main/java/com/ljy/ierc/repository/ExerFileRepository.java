package com.ljy.ierc.repository;

import com.ljy.ierc.domain.ExerFile;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by 刘剑银 on 2017/4/15.
 */
@Repository
public interface ExerFileRepository extends BaseRepository<ExerFile> {

    /**
     * 由sid找到题库信息
     *
     * @param sid
     * @return
     */
    ExerFile findBySid(Long sid);


    /**
     * 由上传人的登录名找到题库记录
     *
     * @param adminName
     * @return
     */
    List<ExerFile> findByAdminName(String adminName);

    /**
     * 找到所有公共题库，剔除本人上传的
     */
    @Query("SELECT e FROM ExerFile e WHERE e.power = 'public' AND e.adminName != ?1")
    List<ExerFile> findPub(String adminName);


}
