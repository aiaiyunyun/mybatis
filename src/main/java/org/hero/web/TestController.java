package org.hero.web;

import org.hero.entity.*;
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

    @RequestMapping("/showMiddle")
    public String ceshi(Model model){
       /* List<QunSummary> list = userService.findSix();
        for (QunSummary qunSummary:list){
            System.out.println(qunSummary.toString());
        }
        List<Hierarchy> list1 = userService.findAllHierarchy();
        for (Hierarchy hierarchy:list1){
            System.out.println(hierarchy.toString());
        }*/
        /*List<StationInformation> list2 = userService.findAllStationInformation();
        for (StationInformation stationInformation:list2){
            System.out.println(stationInformation.toString());
        }*/
        List<CommunityInformation> list2 = userService.findAllCommunityInformation();
        System.out.println(list2.size());
//        for (CommunityInformation communityInformation:list2){
//            System.out.println(communityInformation.toString());
//        }
//        List<News> list = userService.getNewsList();
//        System.out.println(list);
        model.addAttribute("list",list2);
        model.addAttribute("len",list2.size());
        return "showMiddle";
    }

    @RequestMapping("/bbs")
    public String bbs(Model model) {
//        List<Hierarchy> list = userService.findAllHierarchy();
//        for(Hierarchy hierarchy:list){
          /* if(hierarchy.getHHID()==1){
               model.addAttribute("name", hierarchy.getNameH());
           }*/
//        }
        List<QunSummary> list = userService.findSix();
        for (QunSummary qunSummary:list){
            System.out.println(qunSummary.toString());
        }
        model.addAttribute("list",list);
        model.addAttribute("name","路南区");
        return "showPicture";
    }
}
