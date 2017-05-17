package org.hero.service.impl;

import org.hero.dao.NewsDao;
import org.hero.entity.Hierarchy;
import org.hero.entity.News;
import org.hero.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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

    public void saveHierarchy(Hierarchy hierarchy) {
        newsDao.saveHierarchy(hierarchy);
    }

    public Integer findAllNum() {
        return newsDao.findAllNum();
    }

}
