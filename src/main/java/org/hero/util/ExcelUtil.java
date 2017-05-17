package org.hero.util;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.hero.dao.NewsDao;
import org.hero.entity.Hierarchy;
import org.hero.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import javax.annotation.Resource;


/**excel 数据导入
 * Created by lsd on 2017-05-09.
 */
public class ExcelUtil{

    @Resource
NewsDao newsDao;
    public ArrayList excel(String name)throws Exception{
        ArrayList list = new ArrayList();
        List listn = newsDao.findAllHierarchy();
        System.out.println(listn);
        try {
            // 对读取Excel表格内容测试
            InputStream is2 = new FileInputStream(name);
            org.apache.poi.ss.usermodel.Workbook wb =null;
            if(name.endsWith(".xls")){
                wb = new  HSSFWorkbook(is2);
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
                    Hierarchy hierarchy = null;
                    Integer num = newsDao.findAllNum();
                    System.out.println(num);
//                    Integer onlyNum = newsDao.findOnlyNum((String) list1.get(3));
//                    if(onlyNum==0){
                        hierarchy.setHID(num+1);
                        hierarchy.setCellName((String) list1.get(0));
                        hierarchy.seteNodeBName((String) list1.get(1));
                        hierarchy.seteNodeBID((Integer) list1.get(2));
                        hierarchy.setCellID((Integer) list1.get(3));
                        hierarchy.setLatitude((Float) list1.get(4));
                        hierarchy.setLongitude((Float) list1.get(5));
                        hierarchy.setAzimuth((Integer) list1.get(6));
                        newsDao.saveHierarchy(hierarchy);
//                    }
                    System.out.println(list1);
                    list.add(list1);
//                    System.out.println(list);
                }else{
                    continue;
                }
            }
        } catch (FileNotFoundException e) {
            System.out.println("未找到指定路径的文件!");
            e.printStackTrace();
        }
        return list;
    }
}
