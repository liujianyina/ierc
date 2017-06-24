package com.ljy.ierc.util;

import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.usermodel.WorkbookFactory;

import java.io.File;
import java.io.FileInputStream;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by 刘剑银 on 2017/4/14.
 */
public class Utils {


    /**
     * 获取字符串的MD5值
     *
     * @param str
     * @return
     */
    public static String getMD5String(String str) {
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            md.update(str.getBytes("UTF-8"));
            StringBuffer buf = new StringBuffer();
            for (byte b : md.digest()) {
                buf.append(String.format("%02X", b & 0xff));
            }
            return buf.toString();
        } catch (Exception e) {
            e.printStackTrace();
            return "";
        }
    }

 /*   public static void main(String[] args) {
        System.out.println(getMD5String("zxc188520"));
    }*/

    /**
     * 判断对象是否为空
     *
     * @param obj
     * @return
     */
    public static boolean isNull(Object obj) {
        return null == obj;
    }

    /**
     * 判断字符串是否为空
     *
     * @param str
     * @return
     */
    public static boolean isEmpty(String str) {
        return isNull(str) || str.trim().length() == 0;
    }

    /**
     * 读取excel文件
     * @param path 路径
     * @return item集合
     */
    public static List<ExerItem> readExcel(String path) {

        List<ExerItem> returnArray = new ArrayList<>();

        try {
            //同时支持Excel 2003、2007
            File excelFile = new File(path); //创建文件对象
            FileInputStream is = new FileInputStream(excelFile); //文件流
            Workbook workbook = WorkbookFactory.create(is); //这种方式 Excel 2003/2007/2010 都是可以处理的
            int sheetCount = workbook.getNumberOfSheets();  //Sheet的数量
            //遍历每个Sheet
            for (int s = 0; s < sheetCount; s++) {
                Sheet sheet = workbook.getSheetAt(s);
                int rowCount = sheet.getPhysicalNumberOfRows(); //获取总行数
                //遍历每一行
                for (int r = 0; r < rowCount; r++) {
                    Row row = sheet.getRow(r);
                    ExerItem item = new ExerItem();
                    item.setId(r + 1);
                    item.setBody(row.getCell(0).toString());
                    item.setOptionA(row.getCell(1).toString());
                    item.setOptionB(row.getCell(2).toString());
                    item.setOptionC(row.getCell(3).toString());
                    item.setOptionD(row.getCell(4).toString());
                    item.setAns(row.getCell(5).toString());
                    returnArray.add(item);
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return returnArray;
    }

    /*public static void main(String[] args) {
        System.out.println(read("e://马克思中文测试题库.xlsx"));
    }*/

    /**
     * 删除文件
     * @param path  文件的路径
     * @return
     */
    public static boolean deleteFile(String path) {
        File file = new File(path);
        return file.delete();
    }


}
