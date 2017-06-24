package com.ljy.ierc.controller;

import com.ljy.ierc.domain.Collection;
import com.ljy.ierc.domain.ExerFile;
import com.ljy.ierc.domain.User;
import com.ljy.ierc.service.CollectionService;
import com.ljy.ierc.service.ExerFileService;
import com.ljy.ierc.service.GrantListService;
import com.ljy.ierc.service.UserService;
import com.ljy.ierc.util.Constant;
import com.ljy.ierc.util.ExerItem;
import com.ljy.ierc.util.Utils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.jws.soap.SOAPBinding;
import java.util.ArrayList;
import java.util.List;

/**
 * 处理题库
 * <p>
 * Created by 刘剑银 on 2017/4/15.
 */
@Controller
@RequestMapping("/practice")
public class PracticeController extends BaseController {

    /**
     * 文件路径
     */
    @Value("${upload}")
    private String uploadPath;


    @Autowired
    private ExerFileService exerFileService;

    @Autowired
    private GrantListService grantListService;

    @Autowired
    private CollectionService collectionService;

    @Autowired
    private UserService userService;

    /**
     * 转到题库公共题库列表界面
     *
     * @return
     */

    @GetMapping("/practice_list")
    public ModelAndView practiceList() {

        if (getSession().getAttribute(Constant.CURRENT_USER) == null) {
            return new ModelAndView("redirect:/login");
        }

        User user = (User) getSession().getAttribute(Constant.CURRENT_USER);

        List<ExerFile> allExer = new ArrayList<>();

        /**
         * 1.找到所有本人的题库
         *
         * 2.找到所有公共题库
         *
         * 3.找到所有被授权的题库
         */
        allExer.addAll(exerFileService.findByAdminName(user.getLoginName()));
        allExer.addAll(exerFileService.findPub(user.getLoginName()));

        ModelAndView modelAndView = new ModelAndView("practice/practice_list");

        modelAndView.addObject("allExer", allExer);

        return modelAndView;
    }

    /**
     * 进入练习界面
     *
     * @param sid
     * @return
     */

    @GetMapping("/practice_list/visit")
    public ModelAndView visit(Long sid) {

        User user = (User) getSession().getAttribute(Constant.CURRENT_USER);

        if (user == null) {
            return new ModelAndView("redirect:/login");
        }
        /**
         * 由sid找到题库信息：语言、文件名、
         */

        ExerFile exerFile = exerFileService.findBySid(sid);

        List<ExerItem> allItem = Utils.readExcel(uploadPath + "/" + exerFile.getFileName());

        ModelAndView modelAndView = new ModelAndView("/practice/practice_list_item");

        modelAndView.addObject("allItem", allItem);

        /**
         * 题库名
         */
        modelAndView.addObject("exerName", exerFile.getExerName());

        /**
         * 上传人
         */
        modelAndView.addObject("publish", exerFile.getAdminName());

        /**
         * 语音的url
         */
        String url = "http://tts.baidu.com/text2audio?lan=" + exerFile.getLanguage() + "&ie=UTF-8&spd=" + user.getSpeed() + "&text=";

        modelAndView.addObject("Langurl", url);

        return modelAndView;
    }

    /**
     * 收藏
     *
     * @param sid
     * @return
     */
    @GetMapping("/practice_list/collection")
    public String collection(Long sid, final RedirectAttributes redirectAttributes) {

        if (getSession().getAttribute(Constant.CURRENT_USER) == null) {
            return "redirect:/login";
        }

        /**
         * 保存收藏记录
         */
        User user = ((User) getSession().getAttribute(Constant.CURRENT_USER));
        Collection collection = new Collection(user.getSid(), sid);
        collectionService.save(collection);

        /**
         * 更新账户收藏数
         */
        user.setFollow(user.getFollow() + 1);
        userService.replace(user);

        redirectAttributes.addFlashAttribute("msg", "msg.collection.succeed");

        return "redirect:../practice_list";
    }

    /**
     * 取消收藏
     */
    @GetMapping("/delete_collection")
    public String deleteCollection(Long userId, Long exersid, final RedirectAttributes redirectAttributes) {

        if (getSession().getAttribute(Constant.CURRENT_USER) == null) {
            return "redirect:/login";
        }

        /**
         * 1.更新账户收藏数
         * 2.删除收藏信息
         */
        User user = ((User) getSession().getAttribute(Constant.CURRENT_USER));
        user.setFollow(user.getFollow() - 1);
        userService.replace(user);
        collectionService.deleteCollection(userId, exersid);
        redirectAttributes.addFlashAttribute("msg", "msg.delete_collection.succeed");
        return "redirect:collection";
    }


    /**
     * 得到个人收藏列表
     */

    @GetMapping("/collection")
    public ModelAndView getCollection() {
        if (getSession().getAttribute(Constant.CURRENT_USER) == null) {
            return new ModelAndView("redirect:/login");
        }

        User user = (User) getSession().getAttribute(Constant.CURRENT_USER);
        /////
        List<Long> allExerId = collectionService.getAllCollectionExerId(user.getSid());

        List<ExerFile> allCollectionExerFile = exerFileService.findAllExerFileBySids(allExerId);

        ModelAndView modelAndView = new ModelAndView("/practice/practice_collection_list");

        modelAndView.addObject("allExer", allCollectionExerFile);

        return modelAndView;
    }


}
