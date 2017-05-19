package org.hero.dao;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.hero.entity.CommunityInformation;
import org.hero.entity.Hierarchy;
import org.hero.entity.News;
import org.hero.entity.StationInformation;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import javax.annotation.Resource;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.ArrayList;
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
        String name = "C:\\Users\\lsd\\Documents\\Tencent Files\\1184107680\\FileRecv/LTE公参.xlsx";
        ArrayList list = new ArrayList();
        List listn = newsDao.findAllHierarchy();
        System.out.println(listn);
        try {
            // 对读取Excel表格内容测试
            InputStream is2 = new FileInputStream(name);
            org.apache.poi.ss.usermodel.Workbook wb =null;
            if(name.endsWith(".xls")){
                wb = new HSSFWorkbook(is2);
            }else {
                wb=new XSSFWorkbook(is2);//处理以.xlsx结尾的excel
            }
            Sheet sheet = wb.getSheetAt(0);
            //sheet.getRow(0)这是以第一行为主，列数也是第一行的列数
            int rsColumns=sheet.getRow(0).getPhysicalNumberOfCells();
            //主要通过获取最后一行行数并且在此基础上加上1；
            int rsRows=sheet.getLastRowNum()+1;
            for(int i=1;i<rsRows;i++){
                Row row=sheet.getRow(i);//获取第i行
                int j;
                //区别3：判断单元格是否为空的方法不同
                if(row.getCell(1)!=null){
                    ArrayList list1 = new ArrayList();
                    for(j=0;j<rsColumns;j++){
                        Cell cell = row.getCell(j);
                        //区别4：在jxl中我们取单元格中的元数的时候全部当成是字符串进行取，f
                        // 但poi中单元格是区分类型的，比如此处是获取字符串类型的元素
                        list1.add(cell);
                        //区别4：此处获取数字类型的元素

                    }
                    Hierarchy hierarchy = new Hierarchy();
                    StationInformation stationInformation = new StationInformation();
                    CommunityInformation communityInformation = new CommunityInformation();
                    Integer num = newsDao.findAllNum()+1;
                    Integer num2 = newsDao.findAllNumStationInformation();
                    Integer num3 = newsDao.findAllNumCommunityInformation();
                    String kk = String.valueOf(list1.get(0));
                    String ll = String.valueOf(list1.get(1));
                    Integer bb = Integer.valueOf((int) Double.parseDouble(String.valueOf(list1.get(2))));
                    Integer cc = Integer.valueOf((int) Double.parseDouble(String.valueOf(list1.get(3))));
                    Float nn  =  Float.valueOf(String.valueOf(list1.get(4)));
                    Float mm  =  Float.valueOf(String.valueOf(list1.get(5)));
                    Integer dd = Integer.valueOf((int) Double.parseDouble(String.valueOf(list1.get(6))));

                    Integer oo = Integer.valueOf(kk.substring(kk.length()-1,kk.length()));
                    communityInformation.setId(num3);
                    communityInformation.setENodeBID(bb);
                    communityInformation.setCellID(cc);
                    communityInformation.setLatitude(nn);
                    communityInformation.setLongitude(mm);
                    communityInformation.setSectorID(oo);
                    communityInformation.setPCI(1);
                    communityInformation.setAzimuth(dd);
                    newsDao.saveCommunityInformation(communityInformation);
                   /* Integer pp = newsDao.findOnlyNumStationInformation(String.valueOf(bb));
                    if(pp==0){
                        stationInformation.setId(num2);
                        stationInformation.setENodeBID(bb);
                        stationInformation.setLatitude(nn);
                        stationInformation.setLongitude(mm);
                        stationInformation.setAzimuth(dd);
                        stationInformation.setSupplier("数据为空");
                        newsDao.saveStationInformation(stationInformation);
                    }*/

//                    Integer onlyNum = newsDao.findOnlyNum(bb);
                  /*  hierarchy.setHID(num);
                    hierarchy.setCellName(String.valueOf(list1.get(0)));
                    hierarchy.seteNodeBName(String.valueOf(list1.get(1)));
                    hierarchy.seteNodeBID(bb);
                    hierarchy.setCellID(cc);
                    hierarchy.setLatitude(Float.valueOf(String.valueOf(list1.get(4))));
                    hierarchy.setLongitude(Float.valueOf(String.valueOf(list1.get(5))));
                    hierarchy.setAzimuth(dd);
                    newsDao.saveHierarchy(hierarchy);*/
                    System.out.println(list1);
                    list.add(list1);
                }else{
                    continue;
                }
            }
        } catch (FileNotFoundException e) {
            System.out.println("未找到指定路径的文件!");
            e.printStackTrace();
        }
    }
}