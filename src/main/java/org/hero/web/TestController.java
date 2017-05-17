package org.hero.web;

import org.hero.entity.Hierarchy;
import org.hero.entity.News;
import org.hero.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by xuzhongyao on 16/8/2.
 */
@Controller
public class TestController {

    @Autowired
    private UserService userService;

    @RequestMapping("/ceshi")
    public String ceshi(Model model){
        List<News> list = userService.getNewsList();
        model.addAttribute("id","woowoowow");
        return "test";
    }
    @RequestMapping("/bbs")
    public String bbs(Model model) {
//        List<Hierarchy> list = userService.findAllHierarchy();
//        for(Hierarchy hierarchy:list){
          /* if(hierarchy.getHHID()==1){
               model.addAttribute("name", hierarchy.getNameH());
           }*/
//        }
        model.addAttribute("name","路南区");
        return "showPicture";
    }
}
