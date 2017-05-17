package org.hero.dao;

import org.hero.entity.CommunityInformation;
import org.hero.entity.Hierarchy;
import org.hero.entity.News;
import org.hero.entity.StationInformation;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by xuzhongyao on 16/8/1.
 */
@Repository
public interface NewsDao {

    List<News> findAll();
    List<Hierarchy> findAllHierarchy();
    void saveHierarchy(Hierarchy hierarchy);
    void saveStationInformation(StationInformation stationInformation);
    void saveCommunityInformation(CommunityInformation communityInformation);
    Integer findAllNum();
    Integer findAllNumCommunityInformation();
    Integer findAllNumStationInformation();
    Integer findOnlyNumCommunityInformation(String num);
    Integer findOnlyNumStationInformation(String num);

}
