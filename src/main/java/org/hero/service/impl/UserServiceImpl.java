package org.hero.service.impl;

import org.hero.dao.NewsDao;
import org.hero.entity.*;
import org.hero.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Created by xuzhongyao on 16/8/2.
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private NewsDao newsDao;

    public List<News> getNewsList() {
        return newsDao.findAll();
    }


    public List<Hierarchy> findAllHierarchy() {
        return newsDao.findAllHierarchy();
    }

    public List<StationInformation> findAllStationInformation() {
        return newsDao.findAllStationInformation();
    }

    public List<CommunityInformation> findAllCommunityInformation() {
        return newsDao.findAllCommunityInformation();
    }

    public void saveHierarchy(Hierarchy hierarchy) {
        newsDao.saveHierarchy(hierarchy);
    }

    public Integer findAllNum() {
        return newsDao.findAllNum();
    }

    public List<QunSummary> findweek() {
        return newsDao.findweek();
    }

    public List<QunSummary> findSix() {
        return newsDao.findSix();
    }

    public List<UploadData> selectNum() {
        return newsDao.selectNum();
    }

    public List<QunSummary> selectCake() {
        return newsDao.selectCake();
    }

    public List<QunSummary> selectAll() {
        return newsDao.selectAll();
    }

    public List<UploadData> selectZhu() {
        return newsDao.selectZhu();
    }

    public List<Hierarchy> selectName(Map map) {
        return newsDao.selectName(map);
    }

}
