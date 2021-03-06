package org.hero.web;

import org.hero.entity.*;
import org.hero.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.text.SimpleDateFormat;
import java.util.*;

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
        }
        List<Hierarchy> list1 = userService.findAllHierarchy();
        for (Hierarchy hierarchy:list1){
        }*/
        /*List<StationInformation> list2 = userService.findAllStationInformation();
        for (StationInformation stationInformation:list2){
        }*/
        List<CommunityInformation> list2 = userService.findAllCommunityInformation();
//        for (CommunityInformation communityInformation:list2){
//        }
//        List<News> list = userService.getNewsList();
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
        model.addAttribute("list",list);
        model.addAttribute("name","路南区");
//        return "showPicture";
                return "kkkkk";

    }
    @ResponseBody
    @RequestMapping("/list")
    public List<QunSummary> list(ModelMap modelMap) {
        List<QunSummary> list = userService.findSix();
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        String time = sdf.format(date);
        ArrayList list0  = new ArrayList();
        list0.add(list);
        list0.add(time);
        return list0;
    }
    @ResponseBody
   @RequestMapping("/mlist")
    public List<UploadData> mlist(ModelMap modelMap) {
        List<UploadData> list = userService.selectNum();
        return list;
    }
    @ResponseBody
    @RequestMapping("/findweek")
    public List<QunSummary> findweek(ModelMap modelMap) {
        List<QunSummary> list = userService.findweek();
        return list;
    }

    @ResponseBody
    @RequestMapping("/findcake")
    public List<QunSummary> findcake(ModelMap modelMap) {
        List<QunSummary> list = userService.selectCake();
        return list;
    }
    @ResponseBody
    @RequestMapping("/findzhu")
    public List<UploadData>  findzhu(ModelMap modelMap) {
        List<UploadData>  list = userService.selectZhu();
        ArrayList list1 = new ArrayList();
        ArrayList list2  = new ArrayList();
        for (UploadData uploadData:list){
            String  eNodeBID=uploadData.getENodeBID();
            String CellID = uploadData.getCellID();
            Map map=new HashMap();
            map.put("eNodeBID",eNodeBID);
            map.put("CellID",CellID);
            List<Hierarchy> list4 = userService.selectName(map);
            for(Hierarchy hierarchy:list4){
                list2.add(hierarchy.getCellName());
            }
        }
        list1.add(list);
        list1.add(list2);
        return list1;
    }
}
