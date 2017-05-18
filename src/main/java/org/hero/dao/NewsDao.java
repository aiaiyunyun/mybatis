package org.hero.dao;

import org.hero.entity.*;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by xuzhongyao on 16/8/1.
 */
@Repository
public interface NewsDao {

    List<News> findAll();
    List<Hierarchy> findAllHierarchy();
    List<StationInformation> findAllStationInformation();
    List<CommunityInformation> findAllCommunityInformation();
    void saveHierarchy(Hierarchy hierarchy);
    void saveStationInformation(StationInformation stationInformation);
    void saveCommunityInformation(CommunityInformation communityInformation);
    Integer findAllNum();
    Integer findAllNumCommunityInformation();
    Integer findAllNumStationInformation();
    Integer findOnlyNumCommunityInformation(String num);
    Integer findOnlyNumStationInformation(String num);

    //查询6个成功率分析
    List<QunSummary> findSix();

    List<UploadData> selectNum();
}
