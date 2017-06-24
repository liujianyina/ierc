package com.ljy.ierc.controller;

import com.ljy.ierc.domain.Actions;
import com.ljy.ierc.domain.User;
import com.ljy.ierc.service.ActionsService;
import com.ljy.ierc.service.UserService;
import com.ljy.ierc.util.Constant;
import com.ljy.ierc.util.Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.*;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.*;
import java.util.List;

/**
 * Created by 刘剑银 on 2017/4/13.
 */
@Controller
@RequestMapping("/")
public class RootController extends BaseController {

    @Autowired
    private UserService userService;

    @Autowired
    private ActionsService actionsService;

    //当前的验证码
    private String rcode = "";

    @GetMapping({"/", "/index"})
    public ModelAndView index() {
        User user = (User) getSession().getAttribute(Constant.CURRENT_USER);
        if (Utils.isNull(user)) {
            return new ModelAndView("redirect:/login");
        } else {
            ModelAndView modelAndView = new ModelAndView("/index");
            List<Actions> actions = actionsService.findByUserId(user.getSid());
            modelAndView.addObject("acts", actions);
            return modelAndView;
        }
    }

    @GetMapping(value = "/login")
    public String login() {
        if (getSession().getAttribute(Constant.CURRENT_USER) == null) {
            return "/login";
        } else {
            return "redirect:/index";
        }
    }

    @PostMapping(value = "/login")
    public String login(String username, String password, String code, final RedirectAttributes redirectAttributes) {

        //判断验证码是否正确
       if (!code.toUpperCase().equals(rcode)) {
            redirectAttributes.addFlashAttribute("ERROR_MESSAGE", "error.code.err");
            return "redirect:/login";
        }
        User user = userService.login(username, password);
        if (!Utils.isNull(user)) {
            if (user.getStatus() != 1) { //如果该账号状态不为1
                redirectAttributes.addFlashAttribute("ERROR_MESSAGE", "error.status.err");
                return "redirect:/login";
            } else {
                getSession().setAttribute(Constant.CURRENT_USER, user);
                return "redirect:/index";
            }
        } else {
            redirectAttributes.addFlashAttribute("ERROR_MESSAGE", "error.login.fail");
            return "redirect:/login";
        }
    }

    /**
     * 生成验证码
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */

    @GetMapping(value = "/captcha")
    @ResponseBody
    public void captcha(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Font mFont = new Font("Times New Roman", Font.PLAIN, 20);

        response.setHeader("Pragma", "No-cache");
        response.setHeader("Cache-Control", "no-cache");
        response.setDateHeader("Expires", 0);
        //表明生成的响应是图片
        response.setContentType("image/jpeg");

        int width = 112, height = 37;
        BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);

        Graphics g = image.getGraphics();
        Random random = new Random();
        g.setColor(new Color(255, 255, 255));
        g.fillRect(0, 0, width, height);

        g.setColor(new Color(255, 20, 60));
        g.setFont(mFont);

        //生成随机数,并将随机数字转换为字母
        rcode = "";
        for (int i = 0; i < 4; i++) {
            int itmp = random.nextInt(26) + 65;
            char ctmp = (char) itmp;
            rcode += ctmp;
            g.drawString(String.valueOf(ctmp), 25 * i + 10, 25);
        }

        g.dispose();
        //image是最后生成的一个jpeg图片
        ImageIO.write(image, "JPEG", response.getOutputStream());

    }

    /**
     * 转到测试信息页面
     * @return
     */
    @GetMapping("/test")
    public String test(){
        return "test";
    }


    /**
     * 转到信息展示页面
     * @return
     */
    @GetMapping("/show_info_test")
    public String show(){
        return "show";
    }

    /**
     * 注销
     * @return
     */
    @GetMapping(value = "/logout")
    public String logout() {
        getSession().invalidate();
        return "redirect:/login";
    }


}
