package org.hero.dao;

import org.hero.entity.*;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

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
    void saveUploadData(UploadData uploadData);
    void saveZhanSummary(ZhanSummary zhanSummary);
    void saveQuSummary(QunSummary qunSummary);
    Integer finduploadData();
    void saveStationInformation(StationInformation stationInformation);
    void saveCommunityInformation(CommunityInformation communityInformation);
    Integer findAllNum();
    Integer findAllNumCommunityInformation();
    Integer findAllNumStationInformation();
    Integer findOnlyNumCommunityInformation(String num);
    Integer findOnlyNumStationInformation(String num);
    Integer selectNumb();
    Integer selectNumZ();
    //查询6个成功率分析
    List<QunSummary> findSix();
    List<ZhanSummary> finAll();
    List<UploadData> selectNum();
    List<ZhanSummary> selectQu();
    //获得周数据
    List<QunSummary> findweek();
    //    饼图查询
    List<QunSummary> selectCake();
    List<QunSummary> selectAll();
    List<UploadData> selectZhu();
    List<Hierarchy> selectName(Map map);
}
