package com.ljy.ierc.controller;

import com.ljy.ierc.util.Constant;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by 刘剑银 on 2017/6/6.
 */
@RequestMapping("/Video_dubbing")
@Controller
public class VideodubbingController extends BaseController {

    @GetMapping("/index")
    public String toVideo() {
        if (getSession().getAttribute(Constant.CURRENT_USER) == null) {
            return "redirect:/login";
        }
        return "/Video_dubbing/index";
    }

}
