package org.hero.service;

import org.hero.entity.*;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by xuzhongyao on 16/8/2.
 */
@Service
public interface UserService {

    List<News> getNewsList();

    List<Hierarchy> findAllHierarchy();
    List<StationInformation> findAllStationInformation();
    List<CommunityInformation> findAllCommunityInformation();
    void saveHierarchy(Hierarchy hierarchy);

    /**
     * 查询出库中所有的序列
     * @return
     */
    Integer findAllNum();


    List<QunSummary> findSix();

}
