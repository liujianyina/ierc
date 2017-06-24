package com.ljy.ierc.controller;

import com.ljy.ierc.domain.Actions;
import com.ljy.ierc.domain.ExerFile;
import com.ljy.ierc.domain.User;
import com.ljy.ierc.service.ActionsService;
import com.ljy.ierc.service.ExerFileService;
import com.ljy.ierc.service.UserService;
import com.ljy.ierc.util.Constant;
import com.ljy.ierc.util.Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

/**
 * Created by 刘剑银 on 2017/4/15.
 */
@Controller
@RequestMapping("/account")
public class AccountController extends BaseController {

    @Value("${upload}")
    private String uploadPath;

    @Autowired
    private ExerFileService exerFileService;

    @Autowired
    private UserService userService;

    @Autowired
    private ActionsService actionsService;

    @GetMapping({"/", "/index"})
    public String index() {
        if (getSession().getAttribute(Constant.CURRENT_USER) == null) {
            return "redirect:/login";
        }
        return "account/index";
    }

    /**
     * 跳转到上传题库界面
     */
    @GetMapping("/upload")
    public String upload() {

        if (getSession().getAttribute(Constant.CURRENT_USER) == null) {
            return "redirect:/login";
        }
        return "account/upload";
    }

    /**
     * 题库管理界面
     *
     * @return
     */
    @GetMapping("/manage")
    public ModelAndView manage() {
        if (getSession().getAttribute(Constant.CURRENT_USER) == null) {
            return new ModelAndView("redirect:/login");
        }
        /**
         * 1.找到当前登录用户所有题库
         */

        ModelAndView modelAndView = new ModelAndView("account/manage");

        User user = (User) getSession().getAttribute(Constant.CURRENT_USER);

        List<ExerFile> allExerFile = exerFileService.findByAdminName(user.getLoginName());

        modelAndView.addObject("allExerFile", allExerFile);

        return modelAndView;
    }


    /**
     * 编辑题库，对权限进行修改
     * @return
     */
   /* public String edit(){

    }*/

    /**
     * 删除题库
     */
    @GetMapping("/manage/delete")
    public String delete(Long sid, final RedirectAttributes redirectAttributes) {

        redirectAttributes.addFlashAttribute("msg", "msg.delete.succeed");

        String fileName = exerFileService.findBySid(sid).getFileName();

        exerFileService.delete(sid);

        User user = (User) getSession().getAttribute(Constant.CURRENT_USER);

        user.setNumber(user.getNumber() - 1);

        userService.replace(user);

        Utils.deleteFile(uploadPath + "/" + fileName);

        return "redirect:../manage";
    }

    /**
     * 处理题库上传
     *
     * @param exerFile
     * @param file
     * @param redirectAttributes
     * @return
     */
    @PostMapping("/upload")
    public String upload(ExerFile exerFile, MultipartFile file, final RedirectAttributes redirectAttributes) {

        if (getSession().getAttribute(Constant.CURRENT_USER) == null) {
            return "redirect:/login";
        }

        User user = (User) getSession().getAttribute(Constant.CURRENT_USER);

        String fileName = null;

        if (!file.isEmpty()) {  //文件不为空
            fileName = "ierc_" + System.nanoTime() + "_" + file.getOriginalFilename();
            BufferedOutputStream out;
            try {
                out = new BufferedOutputStream(new FileOutputStream(new File(uploadPath, fileName)));
                out.write(file.getBytes());
                out.flush();
                out.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        user.setNumber(user.getNumber() + 1);
        userService.replace(user);

        exerFile.setFileName(fileName);
        exerFile.setAdminName(user.getLoginName());
        if (Utils.isNull(exerFileService.save(exerFile))) {  //上传失败
            redirectAttributes.addFlashAttribute("msg", "error.upload.err");
        } else {
            redirectAttributes.addFlashAttribute("msg", "msg.upload.succeed");
        }
        //记录上传动作
        Actions actions = new Actions(user.getSid(), "上传了", exerFile.getExerName());
        actionsService.save(actions);
        return "redirect:upload";
    }

    /**
     * 更新账户信息
     *
     * @return
     */
    @PostMapping("/update")
    public String update(String phoneNum, String address, String speed, final RedirectAttributes redirectAttributes) {
        if (getSession().getAttribute(Constant.CURRENT_USER) == null) {
            return "redirect:/login";
        }
        User user = (User) getSession().getAttribute(Constant.CURRENT_USER);
        user.setPhoneNum(phoneNum);
        user.setAddress(address);

        try {
            Integer spe = Integer.parseInt(speed);
            user.setSpeed(spe);
        } catch (NumberFormatException e) {

        }

        if (Utils.isNull(userService.replace(user))) {  //更新失败
            redirectAttributes.addFlashAttribute("msg", "msg.update.fail");
        } else {
            redirectAttributes.addFlashAttribute("msg", "msg.update.succeed");
        }

        return "redirect:index";
    }
}
