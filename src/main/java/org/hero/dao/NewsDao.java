package org.hero.dao;

import org.hero.entity.News;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by xuzhongyao on 16/8/1.
 */
@Repository
public interface NewsDao {

    List<News> findAll();

}
