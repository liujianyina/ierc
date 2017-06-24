package com.ljy.ierc.controller;

import org.springframework.beans.factory.annotation.Autowired;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Created by 刘剑银 on 2017/4/13.
 */
public class BaseController {

    @Autowired
    private HttpServletRequest request;

    @Autowired
    private HttpSession session;

    public HttpServletRequest getRequest() {
        return request;
    }

    public HttpSession getSession() {
        return session;
    }
}
