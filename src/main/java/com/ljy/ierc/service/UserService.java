package com.ljy.ierc.service;

import com.ljy.ierc.domain.User;
import com.ljy.ierc.repository.UserRepository;
import com.ljy.ierc.util.Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by 刘剑银 on 2017/4/14.
 */
@Service
public class UserService {

    @Autowired
    private UserRepository userRepository;

    public User login(String username, String password) {
        return userRepository.login(username, Utils.getMD5String(password));
    }

    @Transactional
    public User replace(User user) {
        return userRepository.save(user);
    }

}
