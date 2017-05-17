package org.hero.dao;

import org.hero.entity.News;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by xuzhongyao on 16/8/1.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({"classpath:spring/spring-dao.xml"})
public class NewsDaoTest {

    @Resource
    private NewsDao newsDao;


    @Test
    public void testFindAll() throws Exception {

        List<News> list = newsDao.findAll();
        for (News news : list){
            System.out.println(news.getTitle());
        }
    }
}