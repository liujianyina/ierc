package com.ljy.ierc.repository;

import com.ljy.ierc.domain.User;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

/**
 * Created by 刘剑银 on 2017/4/14.
 */
@Repository
public interface UserRepository extends BaseRepository<User> {

    /**
     * 用户登录
     */
    @Query("SELECT u From User u WHERE u.loginName = ?1 AND u.loginPassword = ?2")
    User login(String loginName, String loginPassword);
}
